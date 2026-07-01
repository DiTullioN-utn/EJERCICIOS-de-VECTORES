// Realizar un programa que defina un vector llamado vecNum de 10 enteros, a continuación,
// lo inicialice con valores aleatorios (del 1 al 10) y posteriormente muestre en pantalla cada
// elemento del vector junto con su cuadrado y su cubo.

Algoritmo EJvectores1
	
	Definir vecNum, largo, i, cuadrado, cubo Como Entero
	largo<-10
	Dimension vecNum(largo)
	
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		vecNum(i) <- Aleatorio(1, 10) 
	FinPara
	
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		Escribir Sin Saltar vecNum(i), " "
	FinPara
	
	Escribir ""
	
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		cuadrado <- vecNum(i) * vecNum(i)
		Escribir "El cuadrado de ", vecNum(i), " es: ", cuadrado
	FinPara
	
	Escribir ""
	
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		cubo <- vecNum(i) * vecNum(i) * vecNum(i)
		Escribir "El cubo de ", vecNum(i), " es: ", cubo
	FinPara
FinAlgoritmo
