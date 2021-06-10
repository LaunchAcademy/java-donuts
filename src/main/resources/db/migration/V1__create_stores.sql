DROP TABLE IF EXISTS stores;

CREATE TABLE stores (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255)
);

INSERT INTO stores (name, description) VALUES ('Davis sq Donuts', 'Large assortment of donuts and bagels');
INSERT INTO stores (name, description) VALUES ('Blackbird donuts', 'Rotating monthly selection of donuts');
