DROP TABLE transactions;

CREATE TABLE transactions (
  id SERIAL4 PRIMARY KEY,
  bank_name VARCHAR(255),
  date DATE,
  title VARCHAR(255),
  type VARCHAR(255),
  category VARCHAR(255),
  amount INT2
);





