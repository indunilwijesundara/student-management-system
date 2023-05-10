create DATABASE sms;
use sms;
CREATE TABLE user(
	id VARCHAR(5) PRIMARY KEY,
	user_name VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE
);
CREATE TABLE students(
	id VARCHAR(7)  PRIMARY KEY,
	user_id VARCHAR(5) NOT NULL,
	name VARCHAR(50) NOT NULL,
	age INT NOT NULL,
	grade INT NOT NULL,
	CONSTRAINT FOREIGN KEY(user_id) REFERENCES user(id)
);
CREATE TABLE payment(
	id VARCHAR(8) PRIMARY KEY,
	students_id VARCHAR(7) NOT NULL,
	month VARCHAR(20),
	payment_price INT,
	Paid BOOLEAN,
	CONSTRAINT FOREIGN KEY(students_id) REFERENCES students(id)
);