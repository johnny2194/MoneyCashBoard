DROP TABLE transactions;
DROP TABLE categories;


CREATE TABLE categories (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE transactions (
  id SERIAL4 PRIMARY KEY,
  bank_name VARCHAR(255),
  transaction_date DATE,
  description VARCHAR(255),
  type VARCHAR(255),
  category_id INT4 REFERENCES categories(id) ON DELETE CASCADE,
  amount FLOAT
);

