; Corrected assembly code with bounds checking
section .data
    array DWORD 10, 20, 30, 40, 50 ;Example array
    arrayLength equ ($-array)/4 ;Calculate array length
section .bss
section .text
    global _start
_start:
    mov ebx, array ; Point ebx to the array
    mov ecx, 2 ; Example index
    ;Bounds check
    cmp ecx, arrayLength
    jge error_handler ; Jump to error handler if ecx is out of bounds
    mov eax, [ebx+ecx*4] ;Access memory
    ; ... rest of the program ...
    jmp exit_program
error_handler:
    ;Handle the error appropriately (e.g., print an error message and exit)
    ; ... error handling code ...
exit_program:
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80