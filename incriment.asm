main proc
    mov ah,1
    int 21h
    mov bl,al
    sub bl,47
    
    mov cx,1
    mov bl,cl
    
    for:
    mov ah,2
    mov dl,bl
    int 21h
    
    inc bl
    loop for:
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main