CREATE TABLE users(
   user_id INT AUTO_INCREMENT NOT NULL,
   username VARCHAR(40) NOT NULL,
   password VARCHAR(255) NOT NULL,
   name VARCHAR(255) NOT NULL,
   last_name VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL,
   age INT NOT NULL,
   PRIMARY KEY (user_id)
);

CREATE TABLE dietary_energy(
   dietary_energy_id INT AUTO_INCREMENT NOT NULL,
   user_id INT NOT NULL,
   kcal INT NOT NULL,
   PRIMARY KEY (dietary_energy_id),
   FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE
);