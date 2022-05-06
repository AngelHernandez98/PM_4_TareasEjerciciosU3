TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
; Programa #2: Realizar un contador que partirá del número 10 y finalizará en el número 50 (Individual)

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj1_P9 db "Numero: "
var1_P9 byte 49
var2_P9 byte 48
terminador db " ."

.code 

main2 PROC
;Lógica del Programa

	mov edx, offset msj1_P9   ;Mensaje
	mov ecx, 41d              ;Termina el ciclo
	mov eax, 100d             ;Tiempo en milisegundos que tardará en desplegar el mensaje

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