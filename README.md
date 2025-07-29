# Proyecto 1: Simulador de Compra L_BARRAZA

Este proyecto consiste en un algoritmo en pseudocódigo que simula el proceso de compra en una tienda en línea. El sistema calcula el costo final de una compra considerando descuentos, impuestos, cantidad de productos, peso del paquete y destino de envío.

---

## Ejemplo de ejecución

Supongamos que el cliente compra 2 prendas:

- Precio original por prenda: $100
- Cupón de descuento: 10%
- IVA: 12%
- Peso total: 3 kg
- Envío internacional

El algoritmo realiza los siguientes pasos:

1. Aplica el cupón: $100 → $90
2. Aplica IVA: $90 × 1.12 = $100.80
3. Aplica descuento por cantidad: 5% → $100.80 × 0.95 = $95.76
4. Calcula envío: $5000 + $900 = $5900
5. Precio final: ($95.76 × 2) + $5900 = $6091.52

---

## Lógica del algoritmo

1. Solicita la cantidad de prendas.
2. Por cada prenda:
   - Solicita tipo y precio.
   - Asigna peso aleatorio.
3. Calcula el descuento por cantidad.
4. Pregunta si el cliente tiene cupón.
5. Aplica descuentos y calcula el precio promocional.
6. Solicita datos de envío.
7. Calcula el costo de envío según peso y destino.
8. Aplica IVA.
9. Muestra la boleta con todos los detalles.

---

## 🖥️ Cómo ejecutar

Este algoritmo está escrito en pseudocódigo compatible con [PSeInt](https://pseint.sourceforge.net/). Para ejecutarlo:

1. Abre PSeInt.
2. Copia y pega el código en un nuevo archivo.
3. Ejecuta el algoritmo.
4. Sigue las instrucciones en pantalla.

