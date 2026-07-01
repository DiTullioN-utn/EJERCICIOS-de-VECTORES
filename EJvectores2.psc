// Dado un vector cargado al azar llamado vec1 con 20 números, en forma aleatoria entre 50
// y 375, se pide poder cargar un vector llamado vecPares con todos los números pares posibles
// que se encuentren dentro del vector original vec1. Informar el vector original vec1. Informar
// el vector vecPares.


Algoritmo EJvectores2
	
	Definir vec1, vecPares, largo, i, contador Como Entero
	largo<-20
	contador <- 0
	Dimension vec1(largo)
	Dimension vecPares(largo)
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		vec1(i) <- Aleatorio(50, 375) 
	FinPara
	
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		Si vec1(i) mod 2 = 0 Entonces
			vecPares(contador) <- vec1(i)
			contador <- contador + 1
		FinSi
	FinPara
	
	Escribir "El vector de numeros es:"
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		Escribir Sin Saltar vec1(i), " "
	FinPara
	
	Escribir ""
	Escribir "El vector de pares es:"
	Para i<-0 Hasta contador-1 Con Paso 1 Hacer
		Escribir Sin Saltar vecPares(i), " "
	FinPara
	
FinAlgoritmo
