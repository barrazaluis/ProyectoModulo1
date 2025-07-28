Algoritmo Proyecto
	
	Definir precioOriginal, cantidad, sumaPrendas, tipoEnvio, porcentajePorCantidad, impuesto, cantidadPrendas, precioPrenda, precioPromocional, costoEnvio, precioFinal, Peso, descuento, cuponDescuento, i, j Como Entero
	Definir IVA, porcentaje, descuentoAdicional, descuentoTotal, pesoPrenda, totalPeso Como Real
	Definir prenda, respuesta1, respuesta2, direccionEnvio  Como Caracter
	
	IVA <- 0.12
	
	Escribir "Ingrese cantidad de prendas"
	leer i
	
	sumaPrendas <- 0
	totalPeso <- 0
	
	Dimension prenda[i]
	Dimension precioPrenda[i]
	Dimension pesoPrenda[i]
	
	Para i <- 1 Hasta i Con Paso 1 Hacer
		Escribir "Ingrese tipo de prenda ", i ": y posterimente ingrese el precio de la prenda ", i
		leer prenda[i], precioPrenda[i]
		pesoPrenda[i] <- Aleatorio(1, 20) / 10
		sumaPrendas <- sumaPrendas + precioPrenda[i]
		totalPeso <- totalPeso + pesoPrenda[i]
	//descuento por cantidad
		si i = 1 entonces 
			descuentoAdicional = 0.01
		sino
			si i = 2 entonces
				descuentoAdicional = 0.02
			sino 
				si i = 3 entonces
					descuentoAdicional = 0.03
					si i = 4 entonces
						descuentoAdicional = 0.04
					sino
						si i <= 5 entonces
							descuentoAdicional = 0.05
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	porcentajePorCantidad = descuentoAdicional * 100
	Fin Para
		
	Escribir "¿tienes cupon de descuento si/no?"
	leer respuesta1
	si respuesta1 = "si" o respuesta1 = "s" o respuesta1 = "SI" o respuesta1 = "Si" o respuesta1 = "S" o respuesta1 = "sI"entonces
		Repetir
			escribir "ingrese porcentaje de su descuento (maximo 40% de descuento)"
			leer j
		Hasta Que j <= 40
		porcentaje <- j * 0.01
		descuentoTotal <- j + porcentajePorCantidad
	descuento <- sumaPrendas * porcentaje
	FinSi
	
	Escribir "Ingrese datos para entrega"
	Escribir "envio nacional (Opcion 1) o internacional (Opcion 2)"

	
	repetir
		Escribir "ingrese 1 o 2"
		leer tipoEnvio
	Hasta Que tipoEnvio = 1 o tipoEnvio = 2
	si tipoEnvio = 1 Entonces
		valorEnvio = 3000
	sino valorEnvio = 6000
	FinSi
	Escribir "ingrese su direccion de envio"
	leer direccionEnvio
		
	precioPromocional <- sumaPrendas - descuento
	impuesto <- precioPromocional * IVA
	precioFinal <- precioPromocional + impuesto
	
	
	Escribir "el neto es: ", sumaPrendas
	Escribir "el peso de las prendas es: ", totalPeso, " Kilos"
	Escribir "el valor del envio es: $", valorEnvio
	Escribir "el descuento total aplicado es de: ", descuentoTotal,"%"
	Escribir "el descuento por cantidad es:", porcentajePorCantidad,"%"
	Escribir "el descuento aplicado es: ", descuento
	Escribir "el IVA es de: ", impuesto
	Escribir "el precio final es: ", precioFinal
	Escribir "Su será enviado a la dirección: ", direccionEnvio
	
FinAlgoritmo
