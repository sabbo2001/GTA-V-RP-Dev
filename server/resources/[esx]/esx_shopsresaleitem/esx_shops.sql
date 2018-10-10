USE `essentialmode`;

CREATE TABLE `shopsresaleitem` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`store` varchar(100) NOT NULL,
	`item` varchar(100) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `shopsresaleitem` (store, item, price) VALUES
	('Reshop','bandage',30),
	('Reshop','medikit',15),
	('Reshop','weed',30),
	('Reshop','coke',15),
	('Reshop','meth',30),
	('Reshop','opium',15),
	('Reshop','Poisson',15),
	('Reshop','fixtool',15),
	('Reshop','permis', 1500),
	('Reshop','lingot', 2500),
	('Reshop','argent', 1000),
	('Reshop','copper', 1000),
	('Reshop','iron', 1000),
	('Reshop','gold', 1000),
	('Reshop','sacbillets', 1000),
	('Reshop','or', 1000),
	('Reshop','diamon', 1000),
	('Reshop','croquettes', 1000)

;



