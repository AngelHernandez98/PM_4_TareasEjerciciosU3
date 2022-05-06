TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
; Programa #1: Solicitar los datos personales de una persona para determinar sí esta es capaz de 
; realizar un proceso X y al final debemos deglozar el resultado de la validación del proceso (Individual)

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj0_P1 db "						Registro de Mercado Libre MX",0
msj1_P1 db "Ingrese su nombre(s): ",0
msj2_P1 db "Ingrese su apellido paterno: ",0
msj3_P1 db "Ingrese su apellido materno: ",0
msj4_P1 db "Ingese su numero de celular: ",0
msj5_P1 db "Ingrese su edad: ",0
msj6_P1 db "						    Registro Completado",0
msj7_P1 db "						          ERROR :(",0
msj8_P1 db "					Debes ser mayor de edad para poder resgistrarse",0

var_Nombres db 80 dup(65)
var_ApellidoPaterno db 20 dup(65)
var_ApellidoMaterno db 20 dup(65)
var_NumeroTelefono db 10 dup(65)
var_Edad dword 0

.code 

main1 PROC
;Lógica del Programa
	mov edx, offset msj0_p1
	call writeString
	call CrLf
	call CrLf

	mov edx, offset msj1_P1
	call writeString
	mov ecx, sizeof var_Nombres
	call readString
	
	mov edx, offset msj2_P1
	call writeString
	mov ecx, sizeof var_ApellidoPaterno
	call readString

	mov edx, offset msj3_P1
	call writeString
	mov ecx, sizeof var_ApellidoMaterno
	call readString

	mov edx, offset msj4_P1
	call writeString
	mov ecx, sizeof var_NumeroTelefono
	call readString
	
	mov edx, offset msj5_P1
	call writeString
	call readInt
	mov var_Edad, eax
	call CrLf

	mov ebx, 18d

	cmp ebx, eax

	jge registroCompletado
	jmp continuar
	
	registroCompletado:
		mov edx, offset msj7_P1
		call writeString
		call CrLf
		mov edx, offset msj8_P1
		call writeString
		call CrLf
		jmp continuar2
		
	continuar:
	mov edx, offset msj6_P1
	call writeString
	call CrLf
	continuar2:
	

exit

main1 ENDP

END main1