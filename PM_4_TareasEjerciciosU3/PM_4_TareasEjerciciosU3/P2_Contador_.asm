TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hern�ndez Hern�ndez
; Programa #2: Realizar un contador que partir� del n�mero 10 y finalizar� en el n�mero 50 (Individual)

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
msj1_P9 db "Numero: "
var1_P9 byte 49
var2_P9 byte 48
terminador db " ."

.code 

main2 PROC
;L�gica del Programa

	mov edx, offset msj1_P9   ;Mensaje
	mov ecx, 41d              ;Termina el ciclo
	mov eax, 100d             ;Tiempo en milisegundos que tardar� en desplegar el mensaje

	ciclo:
		call writeString
		
		inc var2_P9
		cmp var2_P9, 58
		jne salto0
			inc var1_P9
			mov var2_P9, 48
		salto0:

		call CrLf
		call Delay
	loop ciclo

	;mov eax, 4000d
	call Delay
	call CrLf

exit

main2 ENDP

END main2