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
    
    cmp bl,bh   ;compare
    jg L1       ;jump greater
    jmp L2      ;jump
    
    L1: 
    mov ah,2
    mov dl,bl
    int 21h
    
    L2:
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    