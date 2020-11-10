section .text
        global ft_strdup
        extern ft_strlen
        extern ft_strcpy
        extern malloc

ft_strdup:
    xor rax, rax        
    cmp rdi, 0          
    je exit             
    push rdi            ; rdi in stack
    call ft_strlen      ; return size in rax
    mov rdi, rax        
    inc rdi             
    call malloc         ; allocate rax
    cmp rax, 0          
    je error            
    pop rsi             ; rsi from stack
    mov rdi, rax        ; move alloc rax to rdi
    call ft_strcpy      ; copy rsi to rdi return rax
    jmp exit            

error:
    xor rax, rax        
    mov rax, -1         
    ret                 ; return (rax)

exit:
    ret                 ; return (rax)