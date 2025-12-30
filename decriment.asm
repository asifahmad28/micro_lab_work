main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov cl,'1'
    
    for:
    cmp bl,cl
    jl exit:
    
    mov ah,2
    mov dl,bl
    int 21h
    
    dec bl
    jmp for:
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main