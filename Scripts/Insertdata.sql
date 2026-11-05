insert into recipe(name) 
values
('kanelbulle'),
('surdesbröd'),
('prinsesstårta'),
('chocladbollar'),
('winenerbröd');

insert into ingredients(name,recipeid,quantityforrecipe)
values
('vetemjöl',1,5),
('strösocker',1,2.5),
('smör',2,3),
('jäst',3,0.3),
('kanel',2,4);

INSERT into product(name,recipeid)
values
('matbröd',2),
('vetebröd',3),
('bakeser',1),
('tårta',3),
('småkakor',5);

insert into suppliers(name,address,phone,email)
values
('kvaren Ab','Malmö','0987643256','kvaren@mail.com'),
('svenskt smör','Göteberg','9874564318','svensk@mail.com'),
('kryddhuset Ab','Stockholm','2348095678','kryddhuset@mail.com'),
('bagerigrossisten','Linköping','1234564157','bageri@mail.com'),
('sockerbolaget','malmö','1234136556','sockerbolaget@mail.com');

INSERT INTO person(fname,lname,email,phone,supplierid)
values
('Sami','anndersson','sami@mail.com','9876515875',1),
('Hedda','ani','hedda@mail.com','9876543212',2),
('Alan','abdi','alan@mail.com','0981237654',1),
('Rand','ronadld','randmail.com','8172652091',3),
('Sozi','Sysy','sozy@mail.com','6542378917',2);

INSERT into supplieringredients(ingredientsid,supplierid,prisperkg,quantitykg)
values
(1,1,12,4),
(1,2,10,6),
(2,1,8,3),
(2,3,10,1),
(3,4,15,8),
(4,4,13,7),
(4,1,10,2);



