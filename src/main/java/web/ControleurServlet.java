package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CategoryDaoImp;
import dao.ICategoryDao;
import dao.IOrderDao;
import dao.IPetDao;
import dao.IUserDao;
import dao.OrderDaoImp;
import dao.PetDaoImp;
import dao.UserDaoImp;

import metier.Category;
import metier.Pet;
import metier.User;
import metier.Order;

public class ControleurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IUserDao metierUser;
	private IPetDao metierPet;
	private ICategoryDao metierCat;
	private IOrderDao metierOrder;

	@Override
	public void init() throws ServletException {
		metierUser = new UserDaoImp();
		metierPet = new PetDaoImp();
		metierCat = new CategoryDaoImp();
		metierOrder = new OrderDaoImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = request.getServletPath();

		CategoryModel modelc = new CategoryModel();
		List<Category> categorys = metierCat.getCategorys();
		modelc.setCategorys(categorys);
		request.setAttribute("modelCategorys", modelc);

		PetModel model = new PetModel();
		List<Pet> pets = metierPet.getPets();
		model.setPets(pets);
		request.setAttribute("modelPets", model);
		
		
		 

		HttpSession session = request.getSession();

		if (path.equals("/index.php")) {

			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		if (path.equals("/about.php")) {
			request.getRequestDispatcher("about.jsp").forward(request, response);
		}

		if (path.equals("/register.php")) {
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} else if (path.equals("/reg.php") && (request.getMethod().equals("POST"))) {

			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String company = request.getParameter("company");
			String adrres = request.getParameter("adrres");

			User I = metierUser.regester(new User(username, password, email, phone, company, adrres));

			int id = metierUser.login(username, password);
			String name = metierUser.select(id);
			session.setAttribute("userid", id);
			session.setAttribute("username", name);
			request.getRequestDispatcher("home.jsp").forward(request, response);

		} else if (path.equals("/myaccount.php")) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else if (path.equals("/login.php") && (request.getMethod().equals("POST"))) {

			String username = request.getParameter("username");
			String password = request.getParameter("password");
			int id = metierUser.login(username, password);
			String name = metierUser.select(id);
			if (id == -1) {
				request.getRequestDispatcher("myaccount.php").forward(request, response);
			} else {

				session.setAttribute("userid", id);
				session.setAttribute("username", name);
				request.getRequestDispatcher("home.jsp").forward(request, response);

			}
		} else if (path.equals("/specials.php")) {
			request.getRequestDispatcher("specials.jsp").forward(request, response);
		} else if (path.equals("/pets.php")) {

			request.getRequestDispatcher("pets.jsp").forward(request, response);
		}

		if (path.equals("/contact.php")) {
			request.getRequestDispatcher("contact.jsp").forward(request, response);
		}

		if (path.equals("/logout.php")) {

			session.invalidate();
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}

		if (path.contains("/details.php")) {
			
			int pet_id = Integer.parseInt(request.getParameter("id"));
			
			for (Pet p : pets) {
				if (p.getPet_id() == pet_id) {
					
					request.setAttribute("pet_selected", p);
				}
			}

			request.getRequestDispatcher("detail.jsp").forward(request, response);
		}

		if (path.contains("/category.php")) {
			int c_id = Integer.parseInt(request.getParameter("id"));
			List<Pet> petCat = new ArrayList<Pet>();
			for (Pet p : pets) {
				if (p.getPet_category_id() == c_id) {
					petCat.add(p);
					request.setAttribute("cat_selected", petCat);
				}
			}

			request.getRequestDispatcher("category.jsp").forward(request, response);
		}
		
		if (path.equals("/order.php")) {
		      int userid = Integer.parseInt(request.getParameter("userid"));
		      int pet_id = Integer.parseInt(request.getParameter("pet_id"));

		      metierOrder.insert(userid, pet_id);

		      request.getRequestDispatcher("home.jsp").forward(request, response);
		    }
		
		if (path.equals("/cart.php")) {
		      double c = 0;
		      OrderModel modelo = new OrderModel();
				 List < Order > orders = metierOrder.getOrders();
				 modelo.setOrders(orders);
				 request.setAttribute("modelOrders", modelo);
				 PetModel modelpetys = new PetModel();
		      List < Pet > petOrder = new ArrayList < Pet > ();
		      int userid = Integer.parseInt(request.getParameter("userid"));
		      for (Order o: orders) {
		        if (o.getUser_id() == userid) {
		          for (Pet p: pets) {
		            if (p.getPet_id() == o.getPet_id()) {
		              petOrder.add(p);
		              c += p.getPrice();

		            }
		          }
		        }
		      }
		      String formatted = String.format("%.2f", c);
		      request.setAttribute("total", formatted);
		      modelpetys.setPets(petOrder);
		      request.setAttribute("pet_order", modelpetys);
		      request.getRequestDispatcher("cart.jsp").forward(request, response);
		    }

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
