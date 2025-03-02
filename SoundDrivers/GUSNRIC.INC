;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc            SetGUSRegisters         ; Given DS:SI, CX

                Mov     ES, CS:SongDataArea

                Push    CX
                Push    SI

                Xor     AX, AX

GetOffsetLoop:
                Push    AX
                Push    CX

                Mov     DX, GUSVoiceSelect
                Out     DX, AL                  ; OK.. now to play with this
                                                ; voice.
                Call    GUSDelay

                Inc     DL                      ; DX = select rego

                Mov     BX, [SI]
                Test    BH, 2
                JZ      GetOffsetLoop2

                Mov     BX, 200h
                Mov     [SI], BX

GetOffsetLoop2:
                Test    BL, 1                   ; Channel not on!
                JZ      GetOffsetLoop1
                Test    BH, 1
                JZ      GetOffsetLoop3          ; Prev 1.

                Xor     BX, BX
                Call    SetGUSVolume

                Mov     AL, 80h
                Out     DX, AL
                Add     DL, 2
                In      AL, DX
                Sub     DL, 2
                Mov     AH, AL
                And     AX, 400h
                Out     DX, AL                  ; AL = 0 (Mode control)
                Mov     AL, 3
                Or      AL, AH
                Add     DL, 2
                Out     DX, AL
                Call    GUSDelay
                Out     DX, AL
                Sub     DL, 2

                Jmp     GetOffsetLoop1

GetOffsetLoop3:
                Mov     EAX, [SI+4Ch]
                Mov     [SI+2Ch], EAX

                Mov     AL, 8Ah
                Out     DX, AL

                Inc     DX
                In      AX, DX
                Dec     DX

                And     AH, 31
                ShL     EAX, 16         ; Load high part of EAX

                Mov     AL, 8Bh
                Out     DX, AL
                Inc     DX
                In      AX, DX
                        ; EAX = 000OOOOO OOOOOOOO OOOOOOOF FFFFFFFF
                        ; Need: 00000000 0000OOOO OOOOOOOO OOOOOOOO

                ShR     EAX, 9
                                                ; EAX contains current loc.
                                                ; Convert to Offset (in sample)
                MovZX   EBX, Byte Ptr [SI+36h]
                Sub     EAX, [CS:GUSDataTable+EBX*4]
                Push    CX

                Mov     CL, CS:Compress
                ShL     EAX, CL

                Pop     CX
                Mov     [SI+4Ch], EAX

GetOffsetLoop1:
                Add     SI, SLAVECHANNELSIZE

                Pop     CX
                Pop     AX

                Inc     AX
                Loop    GetOffsetLoop

                Pop     SI
                Pop     CX

                Xor     AX, AX

SetGUSRegisters1:
                Push    AX
                Push    CX

                Mov     DX, GUSVoiceSelect
                Out     DX, AL                  ; OK.. now to play with this
                                                ; voice.
                Call    GUSDelay

                Mov     CX, [SI]                ; CX = flags.
                Inc     DL                      ; DX = select rego

SetGUSRegisters21:
                Test    CL, 32                  ; Frequency change
                JZ      SetGUSRegisters7

                Push    DX

                Mov     EAX, [SI+10h]          ; EAX = freq.

                Push    CX
                Mov     CL, CS:Compress
                ShR     EAX, CL
                Pop     CX

                Xor     EDX, EDX
                MovZX   EBX, MixSpeed

                Div     EBX                    ; EAX = I portion.

                Test    EAX, Not 63
                JNZ     SetGUSRegisters6

                Push    EAX

                Xor     EAX, EAX
                Div     EBX

                Pop     EBX             ; EBX:EAX = IIII FFFF etc.

                SHRD    EAX, EBX, 6

                        ; Have:      IIIIIIII IIIIIIII FFFFFFFF FFFFFFFF
                        ; Req:       IIIIIIFF FFFFFFF0

                Pop     DX
                Mov     AL, 1
                Out     DX, AL

                ShR     EAX, 16
                Add     AX, 1
                SBB     AX, 0                   ; Just in case!
                And     AX, Not 1

                Inc     DX
                Out     DX, AX
                Dec     DX

                Jmp     SetGUSRegisters7

SetGUSRegisters6:
                Mov     CH, 2                   ; Signify to turn off channel
                Pop     DX

SetGUSRegisters7:
                MovZX   BX, Byte Ptr [SI+36h]   ; BX = sample number.
                Cmp     BL, 99
                JA      SetGUSRegisters20

                ShL     BX, 2                   ; GUSDataTable+BX = position

                Cmp     DWord Ptr [CS:GUSDataTable+BX], 0FFFFFFFFh
                JNE     SetGUSRegisters10

SetGUSRegisters20:
                Mov     CH, 2
                Jmp     SetGUSRegisters9

SetGUSRegisters10:
                Test    CH, 5                   ; Loop changed?!??!?
                JZ      SetGUSRegisters8

                Mov     AL, 3                   ; Starting location low.
                Out     DX, AL

                Mov     EAX, [SI+40h]
                Call    GUSGetAddress

                                ; Reqd: ...OOOOO OOOOOOOO OOOOOOOI III.....

                Inc     DX
                Out     DX, AX
                Dec     DX

                Mov     AL, 2                   ; Starting location high
                Out     DX, AL

                ShR     EAX, 16
                Inc     DX
                Out     DX, AX
                Dec     DX

                                                ; Ending location...
                Mov     AL, 5                   ; Ending location low
                Out     DX, AL

                Mov     EAX, [SI+44h]
                Call    GUSGetAddress

                Inc     DX
                Out     DX, AX
                Dec     DX

                Mov     AL, 4                   ; Ending location high
                Out     DX, AL

                SHR     EAX, 16
                Inc     DX
                Out     DX, AX
                Dec     DX

SetGUSRegisters8:
                Test    CH, 1                   ; Do Current position?
                JZ      SetGUSRegisters9

                Mov     AL, 0Bh         ; Current location LOW
                Out     DX, AL

                Mov     EAX, [SI+4Ch]
                Mov     [SI+2Ch], EAX

                        ; EAX   = OOOOOOOO OOOOOOOO OOOOOOOO OOOOOOOO
                        ; Req:    xxxOOOOO OOOOOOOO OOOOOOOF FFFFFFFF
                Call    GUSGetAddress

                Mov     DI, AX

                Inc     DX
                Out     DX, AX
                Dec     DX

                Mov     AL, 0Ah         ; Current location HIGH
                Out     DX, AL

                SHR     EAX, 16
                Inc     DX
                Out     DX, AX
                Call    GUSDelay
                Out     DX, AX
                Dec     DX

                Mov     AL, 0Bh
                Out     DX, AL

                Mov     AX, DI
                Inc     DX
                Out     DX, AX
                Dec     DX

SetGUSRegisters9:
                Test    CL, 64                  ; New volume??
                JZ      SetGUSPanning

SetGUSRegisters23:
                Xor     BX, BX
                Test    CH, 8
                JNZ     SetGUSRegistersMuted

                Mov     BL, Byte Ptr [SI+20h]   ; BL = volume, 0->128

SetGUSRegistersMuted:
                Call    SetGUSVolume


SetGUSPanning:
                Test    CH, 128                 ; New panning?
                JZ      SetGUSRegisters5

                Mov     AL, 0Ch                 ; Set panning.
                Out     DX, AL

                Test    CS:Stereo, 1
                JZ      SetGUSRegisters3

                Mov     AL, [SI+37h]
                Cmp     AL, 100
                JNE     SetGUSRegisters4

SetGUSRegisters3:
                Mov     AL, 32                  ; Surround goes to mono :(

SetGUSRegisters4:                               ; AL = 0->64
                ShR     AL, 1   ; AL = 0->32
                Sub     AL, 1
                AdC     AL, 0   ; AL = 0->31
                ShR     AL, 1

                Add     DL, 2
                Out     DX, AL
                Sub     DL, 2

SetGUSRegisters5:
                                                ; Now for control register.
                                                ; If CH | 2, then turn rego OFF
                                                ; If CH | 5, then turn rego ON
                                                ; If CL | 1, then check channel
                Test    CH, 2
                JNZ     SetGUSRegisters11

                Test    CH, 5
                JNZ     SetGUSRegisters12

                Test    CL, 1
                JZ      SetGUSRegisters13

                Mov     AL, 80h                 ; Read voice control
                Out     DX, AL

                Add     DL, 2
                In      AL, DX
                Sub     DL, 2

                Test    AL, 1
                JZ      SetGUSRegisters13

                Xor     BX, BX
                Call    SetGUSVolume

                Jmp     SetGUSRegisters14

SetGUSRegisters11:
                                                ; Turn off.
                Xor     AL, AL
                Out     DX, AL                  ; AL = 0 (Mode control)
                Mov     AL, 2
                Add     DL, 2

                Mov     AH, [SI+18h]            ; 16 bit?
                Add     AH, AH
                Or      AL, AH

                Out     DX, AL
                Call    GUSDelay
                Out     DX, AL
                Sub     DL, 2

                Xor     BX, BX
                Call    SetGUSVolume

SetGUSRegisters14:
                Test    CL, 1
                JZ      SetGUSRegisters13

                Xor     CX, CX                  ; Turn off channel
                Test    Byte Ptr [SI+3Ah], 80h
                JNZ     SetGUSRegisters13

                Mov     BX, [SI+38h]
                And     Byte Ptr [BX], Not 4    ; Signify channel off

                Jmp     SetGUSRegisters13

SetGUSRegisters12:                              ; Turn on
                Xor     AL, AL
                Out     DX, AL

                Mov     AL, [SI+0Ah]

                Cmp     CS:Convert16To8Bit, 0
                JNZ     SetGUSRegistersNo16Bit

                Mov     AH, [SI+18h]            ; 16 bit?
                Add     AH, AH
                Or      AL, AH

SetGUSRegistersNo16Bit:
                Test    CL, 1
                JNZ     SetGUSRegisters15

                Mov     AL, 2
                Xor     CX, CX

SetGUSRegisters15:
                Add     DL, 2
                Out     DX, AL
                Call    GUSDelay
                Out     DX, AL

SetGUSRegisters13:
                And     CX, 0111100010011111b   ; Turns off:
                                                ; 1) Freq, pan & vol recalc
                                                ; 2) New note/note stop/loop cha

                Mov     [SI], CX

                Add     SI, SLAVECHANNELSIZE

;                Call    CheckMIDI

                Pop     CX
                Pop     AX

                Inc     AX
                Dec     CX
                JNZ     SetGUSRegisters1

                Ret


EndP            SetGUSRegisters

