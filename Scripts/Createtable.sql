CREATE Table IF NOT EXISTS recipe(
    id integer PRIMARY KEY not null,
    name varchar(50) not null UNIQUE
    );

CREATE Table IF NOT EXISTS ingredients(
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(100) NOT null UNIQUE,
  quantityforrecipe FLOAT NOT null,
  recipeid INTEGER NOT null,
  CONSTRAINT fk_rein FOREIGN KEY (recipeid) REFERENCES recipe(id)

);
CREATE Table if NOT EXISTS product(
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL UNIQUE,
    recipeid INTEGER NOT null,
    CONSTRAINT fk_rep FOREIGN KEY (recipeid) REFERENCES recipe(id)
);



CREATE Table IF NOT EXISTS suppliers(
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL,
   email VARCHAR(128) NOT NULL UNIQUE
);

CREATE Table IF NOT EXISTS supplieringredients(
  id INTEGER PRIMARY KEY not null,
    ingredientsid INTEGER NOT NULL,
    supplierid INTEGER NOT NULL,
    prisperkg FLOAT NOT NULL,
    quantitykg FLOAT not null,
    CONSTRAINT fk_sinin FOREIGN KEY (ingredientsid) REFERENCES ingredients(id),
       CONSTRAINT fk_sins FOREIGN KEY (supplierid) REFERENCES suppliers(id) 
);

CREATE Table IF NOT EXISTS person(
    id INTEGER PRIMARY KEY NOT null,
    fname VARCHAR(30) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL,
    supplierid INTEGER NOT NULL REFERENCES suppliers(id)
);