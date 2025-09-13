--1)Mostrar nombre, destino de todos los vuelos que sean modelo 380
 -- y su capacidad sea superior a 400 pasajeros
 --(se puede usar in like)
 
SELECT nombre, DESTINO, VUELOS.CODIGO FROM VUELOS INNER JOIN AEROLINEAS
ON 
VUELOS.CODIGO='IBE380'or VUELOS.CODIGO='SKY380'or 
VUELOS.CODIGO='LAN380'
WHERE BUSSINESS+PRIMERA+TURISTA>400

SELECT nombre, DESTINO, VUELOS.CODIGO FROM VUELOS INNER JOIN AEROLINEAS
on
BUSSINESS+PRIMERA+TURISTA>400
where vuelos.CODIGO like '%380'

order by NOMBRE
 
--2)Mostrar nombre. Destino, escala de todos los vuelos cuyo valor_$ sea mayor
-- igual a 100000 e impuesto_US sea mayor a 7900 y menor a $10359  
 
SELECT nombre, DESTINO, ESCALA,VALOR_$,IMPUESTO_US 
FROM VUELOS INNER JOIN AEROLINEAS
ON VALOR_$>=100000 and ((IMPUESTO_US*700)>7900 and (IMPUESTO_US*700)<10359)
order by NOMBRE
/* Ejercicio 3  guia base de datos */

select VUELOS.CODIGO ,nombre ,valor_$,IMPUESTO_US, 
case vuelos.CODIGO
	when 'tam 747' then valor_$*0.12
	when 'ibe 380' then valor_$*.15
	when 'lan 747' then valor_$*.07
else	
	valor_$*0.04
end as 'impuesto loza'
from VUELOS inner join AEROLINEAS
on vuelos.CODIGO=AEROLINEAS.CODIGO
order by NOMBRE desc


/* EJERCICIO 4 guia de base de datos*/

update VUELOS set VALOR_$=VALOR_$*1.045

/* Ejercicio 5 Guia de base de datos */

select nombre, destino, escala, valor_$,
case destino
	when 'paris' then valor_$*.06
	when 'roma' then valor_$*.07
	when 'londres' then valor_$*.09
else valor_$*.04
end as 'valor agregado'
from vuelos inner join AEROLINEAS
on VUELOS.CODIGO=AEROLINEAS.CODIGO
order by NOMBRE desc

/*Ejercicio 6 de guia de base de datos*/

update VUELOS set DESTINO=lower(DESTINO)
update VUELOS set DESTINO=upper(DESTINO)
select* from VUELOS
select NOMBRE, ESCALA,
case ESCALA
	when 'la paz' then (VALOR_$ + impuesto_us)
	when 'quito' then (VALOR_$ + impuesto_us)
	when 'bogota' then (VALOR_$ + impuesto_us)
	when 'la paz' then (VALOR_$ + impuesto_us)