[org 0x7c00]

    mov bx, 2

loopinput:
    mov ah, 0
    int 0x16

    mov ah, 0xe
    int 0x10

    cmp al, 10
    je endinput

    mov [buffer + bx], al
    inc bx

    jmp loopinput

endinput:
    mov [buffer  ], byte 10
    mov [buffer+1], byte 13

    mov ah, 0x0e
    mov bx, buffer

loopprint:
    mov al, [bx]
    cmp al, 0
    jmp endprint
    int 0x10
    inc bx
    jmp loopprint

endprint:
    mov al, 10
    int 0x10
    mov al, 13
    int 0x10

buffer: times 258 db 0

    times 510-($-$$) db 0
    db 0x55, 0xaa
