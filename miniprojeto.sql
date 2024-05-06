CREATE TABLE `Campanha` (
  `ID` int PRIMARY KEY,
  `Name` varchar(255),
  `Description` text,
  `Budget` decimal,
  `Start_Date` date,
  `End_Date` date
);

CREATE TABLE `Cliente` (
  `ID` int PRIMARY KEY,
  `Name` varchar(255),
  `Email` varchar(255),
  `Address` varchar(255),
  `Phone_Number` varchar(255)
);

CREATE TABLE `Produto` (
  `ID` int PRIMARY KEY,
  `Name` varchar(255),
  `Description` text,
  `Price` decimal
);

CREATE TABLE `Canal_Marketing` (
  `ID` int PRIMARY KEY,
  `Name` varchar(255),
  `Description` text
);

CREATE TABLE `Interesse_Cliente` (
  `ID` int PRIMARY KEY,
  `Customer_ID` int,
  `Product_ID` int,
  `Registration_Date` date
);

CREATE TABLE `Campanha_Cliente` (
  `ID` int PRIMARY KEY,
  `Campaign_ID` int,
  `Customer_ID` int
);

CREATE TABLE `Campanha_Canal` (
  `ID` int PRIMARY KEY,
  `Campaign_ID` int,
  `Channel_ID` int,
  `Target_Budget` decimal,
  `Used_Budget` decimal
);

CREATE TABLE `Campanha_Produto` (
  `ID` int PRIMARY KEY,
  `Campaign_ID` int,
  `Product_ID` int,
  `Target_Quantity` int,
  `Sold_Quantity` int
);

ALTER TABLE `Interesse_Cliente` ADD FOREIGN KEY (`Customer_ID`) REFERENCES `Cliente` (`ID`);

ALTER TABLE `Interesse_Cliente` ADD FOREIGN KEY (`Product_ID`) REFERENCES `Produto` (`ID`);

ALTER TABLE `Campanha_Cliente` ADD FOREIGN KEY (`Campaign_ID`) REFERENCES `Campanha` (`ID`);

ALTER TABLE `Campanha_Cliente` ADD FOREIGN KEY (`Customer_ID`) REFERENCES `Cliente` (`ID`);

ALTER TABLE `Campanha_Canal` ADD FOREIGN KEY (`Campaign_ID`) REFERENCES `Campanha` (`ID`);

ALTER TABLE `Campanha_Canal` ADD FOREIGN KEY (`Channel_ID`) REFERENCES `Canal_Marketing` (`ID`);

ALTER TABLE `Campanha_Produto` ADD FOREIGN KEY (`Campaign_ID`) REFERENCES `Campanha` (`ID`);

ALTER TABLE `Campanha_Produto` ADD FOREIGN KEY (`Product_ID`) REFERENCES `Produto` (`ID`);
