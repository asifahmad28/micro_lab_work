;substrac 
.model small
.stack 100h  
.data
a db ?
b db ?
.code

main proc
    mov ax,@data      ;data call
    mov ds,ax
    
    mov ah,1
    int 21h
    mov a,al
    
    mov ah,1
    int 21h
    mov b,al 
    
    mov al,a
    sub al,b
    
    
    mov ah,2
    mov dl,al
    add dl,48
    int 21h  
    
   
    ;mov ah,ch
    ;int 21h       exit evabeo lekha jay
    ;main endp
    
    exit:
    
    mov ah,4ch
    int 21h
    main endp
end main