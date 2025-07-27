Algoritmo Proyecto
	
	Definir precioOriginal, cantidad, sumaPrendas, impuesto, cantidadPrendas, precioPrenda, precioPromocional, costoEnvio, precioFinal, Peso, descuento, cuponDescuento, i, j Como Entero
	Definir IVA Como Real
	Definir prenda, respuesta Como Caracter
	

	IVA <- 0.12
	
	Escribir "Ingrese cantidad de prendas"
	leer i
	
	sumaPrendas <- 0
	
	Dimension prenda[i]
	Dimension precioPrenda[i]
	
	Para i <- 1 Hasta i Con Paso 1 Hacer
		Escribir "Ingrese tipo de prenda ", i ": y posterimente ingrese el precio de la prenda ", i
		leer prenda[i], precioPrenda[i]
		sumaPrendas <- sumaPrendas + precioPrenda[i]
	Fin Para
	
	
	Escribir "¿tienes cupon de descuento si/no?"
	leer respuesta
	
	si respuesta = "si" o respuesta = "s" o respuesta = "SI" o respuesta = "Si" o respuesta = "S" o respuesta = "sI"entonces
		escribir "ingrese porcentaje de cupon (10, 20, 30 o 40)"
	leer cuponDescuento
	Si cuponDescuento = 10 Entonces 
		descuento <- sumaPrendas * 0.1
	SiNo
		si cuponDescuento = 20 entonces
			descuento <- sumaPrendas * 0.2
		SiNo
			si cuponDescuento = 30 Entonces
				descuento <- sumaPrendas * 0.3
			SiNo
				si cuponDescuento = 40 Entonces
					descuento <- sumaPrendas * 0.4
				FinSi
			FinSi
		FinSi
	Fin Si
	SiNo
	Escribir "su descuento es 0"
	Fin Si

	
	precioPromocional <- sumaPrendas - descuento
	impuesto <- precioPromocional * IVA
	precioFinal <- precioPromocional + impuesto
	
	
	Escribir "el neto es: ", sumaPrendas
	Escribir "el descuento aplicado es: ", descuento
	Escribir "el IVA es de: ", impuesto
	Escribir "el precio final es: ", precioFinal

FinAlgoritmo
