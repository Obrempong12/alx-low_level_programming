global main
	extern printf

section .data
format: db 'Hello, Holberton', 10, 0  ; Define a null-terminated string with a newline character

section .text
main:
	mov edi, format         ; Move the address of the format string to the EDI register
	xor eax, eax            ; Clear EAX register for the return value (0 is the return value for main in C)
	call printf             ; Call the printf function
	mov eax, 0              ; Set the return value of the main function to 0
	ret                     ; Return from the main function
