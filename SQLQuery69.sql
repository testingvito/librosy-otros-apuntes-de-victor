

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

update VUELOS set DESTINO=lower(destino)
update VUELOS set DESTINO=upper(destino)
select* from VUELOS



select nombre, escala,
case escala
	when 'la paz' then (valor_$ + impuestos_us)
	when 'quito' then (valor_$ + impuestos_us)
	when 'bogota' then (valor_$ + impuestos_us)
	when 'la paz' then (valor_$ + impuestos_us)