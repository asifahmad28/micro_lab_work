.model small
.stack 100h
.code
main proc
    
     mov ah,1
     int 21h
     mov bl,al 
     
     mov ah,1
     int 21h
     mov bh,al 
     
     cmp bh,bl
     jle BHthenBL
     jge BLthenBH  
     
     BHthenBL:
     
     mov dl,bh
     mov ah,2
     int 21h
     
     mov dl,bl
     mov ah,2
     int 21h 
     jmp exit:
     
     BLthenBH:  
     
     mov dl,bl
     mov ah,2
     int 21h
     
     mov dl,bh
     mov ah,2
     int 21h

     exit:
     mov ah,4ch
     int 21h
     main endp
end main