CREATE DATABASE  IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee1`;

CREATE TABLE `employee1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `employee`
--

INSERT INTO `employee1` VALUES 
	(1,'Leslie','Andrews','Tester',20),
	(2,'Emma','Baumgarten','Manager',30),
	(3,'Avani','Gupta','Developer',35),
	(4,'Yuri','Petrov','Tester',45),
	(5,'Juan','Vega','Developer',47);
ALTER TABLE employee1 MODIFY COLUMN position VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE employee1 MODIFY COLUMN first_name VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE employee1 MODIFY COLUMN position VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
SELECT COUNT(*) AS totalEmployees FROM employee1;
INSERT INTO `employee1` VALUES (6,'Leslie','Vega','Tester',20);
SELECT * from employee1;
DELETE FROM employee1 WHERE id = 1;
UPDATE employee1 SET last_name = 'Zuzanak' where id = 3;
SELECT COUNT(*) AS totalEmployees FROM employee1 WHERE age < 20;
SELECT COUNT(*) AS totalEmployees1 FROM employee1 WHERE age BETWEEN 20 AND 40;
SELECT COUNT(*) AS totalEmployees2 FROM employee1 WHERE age BETWEEN 40 AND 60;
SELECT COUNT(*) AS totalEmployees3 FROM employee1 WHERE age > 60;
SELECT position, COUNT(*) as employeeCount, ROUND(AVG(age)) as averageAge FROM employee1 GROUP BY position ORDER BY employeeCount DESC;
SELECT * FROM employee1 order by first_name asc;
SELECT * FROM employee1 WHERE position = 'Developer';
SELECT * FROM employee1 WHERE position = 'Developer';

SELECT * FROM employee1 WHERE position LIKE 'De%';
SELECT * FROM employee1 WHERE last_name LIKE 'An%';
SELECT * FROM employee1 WHERE first_name LIKE 'Av%';
SELECT * FROM employee1 WHERE last_name LIKE 'Zu%';


