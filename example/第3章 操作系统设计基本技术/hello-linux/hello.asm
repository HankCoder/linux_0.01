section .text 
global main 

main: 
mov eax,4 		;4号调用 
mov ebx,1 		;ebx送1表示stdout 
mov ecx,msg 		;字符串的首地址送入ecx 
mov edx,14 		;字符串的长度送入edx 
int 80h 			;输出字串 
mov eax,1 		;1号调用 
int 80h 			;结束 
msg: 
db "Hello World!",0ah,0dh 
