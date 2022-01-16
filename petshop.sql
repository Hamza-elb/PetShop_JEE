


--
-- Base de données : `petshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) 
--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `pet_id`) VALUES
(50, 1, 30),
(49, 1, 29),
(48, 1, 29),
(47, 1, 1),
(51, 2, 2),
(52, 1, 22),
(53, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_pet`
--

DROP TABLE IF EXISTS `tbl_pet`;
CREATE TABLE IF NOT EXISTS `tbl_pet` (
  `pet_id` int(11) NOT NULL,
  `pet_description` varchar(500) NOT NULL,
  `pet_category_id` int(11) NOT NULL,
  `pet_images` varchar(50) NOT NULL,
  `pet_status` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `pet_name` varchar(30) NOT NULL,
  PRIMARY KEY (`pet_id`),
  KEY `tbl_pet_ibfk_2` (`pet_category_id`)
)

--
-- Déchargement des données de la table `tbl_pet`
--

INSERT INTO `tbl_pet` (`pet_id`, `pet_description`, `pet_category_id`, `pet_images`, `pet_status`, `price`, `pet_name`) VALUES
(1, 'Ecuelle pour chiens et chats, inox antiroutille, avec caoutchouc antiderapant - 30cm\r\nCette ecuelle en inox allie esthetisme et commodite. Antiderapante, elle permettra a votre chien de manger en toute stabilite et tranquillite.', 1, 'acc1.png', 'promo', 59.99, 'Gamelle Inox '),
(2, 'Retro est une gamme de cages inspiree de l’histoire de Zolux, adaptee aux besoins de notre époque. Fabriquees en metal et fixees sur un plateau en bois, ces cages pour oiseaux adoptent un style vintage unique qui participera a la décoration de la maison.\r\n', 1, 'acc2.png', 'void', 66.99, 'ZOLUX CAGE RETRO'),
(3, 'Retro est une gamme de cages inspiree de l’histoire de Zolux, adaptee aux besoins de notre époque. Fabriquees en métal et fixees sur un plateau en bois, ces cages pour oiseaux adoptent un style vintage unique qui participera à la decoration de la maison.', 1, 'acc3.png', 'spec', 100.99, 'Cage Zolux'),
(4, 'Ecuelle pour chiens et chats, inox antiroutille, avec caoutchouc antiderapant - 30cm\r\nCette ecuelle en inox allie esthetisme et commodite. Antiderapante, elle permettra a votre chien de manger en toute stabilite et tranquillite.', 1, 'acc4.png', 'new', 70.99, 'Gamelle Inox double'),
(5, 'Retro est une gamme de cages inspiree de l’histoire de Zolux, adaptee aux besoins de notre epoque. Fabriquees en métal et fixees sur un plateau en bois .', 1, 'acc5.gif', 'void', 80.99, 'Cage metal'),
(6, 'Retro est une gamme de cages inspiree de l’histoire de Zolux, adaptee aux besoins de notre époque. Fabriquees en métal et fixees sur un plateau en bois .', 1, 'acc6.gif', 'spec', 200.99, 'Cage bois'),
(7, 'Ecuelle pour chiens et chats, inox antiroutille, avec caoutchouc antiderapant - 30cm\r\nCette ecuelle en inox allie esthetisme et commodite. Antiderapante, elle permettra a votre chien de manger en toute stabilite et tranquillite.', 1, 'acc7.png', 'new', 150, 'Cage chat plastique'),
(8, 'Ecuelle pour chiens et chats, inox antiroutille, avec caoutchouc antiderapant - 30cm\r\nCette ecuelle en inox allie esthetisme et commodite. Antiderapante, elle permettra a votre chien de manger en toute stabilite et tranquillite.', 1, 'acc8.png', 'spec', 160.99, 'Cage bois chat '),
(9, 'Retro est une gamme de cages inspiree de l’histoire de Zolux, adaptee aux besoins de notre époque. Fabriquees en métal et fixees sur un plateau en bois .', 1, 'acc9.png', 'promo', 59.99, 'Cage chien métal'),
(10, 'Aliment complet pour chiots de grande taille de morphotype athletique. Convient egalement aux chiennes en Gestation ou en lactation. Grace son ingredient special, le Colostrum, OPTISTART aide a renforcer les defenses naturelles du chiot pour mieux relever les defis du quotidien', 4, 'alim1.png', 'void', 300.9, 'Royal Canin Giant Puppy 15Kg'),
(11, 'Sol decoratif colore pour aquariums, grace a sa couleur atypique et tendance, ce sable apportera une touche d\'originalite et un eclat durable. Composition : Quartzite concassee, enrobage polyurethane colore. Granulometrie : 2-3mm.', 4, 'alim2.png', 'new', 200.99, 'Royal Canin Giant Adult 15Kg'),
(12, 'Aliment complet pour chiots de grande taille de morphotype athletique. Convient egalement aux chiennes en Gestation ou en lactation. Grace son ingredient special, le Colostrum, OPTISTART aide a renforcer les defenses naturelles du chiot pour mieux relever les defis du quotidien', 4, 'alim3.png', 'spec', 100.9, ' PRO PLAN Large Athletic'),
(13, 'Aliment complet pour chiots de grande taille de morphotype athletique. Convient egalement aux chiennes en Gestation ou en lactation. Grace son ingredient special, le Colostrum, OPTISTART aide a renforcer les defenses naturelles du chiot pour mieux relever les defis du quotidien', 4, 'alim4.png', 'void', 90.9, 'Royal Canin Giant Puppy 15Kg'),
(14, 'Sol decoratif colore pour aquariums, grace a sa couleur atypique et tendance, ce sable apportera une touche d\'originalite et un eclat durable. Composition : Quartzite concassee, enrobage polyurethane colore. Granulometrie : 2-3mm.', 4, 'alim5.png', 'promo', 80.9, ' PRO PLAN Large Athletic'),
(15, 'Aliment complet pour chiots de grande taille de morphotype athletique. Convient egalement aux chiennes en Gestation ou en lactation. Grace son ingredient special, le Colostrum, OPTISTART aide a renforcer les defenses naturelles du chiot pour mieux relever les defis du quotidien', 4, 'alim6.png', 'spec', 70.9, 'Royal Canin Giant Puppy 15Kg'),
(16, 'Sol decoratif colore pour aquariums, grace a sa couleur atypique et tendance, ce sable apportera une touche d\'originalite et un eclat durable. Composition : Quartzite concassee, enrobage polyurethane colore. Granulometrie : 2-3mm.', 4, 'alim7.png', 'new', 60.9, 'Royal Canin Giant Adult 15Kg'),
(17, 'Aliment complet pour chiots de grande taille de morphotype athletique. Convient egalement aux chiennes en Gestation ou en lactation. Grace son ingredient special, le Colostrum, OPTISTART aide a renforcer les defenses naturelles du chiot pour mieux relever les defis du quotidien', 4, 'alim8.gif', 'promo', 50.9, ' PRO PLAN Large Athletic'),
(18, 'Despite their somewhat wild appearance, American Bobtails are devoted companion cats who fit perfectly into families. Social and easygoing, they get along well with children and other four-legged pets.', 3, 'cat1.png', 'void', 59.99, 'cat 1'),
(19, 'This breed may appear to be the picture of refinement, but in this elegant body beats the heart of a kitten who loves to have fun.\r\n\r\nBalinese and Javanese adore people, and want to be with their people. This makes them wonderful companions for those who have the time and desire to appreciate this most intelligent, entertaining companion.', 3, 'cat2.png', 'promo', 70.99, 'cat 2'),
(20, 'Despite their somewhat wild appearance, American Bobtails are devoted companion cats who fit perfectly into families. Social and easygoing, they get along well with children and other four-legged pets.', 3, 'cat3.png', 'void', 80.99, 'cat 3'),
(21, 'This breed may appear to be the picture of refinement, but in this elegant body beats the heart of a kitten who loves to have fun.\r\n\r\nBalinese and Javanese adore people, and want to be with their people. This makes them wonderful companions for those who have the time and desire to appreciate this most intelligent, entertaining companion.', 3, 'cat4.png', 'new', 90.9, 'cat 4'),
(22, 'Despite their somewhat wild appearance, American Bobtails are devoted companion cats who fit perfectly into families. Social and easygoing, they get along well with children and other four-legged pets.', 3, 'cat5.png', 'promo', 80.9, 'cat 5'),
(23, 'The Birman’s sweet and gentle nature makes her an ideal companion and pet. Birmans are playful and love to be with people, and are also patient and social with children and other pets.\r\nchirping voices. They enjoy attention, and want to be where their people are, helping with whatever activity is happening. ', 3, 'cat6.png', 'new', 150, 'cat 6'),
(24, 'Despite their somewhat wild appearance, American Bobtails are devoted companion cats who fit perfectly into families. Social and easygoing, they get along well with children and other four-legged pets.', 3, 'cat7.png', 'new', 160.99, 'cat 7'),
(25, '“King of Terriers,” the Airedale is indeed the largest of all terriers. The dog breed originated in the Aire Valley of Yorkshire and was created to catch otters and rats in the region between the Aire and Wharfe Rivers. An able sporting dog', 2, 'dog1.png', 'void', 59.99, 'Akita Pit'),
(26, 'The Akita Pit is a mixed breed dog–a cross between the Akita and American Pit Bull Terrier dog breeds. Intelligent, protective, and loyal, these pups inherited some of the best traits from both of their parents.', 2, 'dog2.png', 'new', 200.99, 'Alaskan Klee Kai'),
(27, '“King of Terriers,” the Airedale is indeed the largest of all terriers. The dog breed originated in the Aire Valley of Yorkshire and was created to catch otters and rats in the region between the Aire and Wharfe Rivers. An able sporting dog', 2, 'dog3.png', 'spec', 80.99, 'Akita Pit'),
(28, 'The Akita Pit is a mixed breed dog–a cross between the Akita and American Pit Bull Terrier dog breeds. Intelligent, protective, and loyal, these pups inherited some of the best traits from both of their parents.', 2, 'dog4.png', 'new', 200.99, 'Alaskan Klee Kai'),
(29, 'The Akita Pit is a mixed breed dog–a cross between the Akita and American Pit Bull Terrier dog breeds. Intelligent, protective, and loyal, these pups inherited some of the best traits from both of their parents.', 2, 'dog5.png', 'promo', 80.9, 'Alaskan Klee Kai'),
(30, '“King of Terriers,” the Airedale is indeed the largest of all terriers. The dog breed originated in the Aire Valley of Yorkshire and was created to catch otters and rats in the region between the Aire and Wharfe Rivers. An able sporting dog', 2, 'dog6.png', 'spec', 150, 'Alaskan Klee Kai'),
(31, 'The Akita Pit is a mixed breed dog–a cross between the Akita and American Pit Bull Terrier dog breeds. Intelligent, protective, and loyal, these pups inherited some of the best traits from both of their parents.', 2, 'dog7.png', 'void', 60.9, 'Akita Pit');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_pet_category`
--

DROP TABLE IF EXISTS `tbl_pet_category`;
CREATE TABLE IF NOT EXISTS `tbl_pet_category` (
  `pet_category_id` int(11) NOT NULL,
  `pet_category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`pet_category_id`)
) 

--
-- Déchargement des données de la table `tbl_pet_category`
--

INSERT INTO `tbl_pet_category` (`pet_category_id`, `pet_category_name`) VALUES
(1, 'accesories'),
(2, 'dogs'),
(3, 'cats'),
(4, 'pet feeding');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `Company` varchar(30) NOT NULL,
  `Adrres` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) 

--
-- Déchargement des données de la table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `password`, `email`, `phone`, `Company`, `Adrres`) VALUES
(1, 'h.elbanaji', 'CD 687396', 'hicham1elbanaji@gmail.com', '0609178344', 'l7alwa', '163 hay qods'),
(2, '1918882', 'CD 687396', 'hicham1elbanaji@gmail.com', '0609178344', 'l7alwa', '163 hay qods'),
(3, 'hicham elbanaji', 'CD 687396', 'hicham1elbanaji@gmail.com', '0609178344', 'l7alwa', '163 hay qods'),
(4, '', '', '', '', '', '');



--
-- Contraintes pour la table `tbl_pet`
--
ALTER TABLE `tbl_pet`
  ADD CONSTRAINT `tbl_pet_ibfk_2` FOREIGN KEY (`pet_category_id`) REFERENCES `tbl_pet_category` (`pet_category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

