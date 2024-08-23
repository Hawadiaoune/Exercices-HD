a
select * from ARTICLE;

b
select DESIGNATION from ARTICLE
where PRIX > 2;

c
select * from ARTICLE
where PRIX>2 and prix<6.25

d
select * from ARTICLE
where PRIX between 2 and 6.25

e
select * from ARTICLE
where prix not between 2 and 6.25 and ID_FOU = 1
order by prix desc;

f
select * from ARTICLE 
where ID_FOU = 1 or ID_FOU = 3;

g 
select * from ARTICLE
where ID_FOU in (1, 3);

h
select * from ARTICLE
where ID_FOU NOT in (1,3);

i
select * from BON
where DATE_CMDE between "2024/02/01" and "2024/12/30";