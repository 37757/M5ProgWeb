CREATE TABLE Pokemon (
Pokemons_id INT auto_increment,
Naam varchar(50),
Element varchar(50),
PRIMARY KEY (Pokemons_id)
);

Select *
from Pokemon;
order by Naam ASC;

Select *
from Pokemon;
order by Element DESC;
