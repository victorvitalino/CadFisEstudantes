create database cadfisestudantes;
use cadfisestudantes;

create table estudante
(estcodigo int not null auto_increment primary key,
estnome varchar(50) not null,
estsobrenome varchar(80) not null,
estmassa varchar(50) not null,
estaltura varchar(50) not null
);



