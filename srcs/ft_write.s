
section .text
    global ft_write

ft_write:
    xor rax, rax            
    mov rax, 1              ; system call write
    syscall                 ; call to write function
    jc error                ; if (CF == 1) return (error)
    jmp exit                ; if (CF == 0) return (exit)

error:
    xor rax, rax            
    mov rax, -1             ; -1 => system call error
    ret

exit:
    ret