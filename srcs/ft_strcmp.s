
section .text
    global ft_strcmp

ft_strcmp:
    xor rax, rax            ; char c = NULL
    xor rbx, rbx            ; char h = NULL
    jmp loop                ; jump to loop

loop:
    mov al, BYTE [rdi]      ; c = *dest
    mov bl, BYTE [rsi]      ; h = *src
    cmp al, 0               
    je exit                 
    cmp bl, 0               
    je exit                 
    cmp al, bl              ; if (c != h)
    jne exit                ; return
    inc rdi                 
    inc rsi                 
    jmp loop                

exit:
    movzx rax, al           ; move from low register (al) to x64 register (rax) with 0 byte
    movzx rbx, bl           ; move from low register (bl) to x64 regisetr (rbx) with 0 byte
    sub rax, rbx            
    ret                     ; return (temp)