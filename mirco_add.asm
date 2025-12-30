.model small
.stack 100h
;.data
   ; msg db 'Value of ADD: $'   
.code                         

main proc
    
    mov ah,1
    int 21h
    mov bh,al  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    
    sub bh,48   ;convert ascii code into numaric number
    sub bl,48 
    sub cl,48
             
             
    mov al,bh    
    add al,bl
    add al,cl
    
    ; mov ah,9    ;string output
    ;lea dx,msg
    ; int 21h   
 

             
    add al,48             
    mov ah,2   
    mov dl,al
    int 21h

    exit:
    mov ah,4ch
    int 21h
main endp
end main