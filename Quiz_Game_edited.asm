.model small
.stack 100h
.data 
   ms db " ********** Quiz game By Pallob Barmon********** : $" 
   ms1 db "---------------Eastern University"------------- : $"
   msg db "Answer The Following Question, Until three mistake: $"  
   msg1 db "1. The microprocessor of a computer can operate on any information if it is present in ______ only : $"
   qsn1 db "a. Program Counter            b. Flag      c. Main Memory: $"
   rht1 db " Your answer is right: $"
   wrn1 db " Your answer is wrong: $" 
   msg2 db "2. BHE is ..... ?: $"
   qsn2 db "a. D7-D0                     b. D15-D8               c. D21-D0 : $"  
   msg3 db "3. In reset operation CS is ..... ?: $"
   qsn3 db "a.FFFFH                       b.Empty                c. 0000H : $"   
   msg4 db "4. In A17/S4, A16/S3 Adress (1,0) combination is .... ? : $"
   qsn4 db "a. Data Segment              b. Code Segment         c. Stack Segment : $" 
   msg5 db "5. Which register specifying ports in some IN and OUT operations? : $"
   qsn5 db "a. DX                        b. BX                   c. AX : $" 
   msg6 db "6.  Offset address relative to CS which one ..? : $"
   qsn6 db "a. IP                        b. BP                   c. SP : $" 
   msg7 db "7. 8088 is a 16 bit microprocessor with a/an ... bitdata bus : $"
   qsn7 db "a. 16                        b. 8                    c. 32 : $" 
   msg8 db "8. In maximum mode pull MN/MX logic is ... : $"
   qsn8 db "a. 0                         b. 1                    c. both : $" 
   msg9 db "9. Lock is an/a .... : $"
   qsn9 db "a. Input                     b. Universal            c. Output : $"  
   msg10 db "10. When IF=0 INTR is .... : $"
   qsn10 db "a. Enabled                  b. Disabled             c. Unmasked : $"
   again db "Press 'y' if you want to play again :$" 
   nagain db "Press 'n' if you don't want to play : $"
   congrats db "Congratulation , You Completed The Game: $"
   failled db "Sorry You failled, Be pateint & try again , You can : $"                                                              
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset ms
    int 21h 
    
    ag: 

    level1:

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset msg
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
     
    mov cx,0
    
    mov ah,9
    mov dx,offset msg1
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
 
    mov ah,9
    mov dx,offset qsn1
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1 
    int 21h
    cmp al,'c'
    je rt1
    jmp er1

    rt1:

    mov ah,9
    mov dx,offset rht1
    int 21h 

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    jmp lev2

    er1:

    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    lev2:
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
     
    mov ah,9
    mov dx,offset msg2
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset qsn2
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'b'
    je rt2
    jmp er2
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    rt2:
    
    mov ah,9
    mov dx,offset rht1
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp lev3

    er2:
    
    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lev3:
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov ah,9
    mov dx,offset msg3
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset qsn3
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'a'
    je rt3
    jmp er3
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    rt3:
    
    mov ah,9
    mov dx,offset rht1
    int 21h  

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp lev4
    
    er3:
    
    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx
    cmp cx,3
    je exit 

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lev4:
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h    
    
    mov ah,9
    mov dx,offset msg4
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset qsn4
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'b'
    je rt4
    jmp er4
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    rt4:
    
    mov ah,9
    mov dx,offset rht1
    int 21h  

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp lev5
    
    er4:
    
    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx
    cmp cx,3
    je exit 

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lev5:
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset msg5
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset qsn5
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'a'
    je rt5
    jmp er5
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    rt5:
    
    mov ah,9
    mov dx,offset rht1 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp lev6
    
    er5:
    
    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx
    cmp cx,3
    je exit 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lev6:
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset msg6
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset qsn6
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'a'
    je rt6
    jmp er6
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    rt6:
    
    mov ah,9
    mov dx,offset rht1
    int 21h  

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp lev7
    
    er6:
    
    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx
    cmp cx,3
    je exit 

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    lev7:
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 

    mov ah,9
    mov dx,offset msg7
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset qsn7
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'b'
    je rt7
    jmp er7
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    rt7:
    
    mov ah,9
    mov dx,offset rht1
    int 21h  

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp lev8
    
    er7:
    
    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx
    cmp cx,3
    je exit 

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 

    lev8: 

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    mov dx,offset msg8
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    mov dx,offset qsn8
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'a'
    je rt8
    jmp er8
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    rt8:
    
    mov ah,9
    mov dx,offset rht1
    int 21h  

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp lev9
    
    er8:
    
    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx
    cmp cx,3
    je exit    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    lev9:    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    mov dx,offset msg9
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
        
    mov ah,9
    mov dx,offset qsn9
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'c'
    je rt9
    jmp er9
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    rt9:
    
    mov ah,9
    mov dx,offset rht1
    int 21h  
        
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp lev10
    
    er9:
    
    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx
    cmp cx,3
    je exit     
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h         
    
    lev10:
        
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h                
    
    mov ah,9
    mov dx,offset msg10
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov ah,9
    mov dx,offset qsn10
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'b'
    je rt10
    jmp er10
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    rt10:
    
    mov ah,9
    mov dx,offset rht1
    int 21h      
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp pass
    
    er10:
    
    mov ah,9
    mov dx,offset wrn1
    int 21h
    inc cx
    cmp cx,3
    je exit 
        
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
                             
    exit:     
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
        
    mov ah,9
    mov dx,offset failled
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
        
    mov ah,9
    mov dx,offset again
    int 21h
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov ah,9
    mov dx,offset nagain
    int 21h    
    
    mov ah,1
    int 21h
    cmp al,'y'
    je ag 
    cmp al,'n'
    je ext
    
    jmp ext
        
    pass: 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
        
    mov ah,9
    mov dx,offset congrats
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    mov dx,offset again
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    mov dx,offset nagain
    int 21h    
    
    mov ah,1 
    int 21h
    cmp al,'y'
    je ag
    cmp al,'n'
    je ext   
    ext:
    main endp
end main
