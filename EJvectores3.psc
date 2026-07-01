// Hacer un programa, que inicialmente cargue 2 vectores de 10 posiciones con números al
// azar entre 1 y 20, y puedan mostrarlos. Luego calcule la sumatoria de los productos, de cada
// elemento del vector, para ello existen restricciones, que son las siguientes para llevar a cabo
// esta sumatoria de producto, los 2 valores de cada vector deben ser pares. Por ultimo
// informar el resultado.



Algoritmo EJvectores3
	
	Definir vec1, vec2, largo, i, suma Como Entero
	largo<-10
	suma <- 0
	Dimension vec1(largo)
	Dimension vec2(largo)
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		vec1(i) <- Aleatorio(1, 20) 
		vec2(i) <- Aleatorio(1, 20) 
	FinPara
	
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		Escribir Sin Saltar vec1(i), " "
	FinPara
	Escribir ""
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		Escribir Sin Saltar vec2(i), " "
	FinPara
	Escribir ""
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		Si vec1(i) mod 2 = 0 y vec2(i) mod 2 = 0 Entonces
			suma <- vec1(i) + vec2(i)
			Escribir "La suma cuando ambos vectores tienen numero par en la misma posicion es: ", suma
		FinSi
	FinPara
	
	
	
FinAlgoritmo
