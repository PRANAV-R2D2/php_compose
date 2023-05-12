SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `Person` (
    `id` int(11) NOT NULL,
    `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Person` (`id`, `name`) VALUES
    (1, 'Ranjit'),
    (2, 'Rakesh'),
    (3, 'Dinesh'),
    (4, 'Karthik');

CREATE TABLE electronics (
    id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    brand VARCHAR(30) NOT NULL,
    category VARCHAR(30) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description VARCHAR(200) DEFAULT NULL,
    date_added DATE NOT NULL
);

CREATE TABLE users (
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL
);


 

INSERT INTO users (username, password) VALUES
    ('chirag', 'chirag'),
    ('username2', 'password2'),
    ('username3', 'password3');



 

CREATE TABLE grocery (
   id INT PRIMARY KEY,
   item_name VARCHAR(50) NOT NULL,
   category VARCHAR(30) NOT NULL,
   price DECIMAL(10, 2) NOT NULL,
   description VARCHAR(200) DEFAULT NULL,
   date_added DATE NOT NULL
);

 

CREATE TABLE home_appliances (
   id INT PRIMARY KEY,
   appliance_name VARCHAR(50) NOT NULL,
   category VARCHAR(30) NOT NULL,
   brand VARCHAR(50) NOT NULL,
   model VARCHAR(50) NOT NULL,
   price DECIMAL(10, 2) NOT NULL,
   description VARCHAR(200) DEFAULT NULL,
   date_added DATE NOT NULL
);

 

CREATE TABLE mens_wear (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  category VARCHAR(255),
  brand VARCHAR(255),
  color VARCHAR(255),
  size VARCHAR(20),
  price DECIMAL(10,2),
  description TEXT,
  date_added DATE
);

 

CREATE TABLE products (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  category VARCHAR(255),
  brand VARCHAR(255),
  color VARCHAR(255),
  size VARCHAR(20),
  price DECIMAL(10,2),
  description TEXT,
  date_added DATE
);

 

CREATE TABLE toys_and_beauty_products (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  category VARCHAR(255) NOT NULL,
  brand VARCHAR(255),
  color VARCHAR(255),
  size VARCHAR(255),
  price DECIMAL(10, 2),
  description TEXT,
  date_added DATE
);

CREATE TABLE womenswear (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  category VARCHAR(255),
  brand VARCHAR(255),
  color VARCHAR(255),
  size VARCHAR(50),
  price DECIMAL(10, 2),
  description TEXT,
  date_added DATE
);

