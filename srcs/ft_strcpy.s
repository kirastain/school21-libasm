section .text
    global ft_strcpy

; rdi = dest, rsi = src

ft_strcpy:
    xor rax, rax            ; char temp
    push rdi                ; rdi in stack
    jmp loop                ; jump to loop

loop:
    cmp BYTE [rsi], 0       ; check if src
    je exit                 
    mov rax, [rsi]          ; temp = src[0]
    mov [rdi], rax          ; dst[0] = temp
    inc rdi                 ; *dst++
    inc rsi                 ; *src++
    jmp loop                

exit:
    mov BYTE [rdi], 0       ; add \0
    pop rax                 ; rax from stack
    ret                     ; return ()