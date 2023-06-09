# Clear the workspace
rm(list = ls())

####### Funcions auxiliars #######
source('Lectura_datos_por_fecha.R')

# Funci� que evalua els polinomis trigonom�trics de '-n' fins a 'n' en 'x'
my_fourier_exp = function(y, n){
	
	expy = matrix(0, 2*n+1, length(y))
	for (k in -n:n) {
		expy[k+n+1, ] = #FEINA A FER: expressi� de les funcions base de Fourier (formulaci� exponencial)
	}
	
	return(expy)
}

# Donats els coeficients de Fourier, retorna la funci� aproximada avaluada en 't'
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
## Generar mostra de variaci� de temperatura
delta_t = #FEINA A FER: variaci� de temperatura entre dos dies consecutius

####### Exercici 2 #######
## Aproximaci� densitat amb s�ries de Fourier (formulaci� amb exponencials)
# Truncament a 2n+1 termes
n = 2

# Canvi de variable
#FEINA A FER: implementar el canvi de variable
a = 
b = 
x = 

# C�lcul de coeficients (cas continu)
expx = my_fourier_exp(, n) #FEINA A FER: completar el primer argument (fixeu-vos en l'expressi� (26) de la guia)
ck = (1/(b - a))*rowMeans(expx) # NO MODIFICAR

print(ck)

####### Exercici 3 #######

#FEINA A FER: implementaci� de la representaci� gr�fica de diverses aproximacions. Per a aix�, es pot emprar la funcion 'myf_Fourier_exp'

####### Exercici 4 #######
#NOTA La funci� 'myf_Fourier_exp' pot servir d'ajuda

#FEINA A FER: Probabilitat que la temperatura disminueixi almenys 3 graus en un dia

#FEINA A FER: Probabilitat que la temperatura vari� menys de 4 graus.

#FEINA A FER: Probabilitat que la temperatura de dem� sigui almenys 2 graus major que la d'avui.
