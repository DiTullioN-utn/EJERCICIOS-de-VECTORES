// Crear un vector de 5 elementos de cadenas de caracteres, inicializa el vector con datos
// leídos por el teclado. Copia los elementos del vector en otro vector, pero en orden inverso, y
// lo muestre por pantalla.

Algoritmo EJvectores4
	
	Definir vector1 Como Caracter
	Definir vector2 Como Caracter
	Definir largo, i Como Entero
	largo <- 30
	Dimension vector1(5, largo)
	Dimension vector2(5, largo)
	
	Para i<-0 Hasta 5-1 Con Paso 1 Hacer
		Escribir "Ingrese una palabra "
		Leer vector1(i,)
	FinPara
	
	Para i<-4 Hasta 0+1 Con Paso -1 Hacer
		vector2(i+5,) <- vector1(i,)
	FinPara
	
	Para i<-0 Hasta 5-1 Con Paso 1 Hacer
		Escribir Sin Saltar vector1(i,), " "
	FinPara
	Escribir ""
	Para i<-0 Hasta 5-1 Con Paso 1 Hacer
		Escribir Sin Saltar vector2(i,), " "
	FinPara
	
FinAlgoritmo
