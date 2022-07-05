BITS 64

%define STDOUT 1
%define STDIN  0
%define STDERR 2

segment .data

msg:      db "Please type your name: "
msg_sz: equ $-msg

input:    db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
input_sz: equ $-msg

msg2:     db "Hello "
msg2_sz:  equ $-msg2

msg3:     db "! How are you doing? \( ^-^)", 10
msg3_sz:  equ $-msg2

segment .text

global _start

_start:
	; print msg
	mov rax, 1
	mov rdi, STDOUT
	mov rsi, msg
	mov rdx, msg_sz
	syscall

	; read from keyboard
	mov rax, 0
	mov rdi, STDIN
	mov rsi, input
	mov rdx, 10
	syscall

	; print input
	mov rax, 1
	mov rdi, STDOUT
	mov rsi, msg2
	mov rdx, msg2_sz
	syscall

	mov rax, 1
	mov rdi, STDOUT
	mov rsi, input
	mov rdx, input_sz
	syscall
	
	mov rax, 1
	mov rdi, STDOUT
	mov rsi, msg3
	mov rdx, msg3_sz
	syscall
	
	; exit
	mov rax, 60
	mov rdi, 0
	syscall
