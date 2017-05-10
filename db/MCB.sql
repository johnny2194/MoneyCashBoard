DROP TABLE transactions;
DROP TABLE categories;
DROP TABLE banks;

CREATE TABLE banks (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  logo_url VARCHAR(512)
);

CREATE TABLE categories (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE transactions (
  id SERIAL4 PRIMARY KEY,
  bank_id INT4 REFERENCES banks(id) ON DELETE CASCADE,
  transaction_date DATE,
  description VARCHAR(255),
  type VARCHAR(255),
  category_id INT4 REFERENCES categories(id) ON DELETE CASCADE,
  amount FLOAT
);

