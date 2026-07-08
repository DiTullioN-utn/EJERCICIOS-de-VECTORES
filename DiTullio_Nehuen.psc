

Algoritmo simulacroParcialito
	
	Definir vecAlumno Como Caracter
	Definir largo, i, j, Promedio Como real
	Definir vecNota, auxnota como entero
	Definir abanderado, escolta1, escolta2 Como Entero
	Definir aux Como caracter
	
	Repetir
		
	Escribir "Cuantos alumnos hay en el curso?"
	leer largo
	Promedio <- 0
	
	
	si largo < 1 Entonces
		Escribir "Numero invalido, debe haber almenos 1 alumno por curso"
	SiNo
		Dimension vecAlumno[largo]
		Dimension vecNota[largo]
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		Escribir "Ingrese el ", i+1, "º alumno del curso"
		Leer vecAlumno[i]
		Escribir "Cual es la nota final del alumno? (Entre 0 y 10)"
		Leer vecNota[i]
		Si vecNota[i] < 0 o vecNota[i] > 10 Entonces
			Escribir "Numero fuera del rango, intente de nuevo"
			i <- i - 1
			Esperar Tecla
			Limpiar Pantalla
		FinSi
		
	FinPara
	
	
	Para i <- 0 Hasta largo - 2 Con Paso 1 Hacer
		Para j <- i+1 Hasta largo - 1 Con Paso 1 Hacer
			Si vecAlumno(i) > vecAlumno(j) Entonces
				aux <- vecAlumno(i)
				auxnota <- vecNota[i]
				vecAlumno(i) <- vecAlumno(j)
				vecNota[i] <- vecNota[j]
				vecAlumno(j) <- aux
				vecNota[j] <- auxnota
			FinSi
		FinPara
	FinPara
	Limpiar Pantalla
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		Escribir vecAlumno[i], " Nota final: ", vecNota[i]
	FinPara
	
	Escribir ""
	
	Para i <- 0 Hasta largo - 1 Con Paso 1 Hacer
		Promedio <- Promedio + vecNota[i]
	FinPara

	Promedio <- Promedio / largo
	
	Escribir "El promedio general de todo el curso es: ", Promedio
	
	Para i<-0 Hasta largo-1 Con Paso 1 Hacer
		Si vecNota[i] >= 6 Entonces
			Escribir vecAlumno[i], " Esta aprobada/o"
		SiNo
			Escribir vecAlumno[i], " Esta desaprobada/o"
		FinSi
	FinPara
	
	
	si largo >= 3 Entonces
		Para i <- 0 Hasta largo - 2 Con Paso 1 Hacer
			Para j <- i+1 Hasta largo - 1 Con Paso 1 Hacer
				Si vecNota(i) <= vecNota(j) Entonces
					aux <- vecAlumno(i)
					auxnota <- vecNota[i]
					vecAlumno(i) <- vecAlumno(j)
					vecNota[i] <- vecNota[j]
					vecAlumno(j) <- aux
					vecNota[j] <- auxnota
				FinSi
			FinPara
		FinPara
	SiNo
		Escribir "No se puede asignar abanderado y escoltas"
	FinSi
	
	si largo >= 3 Entonces
		Para i<-0 Hasta largo-1 Con Paso 1 Hacer
			Segun i Hacer
				0:
					Escribir "El abanderado sera: ", vecAlumno[i]
				1:
					Escribir "La primera escolta sera: ", vecAlumno[i]
				2:
					Escribir "La segunda escolta sera: ", vecAlumno[i]
			FinSegun
		FinPara
	FinSi
FinSi
Mientras Que largo < 1
FinAlgoritmo