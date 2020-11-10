section .text
    global ft_strlen

ft_strlen:
    xor rax, rax                
    cmp rdi, 0                  
    je exit                     ; if str == NULL exit
    jmp loop                    

loop:
    cmp BYTE [rdi + rax], 0     ; if (*str == '\0')
    je exit                     ;  return (i)
    inc rax                     ; i++
    jmp loop                    

exit:
    ret                         ; return (i)