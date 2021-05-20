
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