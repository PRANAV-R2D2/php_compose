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
