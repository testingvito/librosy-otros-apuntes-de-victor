
//1.- Mostrar nombre, destino de todos los vuelos que sean modelo 380  y su capacidad sea superior a 400 pasajeros




select AEROLINEAS.NOMBRE, VUELOS.DESTINO from AEROLINEAS
(VUELOS.CODIGO = 'IBE380' or
VUELOS.CODIGO = 'SKY380' or
VUELOS.CODIGO = 'LAN380' or) AND
(PRIMERA+BUSSINES+TURISTA>400) order by Nombre 