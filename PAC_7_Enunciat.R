# Clear the workspace
rm(list = ls())

####### Funcions auxiliars #######
source('Lectura_datos_por_fecha.R')

# Funció que evalua els polinomis trigonomètrics de '-n' fins a 'n' en 'x'
my_fourier_exp = function(y, n){
	
	expy = matrix(0, 2*n+1, length(y))
	for (k in -n:n) {
		expy[k+n+1, ] = #FEINA A FER: expressió de les funcions base de Fourier (formulació exponencial)
	}
	
	return(expy)
}

# Donats els coeficients de Fourier, retorna la funció aproximada avaluada en 't'
myf_Fourier_exp = function(t, a, b, ck){
	
	x = #FEINA A FER: canvi de variable
	n = floor(length(ck)/2)
	
	expx = my_fourier_exp(x, n)
	
	return(Re(colSums(ck*expx))) # NO MODIFICAR
	
}

####### PAC 7 #######

## Lectura de datos
#FEINA A FER: cobrir els camps per a recuperar les temperatures
t = myReadData_byDate('0200E-19200101-20181231.csv', , , )
m = length(t)

####### Exercici 1 #######
## Generar mostra de variació de temperatura
delta_t = #FEINA A FER: variació de temperatura entre dos dies consecutius

####### Exercici 2 #######
## Aproximació densitat amb sèries de Fourier (formulació amb exponencials)
# Truncament a 2n+1 termes
n = 2

# Canvi de variable
#FEINA A FER: implementar el canvi de variable
a = 
b = 
x = 

# Càlcul de coeficients (cas continu)
expx = my_fourier_exp(, n) #FEINA A FER: completar el primer argument (fixeu-vos en l'expressió (26) de la guia)
ck = (1/(b - a))*rowMeans(expx) # NO MODIFICAR

print(ck)

####### Exercici 3 #######

#FEINA A FER: implementació de la representació gràfica de diverses aproximacions. Per a això, es pot emprar la funcion 'myf_Fourier_exp'

####### Exercici 4 #######
#NOTA La funció 'myf_Fourier_exp' pot servir d'ajuda

#FEINA A FER: Probabilitat que la temperatura disminueixi almenys 3 graus en un dia

#FEINA A FER: Probabilitat que la temperatura variï menys de 4 graus.

#FEINA A FER: Probabilitat que la temperatura de demà sigui almenys 2 graus major que la d'avui.
