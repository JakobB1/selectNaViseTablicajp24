
# zadatak: 
# Unijeti smjer Serviser samo s minimalnim atributima

insert into smjer(naziv,trajanje)
values ('Serviser',100);

select * from smjer;

# smjeru naziva Serviser postavite cijenu 2500 kn

update smjer set cijena=2500 where sifra=3;


select b.naziv as smjer, a.naziv as grupa
from grupa a inner join smjer b
on a.smjer=b.sifra;

# Unijeti grupu JP25
insert into grupa(naziv,smjer)
values('JP25',1);

select b.naziv as smjer, a.naziv as grupa
from grupa a inner join smjer b
on a.smjer=b.sifra;

select b.naziv as smjer, a.naziv as grupa
from grupa a right join smjer b
on a.smjer=b.sifra;

select a.naziv as smjer, b.naziv as grupa
from smjer a left join grupa b
on a.sifra=b.smjer;

select b.naziv as smjer, a.naziv as grupa,
concat(d.ime, ' ', d.prezime) as predavac,
concat(g.ime, ' ', g.prezime) as polaznik
from grupa a 
inner join smjer 	b on a.smjer=	b.sifra
inner join predavac c on a.predavac=c.sifra
inner join osoba 	d on c.osoba=	d.sifra
inner join clan 	e on a.sifra = 	e.grupa
inner join polaznik f on e.polaznik=f.sifra 
inner join osoba 	g on f.osoba=	g.sifra
where g.ime like 'J%';


# osnovni
select b.naziv as smjer, a.naziv as grupa
from grupa a inner join smjer b
on a.smjer=b.sifra;

# alternativa 1
select smjer.naziv as smjer, grupa.naziv as grupa
from grupa inner join smjer
on grupa.smjer=smjer.sifra;

# alternativa 3
select s.naziv as smjer, g.naziv as grupa
from grupa g inner join smjer s
on g.smjer=s.sifra;

# alternativa 3
select b.naziv as smjer, a.naziv as grupa
from grupa a,smjer b
where a.smjer=b.sifra;


# zadatak 1
# odaberite sva imena i prezimena polaznika
# na smjeru Java programiranje

select e.ime,e.prezime
from smjer a inner join grupa b
on a.sifra=b.smjer
inner join clan c 
on b.sifra=c.grupa 
inner join polaznik d
on d.sifra=c.polaznik
inner join osoba e 
on e.sifra = d.osoba
where a.naziv='Java programiranje';