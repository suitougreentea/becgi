CREATE TABLE IF NOT EXISTS entry (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  author varchar(255),
  bga_author varchar(255),
  description varchar(1024),
  url varchar(255)
);

CREATE TABLE IF NOT EXISTS impression (
  id SERIAL PRIMARY KEY,
  author varchar(255),
  rating INTEGER CHECK (rating >= 0 AND rating <= 100),
  comment varchar(1024),
  parent_entry INTEGER,
  ip varchar(255),
  FOREIGN KEY(parent_entry) REFERENCES entry(id)
);
