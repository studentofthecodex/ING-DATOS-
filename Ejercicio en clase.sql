/*Tipos de Join*/

/*Ejemplo de consulta en dos tablas*/

create database Tiendita;
use Tiendita;
create table CARGO (
idcargo VARCHAR(100) PRIMARY KEY,
idempleadoFK VARCHAR(100) not null, 
nombrecargo VARCHAR(100) NOT NULL,
rangocargo VARCHAR(100) NOT NULL,
descripcioncargo VARCHAR(100) NOT NULL
);
create table EMPLEADO (
idempleado VARCHAR(100) PRIMARY KEY,
idcargoFK VARCHAR(100) NOT NULL, 
idDeptFK  VARCHAR(100) NOT NULL, 
nombreempleado VARCHAR(100) NOT NULL,
antiguedad VARCHAR(100) NOT NULL, 
edad VARCHAR(100) NOT NULL, 
salario VARCHAR(100) NOT NULL
);

CREATE table departamento( 
idDept VARCHAR(100) AUTO_INCREMENT PRIMARY KEY , 
NEmpleados VARCHAR(100) NOT NULL, 
);

insert into CARGO values 
('111','0001',  'backend', '1', 'inge backend senior' ),
('111', '0002', 'backend', '3', 'inge backend junior' ),
('222','0003',  'frontend', '1', 'inge frontend senior'),
('111','0004',  'backend', '3', 'inge backend junior' ),
('222', '0005', 'frontend', '2', 'inge frontend asociado' );

insert into EMPLEADO values
('0001', '111', 'AZID', 'inge backend senior', '5', '32', '450k'),
('0002', '111', 'RAHEED', 'inge backend junior', '1', '23', '75k'),
('0003', '222', 'SOFIA', 'inge frotend senior', '7', '28', '368k'),
('0004', '111', 'TOMAS', 'inge backend junior', '1', '21', '80k'),
('0005', '222', 'NATALIA', 'inge frontend asociado', '3', '25', '104k');

insert into departamento values
('1-B', '2'),
('2-B', '3'); 



select 'AZID', idDept from EMPLEADO 
inner join departamento
on EMPLEADO.idDeptFK=departamento.idDept;

/*Mostrar todos los empleados que tengan antiguedad de mas 2 años,
 su departamento, el cargo y su salario  */
 
 select antiguedad, salario from EMPLEADO 
 





/* hacer consulta de todos los cargos que tangan rango especifico
Mostrar en pantalla los empleados que tengan un cargo especifico
La tabla tendra  entradas 
Mostrar todos los empleados que tengan antiguedad de mas 2 años, a que departamento pertenecen
que cargo tienen y cuanto ganan
Mostrar toda la informacion de un empleado: Nombre, fecha en la que se contrato, departamento 
del empleado, años de anitguedad en la empresa, cargo actual y rango del cargo que tiene 
Mostrar todos los departamentos que no tengan empleados asignados 
Mostrar todos los cargos que no tengan empleados asignados */


select nombreCampo1etabla, nombreCampo1etabla2 from tabla1 inner join tabla2
on tabla1.nombrecolumnaTabla1=tabla2.nombrecolumnatabla2
inner join tabla3 on tabla1.nombrecolumnaTabla1=tabla3.nombrecolumnatabla3

