; Compilar com:
; nasm -f win32 programa.asm
; gcc programa.obj -o programa.exe -m32

extern  GetStdHandle
extern  ReadConsoleA
extern  WriteConsoleA
extern  GetTickCount
extern  ExitProcess

import  GetStdHandle kernel32.dll
import  ReadConsoleA kernel32.dll
import  WriteConsoleA kernel32.dll
import  GetTickCount kernel32.dll
import  ExitProcess kernel32.dll

section .data
    prompt      db "Digite seu nome: ",0
    msg1        db " é ",0
    msg2        db "% gay",13,10,0

section .bss
    nome        resb 100
    bytesRead   resd 1
    bytesWrite  resd 1
    hInput      resd 1
    hOutput     resd 1
    numeroStr   resb 4

section .text
global main

main:

    push -10
    call [GetStdHandle]
    mov [hInput], eax

    push -11
    call [GetStdHandle]
    mov [hOutput], eax

loop_inicio:

    ; mostrar prompt
    push 0
    push bytesWrite
    push 18
    push prompt
    push dword [hOutput]
    call [WriteConsoleA]

    ; ler nome
    push 0
    push bytesRead
    push 100
    push nome
    push dword [hInput]
    call [ReadConsoleA]

    ; gerar número aleatório 1–100
    call [GetTickCount]
    xor edx, edx
    mov ecx, 100
    div ecx
    inc edx

    ; converter número para string
    mov eax, edx
    mov ecx, 10
    xor edx, edx
    div ecx
    add al, '0'
    mov [numeroStr], al
    add dl, '0'
    mov [numeroStr+1], dl
    mov byte [numeroStr+2], 0

    ; imprimir nome
    push 0
    push bytesWrite
    push 100
    push nome
    push dword [hOutput]
    call [WriteConsoleA]

    ; imprimir " é "
    push 0
    push bytesWrite
    push 3
    push msg1
    push dword [hOutput]
    call [WriteConsoleA]

    ; imprimir número
    push 0
    push bytesWrite
    push 2
    push numeroStr
    push dword [hOutput]
    call [WriteConsoleA]

    ; imprimir "% gay"
    push 0
    push bytesWrite
    push 6
    push msg2
    push dword [hOutput]
    call [WriteConsoleA]

    jmp loop_inicio
