
# Función 'myReadData_byDate'
#
#	Lee datos de un fichero csv de nombre 'file'.
#	Devuelve un vector que contiene los datos de la columna especificada por la etiqueta 'column'
#	desde la fecha inicial 'date_ini' hasta la fecha final 'date_fin'.
# 	
# Argumentos:
#	- file: Cadena de caracteres (string) especificando el nombre del fichero.
#	- date_ini: Cadena de caracteres (string) especificando la fecha inicial. Formato dd/mm/aaa.
#	- date_fin: Cadena de caracteres (string) especificando la fecha final. Formato dd/mm/aaa.
#	- column: Cadena de caracteres (string) especificando la columna (etiqueta o cabecera) que se desea leer.
#
# Añadir la siguiente linea para hacer llamadas a esta función desde otros ficheros:
#
#	source('Lectura_datos_por_fecha.R')
#

myReadData_byDate = function(file, date_ini, date_fin, column){
	
	df = read.csv(file, sep = ';', row.names = 1)
	idx_Dates = as.character( seq(as.Date(date_ini, format = '%d/%m/%Y'), as.Date(date_fin, format = '%d/%m/%Y'), 'days') )
	return( na.omit(df[idx_Dates, column]) )
}


############## Ejemplo de uso ##############

# Leyendo datos de presión máxima desde el 1 de diciembre de 2018 al 31 de diciembre de 2018 (1 mes).
data = myReadData_byDate('0200E-19200101-20181231.csv', '01/12/2018', '31/12/2018', 'PRESMAX')

# Imprimir los primeros y últimos datos
print(head(data))
print(tail(data))