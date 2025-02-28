CREATE DATABASE dannn_pizza;
USE dannn_pizza;

CREATE TABLE users (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  role ENUM('admin', 'customer'),
  password VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'ardanunais7@gmail.com', '$2y$10$nmVj3/M3ThvpM3OQdYU2B.MQ9fJWL7vpf90dawhDXobbY47xuK8Su', 'admin');

CREATE TABLE menus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    menu_name VARCHAR(255),
    menu_image VARCHAR(255),
    description TEXT,
    price DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  menu_id INT(11),
  orderer_id INT(11),
  orderer_name VARCHAR(255),
  quantity VARCHAR(255),
  table_number VARCHAR(255),
  status ENUM('waiting confirmation', 'confirmed', 'process', 'delivered'),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE transactions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT(11),
  status ENUM('not yet paid', 'paid') DEFAULT 'not yet paid',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO menus (menu_name, menu_image, description, price, created_at, updated_at) 
VALUES ('Pizza', 'menu.jpg', NULL , 50000, NOW(), NOW());
       ('Hot Pizza', 'menu.jpg', NULL , 10000, NOW(), NOW());
       ('Cheese Pizza', 'menu.jpg', NULL , 70000, NOW(), NOW());

