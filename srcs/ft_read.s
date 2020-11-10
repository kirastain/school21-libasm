section .text
    global ft_read

ft_read:
    xor rax, rax            
    mov rax, 0              ; system call read
    syscall                 ; call to read function
    jc error                ; if 1 return (error)
    jmp exit                ; if 0 return (exit)

error:
    xor rax, rax            
    mov rax, -1             ; -1 as system call error
    ret

exit:
    ret