    mov ah, 0x0e
    mov al, 'A'
    int 0x10

loopp:
    inc al
    int 0x10
    mov bl, al
    mov al, 10
    int 0x10
    mov al, bl
    cmp al, 'Z'
    je exit
    jmp loopp

exit:
    jmp $
    times 510-($-$$) db 0
    db 0x55, 0xaa
