
org 100h

name "array function"

org 100h

.data
poker db 2,4,6,8 

len db $-poker

.code
main proc
    mov ax,@data
    mov ds, ax
    
        
         mov si , offset poker
         mov ah,02h
         
         
         l1: 
         mov dl ,[si]
         add dl , 30h
         int 21h
         inc si 
         dec len
         cmp len,0
         jne l1
         
        
        
    main endp
end main

ret




