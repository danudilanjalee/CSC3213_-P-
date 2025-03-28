.model small
.stack 100

.data
n db 2
m db 3

.code
start:

mov ax,@data
mov ds,ax

mov al,n ;dl=2
mul m ;dl=2*3=1

mov dl,al ;dl=6
add dl,48 ;dl=6+48=54

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start