-- vem är levarantörer som bagariet köper från
SELECT * from suppliers;
---------------------------------------------------
-- vilka råvaror som de köper ifrån respektive leverantör

SELECT i.id 'artikel nummer',s.name 'Levarantör name',i.name 'Råvara name',prisperkg 'price per kg',quantitykg 'quantity kg'
 from ingredients i inner join supplieringredients si
on i.id=si.ingredientsid inner join suppliers s
on s.id=si.supplierid order by s.name

----------------------------------------------------
--vad de köpt in 
SELECT row_number() over (order by i.id) Number,name,sum(quantitykg) köpte,sum(prisperkg*quantitykg) pice
from ingredients i inner join supplieringredients si 
 on i.id=si.ingredientsid
 GROUP BY name

----------------------------------------------------

--  hur mycket det finns kvar...
SELECT row_number() over (order by i.id) Number, name,sum(quantitykg)-quantityforrecipe kvar
from ingredients i inner join supplieringredients si 
 on i.id=si.ingredientsid
 GROUP BY name

----------------------------------------------------
--hur många recept har bagariet
SELECT * from recipe;
---------------------------------------------------------

--hur många product har bagariet
SELECT * from product;

 ---------------------------------------------------------
 --recept med råvaror tillhör
 select r.id, r.name 'recept name',i.name 'råvara name' from recipe r inner join ingredients i
 on r.id=i.recipeid
 ----------------------------------------------------------
  --product med recept,råvaror tillhör
 select row_number() over (order by r.id) Number, p.name 'product name', r.name 'recept name',i.name 'råvara name' 
 from recipe r inner join product p 
 on r.id=p.recipeid inner join  ingredients i
 on r.id=i.recipeid 
 ----------------------------------------------------------
 -- lista råvaror som är mindre än 3 kg
SELECT row_number() over (order by i.id) Number, name,sum(quantitykg)-quantityforrecipe kvar
from ingredients i inner join supplieringredients si 
 on i.id=si.ingredientsid 
 GROUP BY name having kvar <= 3

 -------------------------------------------------------------
 -- lista alla levarntör som namn börjar med bokstav 's' med person som arbertar in
 SELECT s.name 'levarantör name',address,p.fname ||' '|| p.lname 'person name'
 from suppliers s inner join person p
 on s.id=p.supplierid
 where s.name like 's%'

 --------------------------------------------------------------
 --lista hur många personer arbetar i varje levarantör
  SELECT s.name 'levarantör name',address,count(*) 'count av personer'
 from suppliers s inner join person p
 on s.id=p.supplierid
 group by(s.name)
 order by s.name
