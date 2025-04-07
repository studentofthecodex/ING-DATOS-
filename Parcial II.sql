create database BDDataVerse;
use BDDataVerse;


create table sensores(
id_sensor int primary key, 
tipo varchar(50) not null, 
ubicacion varchar(50) not null, 
fecha_instalacion varchar(50) not null

);

create table Registros_Sensores(
id_registro_sensores int primary key,
id_sensorFK int not null, 
valor varchar (50) not null, 
Timestamp_ time not null,
foreign key ( id_sensorFK) references sensores ( id_sensor ) on delete cascade
);

create table Transporte(
id_transporte int primary key,
tipo varchar(50) not null, 
capacidad int not null 

);

create table Usuarios(
id_usuario int primary key, 
nombre varchar(50) not null, 
email varchar(50) not null, 
telefono int not null, 
id_transporteFK int not null, 
id_sensorFK int not null, 
id_registro_sensoresFK int not null, 
id_registro_consumoFK int not null, 
id_eventoFK int not null, 

foreign key (id_transporteFK) references Transporte (id_transporte) on delete cascade, 
foreign key (id_sensorFK) references sensores (id_sensor) on delete cascade, 
foreign key (id_registro_sensoresFK) references Registros_Sensores (id_registro_sensores) on delete cascade, 
foreign key (id_registro_consumoFK) references Consumo_Energetico (id_registro_consumo) on delete cascade, 
foreign key (id_eventoFK) references seguridad ( id_evento) on delete cascade

);

create table Consumo_Energetico(
id_registro_consumo  int primary key, 
zona varchar(150) not null, 
consumo_kw tinyint not null, 
fecha date not null

);

create table seguridad(
id_evento int primary key, 
tipo_evento varchar(50) not null, 
descripcion varchar(150) not null, 
fecha_hora datetime not null, 
ubicacion varchar(150) not null

); 

/*Se crea tabla para relacionar sensores con seguridad */
create table sensores_seguridad(
id_sensorFK int not null, 
id_eventoFK int not null, 
foreign key ( id_sensorFK) references sensores( id_sensor) on delete cascade, 
foreign key (id_eventoFK) references seguridad (id_evento) on delete cascade 

);

insert into sensores (id_sensor, tipo, ubicacion, fecha_instalacion) values 
('01', 'IoT', 'Sur', '24/08/24'), 
('02', 'transporte','Este' '8/09/23'),
('03', 'consumo energetico', 'Norte' , '15/04/23'),
('04', 'seguridad', 'Oeste' , '15/04/23'),
('05', 'transporte', 'Centro' , '15/06/23'),
('06', 'temperatura_c', 'Oeste', 6/01/25); 

insert into Registros_Sensores( id_registro_sensores, id_sensorFK, valor, Timestamp_) values 

('001A', '01', 'Funcional', '15:56'),
('002A', '02', 'Funcional', '18:20'),
('003A', '03', 'Funcional', '04:20'),
('004A', '04', 'Funcional', '8:06'),
('005A', '05', 'No funcional', '17:15');
('006A', '06', '45', '13:23');

insert into Transporte (id_transporte, tipo, capacidad ) values 
('XX1', 'Bus articulado', '256'),
('XX2', 'Metro', '820'),
('XX3', 'Metro', '410'),
('XX4', 'Bus articulado', '256'),
('XX5', 'Bus articulado', '256');

insert into Usuarios ( id_usuario, nombre, email, telefono, id_transporteFK, id_sensoresFK, id_registro_consumoFK, id_eventoFK) values 




insert into consumo_energetico ( id_registro_consumo, zona, consumo_kw, fecha) values
('AB001', 'Oeste', '5500 kW', '30/03/25'),
('AB002', 'Sur', '7600kW', '04/07/25'),
('AB003', 'Norte', '12430 kW', '30/03/25'),
('AB004', 'Este', '5500 kW', '30/03/25'),
('AB005', 'Sur', '6400 kW', '07/10/25');


/*Procedimientos almacenados */


/*Proceso para insertar un nuevo valor en la tabla Resgistro_Sensores*/

delimiter//

create procedure Insertar_Registro_Sensor ( in id_sensor int, in valor varchar (50), in Timestamp_ time)
begin 
     insert into Registros_Sensores ( id_sensor, valor, Timestamp_)
     values ( id_sensor, valor, Timestamp_)
     
end //



























