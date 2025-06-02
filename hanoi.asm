section .data
    ; definindo as torres
    origem db 'A', 0        
    auxiliar db 'B', 0    
    destino db 'C', 0   
    
    msg1 db 'mova o disco 1 de ', 0   ; mensagem principal 
    msg2 db ' para ', 0                ; parte da mensagem 

section .text
    global _start       ; ponto inicial do programa

_start:
    ; imprimir msg1 
    mov eax, 4          ; chamada do sistema sys_write
    mov ebx, 1          ; escrever no stdout (terminal)
    mov ecx, msg1       ; endereco da mensagem a imprimir
    mov edx, 18         ; tamanho da mensagem (numero de bytes)
    int 0x80            ; chamada de interrupcao para executar

    ; imprimir origem
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, origem     ; endereco da letra A
    mov edx, 1          ; tamanho 1 byte
    int 0x80            ; chamada do sistema

    ; imprimir msg2 
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, msg2       ; endereco da mensagem
    mov edx, 6          ; tamanho da mensagem (6 bytes)
    int 0x80            ; chamada do sistema

    ; imprimir destino
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, destino    ; endereco da letra C
    mov edx, 1          ; tamanho 1 byte
    int 0x80            ; chamada do sistema

    ; sair do programa
    mov eax, 1          ; chamada sys_exit
    xor ebx, ebx        ; codigo de saida 0
    int 0x80            ; executa saida do programa
