.model small
.stack 100h
.data
a db 10,13, "The maximum number is:  $"
.code
main proc
     mov ax, @data
     mov ds,ax
     
     mov ah,1
     int 21h
     mov bl,al 
     
     mov ah,1
     int 21h
     mov bh,al 
     
     mov ah,1
     int 21h
     mov cl,al
    
     
     cmp bl, bh
     jge BLandCL
     jmp BHandCL     

     BLandCL:
     cmp bl, cl
     jge L1
     jmp L3

     BHandCL:
     cmp bh, cl
     jge L2
     jmp L3

     
                
     
     L1:
     mov ah,9
     lea dx,a
     int 21h
     mov ah,2
     mov dl,bl
     int 21h
     jmp exit:
     
     
     L2:
     mov ah,9
     lea dx,a
     int 21h
     mov ah,2
     mov dl,bh
     int 21h 
     jmp exit: 
     
     L3:
     mov ah,9
     lea dx,a
     int 21h
     mov ah,2
     mov dl,cl
     int 21h
     jmp exit:
     
     exit:
     mov ah,4ch
     int 21h
     main endp
end main