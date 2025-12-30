.model small
.stack 100h
.data
a db 10,13, "Greater then 5 $"
b db 10,13, "Less then 5 $"
c db 10,13, "Equal 5 $"
.code
main proc
     mov ax, @data
     mov ds,ax
     
     mov ah,1
     int 21h
     mov bl,al
     sub bl,48
     
     cmp bl,5
     je L1
     jg L2
     jmp L3
                
     L1:
     mov ah,9
     lea dx,c 
     int 21h
     ;jmp exit:
     
     L2:
     mov ah,9
     lea dx,a
     int 21h
     ;jmp exit:
     
     L3:
     mov ah,9
     lea dx,b
     int 21h
     ;jmp exit:
     
     exit:
     mov ah,4ch
     int 21h
     main endp
end main