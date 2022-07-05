[org 0x7c00]
    mov ah, 0x0e
    mov bx, string
loopp:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp loopp

string: db "Hello, and welcome to another zozing session, how about that, i bet you did'nt expect that shit to happen", 10, 0

end:
    jmp $
    times 510-($-$$) db 0
    dw 0xaa55
