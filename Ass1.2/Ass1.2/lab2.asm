.386
.model flat, stdcall
.stack 4096

.data
a byte 0
b byte 0
f byte 1 ;������ �� �� c �� ����� ������
d byte 0
t1 byte ?
s byte ?

ExitProcess PROTO, dwExitCode:byte

.code
main PROC

mov al, a
xor al, 1
or al, b
or al, f
mov ah, d
xor ah, 1
and al, ah
xor al, 1
mov t1, al

mov al, b
or al, f
xor al, 1
and al, a
or al, d
mov s, al

INVOKE ExitProcess,0

main ENDP
END main