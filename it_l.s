;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Info Line Module - Playing info updates / other messages                    �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

%include "switch.inc"

;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Externals                                                                   �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Segment         Glbl BYTE Public 'Code'
                extern    CurrentMode:Byte
EndS

                extern    I_ShowSamplePlay:Far
                extern    I_ShowInstrumentPlay:Far

                extern    S_UpdateScreen:Far
                extern    S_DrawString:Far
                extern    S_SetDirectMode:Far
                extern    S_GetDestination:Far

                extern    Music_GetPlayMode:Far
                extern    Music_Poll:Far
                extern    Music_GetSlaveChannelInformationTable:Far

%IF  NETWORKENABLED
                extern    Network_Poll:Far
%ENDIF 

                extern    PE_ShowOrder:Far
                extern    PE_FillSpeedTempo:Far
                extern    PE_GetMaxOrder:Far
                extern    Glbl_TutorialHandler:Far

;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Globals                                                                     �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

                Global  UpdateInfoLine:Far
                Global  IdleUpdateInfoLine:Far
                Global  ClearInfoLine:Far
                Global  SetInfoLine:Far, SetInfoLine2:Far
                Global  StartClock:Far
                Global  GlobalStartTime:Far
                Public  ShowUsageTime
                Public  InitTimerHandler
                Public  UnInitTimerHandler
                Public  GetTimerCounter

;袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�

Segment                 InfoLine DWORD Public 'Code' USE16
                        ;Assume CS:InfoLine, DS:InfoLine

CREATENEWLOGFILE        EQU     0
%include "debug.inc"

;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Variables                                                                   �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

SLAVECHANNELSIZE        =       128

OldTimerHandler         DD      0
TimerCounter            DD      0
PlaybackTimer           DD      0

InfoLineText            DD      0
InfoLineDelay           DW      0
InfoLineVariable        DW      0

; Colouring for ZaStaR
; PatternPlayMsg          DB      "Playing, Pattern: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, ", Row: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, "/", 0FDh, "D", 0FFh, 13, " ", 0
; SongPlayMsg             DB      "Playing, Order: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, "/", 0FDh, "D, Pattern: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, ", Row: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, "/", 0FDh, "D", 0FFh, 6, " ", 0

NoSoundDriverMsg        DB      "Error: No sound driver loaded.", 0
PatternPlayMsg          DB      "Playing, Pattern: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, ", Row: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, "/", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, ", ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, " Channels", 0FFh, 10, " ", 0
SongPlayMsg             DB      "Playing, Order: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, "/", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, ", Pattern: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, ", Row: ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, "/", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, ", ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, " Channels", 0FFh, 10, " ", 0
ChannelMsg              DB      "Playing, ", 0FEh, 23h, 0FDh, "D", 0FEh, 20h, " Channels", 0
EmptyMsg                DB      0
TimeMsg                 DB      " Time    ", 0FDh, "D:"
Minutes                 DB      "00:"
Seconds                 DB      "00", 0
DisplayChannelMsg       DB      0
ShowUsageTime           DB      1


;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Functions                                                                   �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc TimerInterruptHandler

                Sub     CS:InfoLineDelay, 1
                AdC     CS:InfoLineDelay, 0

                Inc     CS:TimerCounter
                Jmp     [CS:OldTimerHandler]

;EndP            TimerInterruptHandler

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc InitTimerHandler Far

                Push    DS

                Trace   " - Installing new timer interrupt"

                Xor     AX, AX
                Mov     DS, AX

                Mov     AX, CS
                ShL     EAX, 16
                Mov     AX, Offset TimerInterruptHandler

                ClI
                XChg    EAX, [DS:20h]
                Mov     [CS:OldTimerHandler], EAX
                StI

                Pop     DS
                Ret

;EndP            InitTimerHandler

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc UninitTimerHandler Far

                Push    DS

                Xor     AX, AX
                Mov     DS, AX

                Mov     EAX, [CS:OldTimerHandler]
                ClI
                Mov     [DS:20h], EAX
                StI

                Pop     DS
                Ret

;EndP            UninitTimerHandler

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc FillToEOL

                Push    ES
                Mov     AX, ' ' + 2000h
                Call    S_GetDestination

UpdateInfoLineEOL:
                Cmp     DI, (61+9*80)*2
                JAE     UpdateInfoLineEOL2

                StosW
                Jmp     UpdateInfoLineEOL

UpdateInfoLineEOL2:
                Pop     ES
                Ret

;EndP            FillToEOL

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc UpdateInfoLine Far

                Push    DS
                Push    SI

                Push    Glbl
                Pop     DS
                        ;Assume DS:Glbl

                Cmp     CurrentMode, 200
                JAE     UpdateInfoLineEnd2

                Push    CS
                Pop     DS

                Mov     DI, (2+9*80)*2

                Cmp     InfoLineDelay, 0
                JE      UpdateInfoLine1
;                Mov     CX, InfoLineDelay
;                JCXZ    UpdateInfoLine1
;
;                Dec     InfoLineDelay

UpdateInfoLine2:
                LDS     SI, InfoLineText
                Mov     CX, DS
                JCXZ    UpdateInfoLineEnd

                Mov     AX, CS:InfoLineVariable
                Push    AX

                Mov     AH, 20h
                Call    S_DrawString
                Call    FillToEOL

                Pop     AX

                Call    Music_GetPlayMode
;                Call    ShowTime
                Jmp     UpdateInfoLine6

UpdateInfoLine1:
; ******
                Call    Music_GetSlaveChannelInformationTable
                                                        ; DS:SI points to tables
                                                        ; CX = numchannels.
                Xor     DI, DI                          ; DI = counter of
                                                        ;      currently act.
                                                        ;      channels.
CountChannels1:
                Mov     AX, [SI]
                Test    AH, 8
                JNZ     CountChannels2

                And     AX, 1
                Add     DI, AX

CountChannels2:
                Add     SI, SLAVECHANNELSIZE
                Loop    CountChannels1

                Push    CS
                Pop     DS
; ******
                Call    Music_GetPlayMode
                                        ; AX = playmode
                                        ; BX = row
                                        ; CX = pattern
                                        ; DX = order
                                        ; SI = max row.

                Push    AX
                Push    DI
                Cmp     AX, 1
                JB      UpdateInfoLineChanMsg
                Push    SI
                Push    BX              ; BX = row
                Push    CX              ; CX = pattern
                JE      UpdateInfoLine3
                JA      UpdateInfoLine4

UpdateInfoLineChanMsg:
                Mov     SI, Offset ChannelMsg
                Cmp     DI, 1
                JA      UpdateInfoLineChanMsg2

                Mov     SI, Offset EmptyMsg

UpdateInfoLineChanMsg2:
                Mov     DI, (2+9*80)*2
                Mov     AH, 20h
                Call    S_DrawString
                Call    FillToEOL
                Pop     AX

                Pop     AX
                Mov     DisplayChannelMsg, 1
                Jmp     UpdateInfoLine7

UpdateInfoLineEnd:
                Call    ShowTime

UpdateInfoLineEnd2:
                Pop     SI
                Pop     DS

                Mov     AX, 1
                Ret

UpdateInfoLine3:
                Mov     DI, (2+9*80)*2
                Mov     SI, Offset PatternPlayMsg
                Mov     AH, 20h
                Call    S_DrawString
                Call    FillToEOL

                Add     SP, 8
                Jmp     UpdateInfoLine5

UpdateInfoLine4:
                Call    PE_GetMaxOrder

                Push    AX
                Push    DX

                Mov     DI, (2+9*80)*2
                Mov     SI, Offset SongPlayMsg
                Mov     AH, 20h
                Call    S_DrawString
                Call    FillToEOL

                Add     SP, 12

UpdateInfoLine5:
                Pop     AX

UpdateInfoLine6:
;                Cmp     AX, 2
;                JNE     UpdateInfoLine7


UpdateInfoLine7:
                Call    ShowTime
                Call    UpdatePointers

                Pop     SI
                Pop     DS

                Mov     AX, 1
                Ret

;EndP            UpdateInfoLine
                ;Assume DS:Nothing

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc IdleUpdateInfoLine Far

                Call    Music_Poll

%IF  TUTORIAL
%ELSE
                Mov     AL, 1
                Call    S_SetDirectMode
%ENDIF 

                Call    UpdateInfoLine

%IF  TUTORIAL
                Call    Glbl_TutorialHandler
%ENDIF 

%IF  TUTORIAL
                Call    S_UpdateScreen
%ELSE
                Mov     AL, 0
                Call    S_SetDirectMode
%ENDIF 

%IF  NETWORKENABLED
                Jmp     Network_Poll
%ELSE
                Xor     AX, AX
                Ret
%ENDIF 

;EndP            IdleUpdateInfoLine

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc ClearInfoLine Far

                Mov     DWord Ptr [CS:InfoLineText], 0

                Ret

;EndP            ClearInfoLine

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc SetInfoLine Far                         ; DS:SI points to msg.

                Mov     CS:InfoLineDelay, 20

SetInfoLineChain:
                Mov     Word Ptr [CS:InfoLineText], SI
                Mov     Word Ptr [CS:InfoLineText+2], DS
                Mov     Word Ptr [CS:InfoLineVariable], AX

                Ret

;EndP            SetInfoLine

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc SetInfoLine2 Far                         ; DS:SI points to msg.

                Mov     CS:InfoLineDelay, BX
                Jmp     SetInfoLineChain

;EndP            SetInfoLine2

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc UpdatePointers                  ; BX = row, CX = pattern

                Mov     SI, Glbl
                Mov     DS, SI
                        ;Assume DS:Glbl

                Mov     AH, CurrentMode

;                And     AH, AH
;                JZ      UpdatePointers6

                Push    AX
                Push    BX
                Push    CX

;                Call    S_GetDestination                ; Get ES.
                Call    PE_FillSpeedTempo

                Pop     CX
                Pop     BX
                Pop     AX

UpdatePointers6:
;                Cmp     AH, 2
;                JNE     UpdatePointers1
;
;                Cmp     AL, 1
;                JB      UpdatePointersEnd
;
;                Call    PE_ShowPatternRow
;                Ret
;
; UpdatePointers1:
                Cmp     AL, 2                   ; Playmode.
                JNE     UpdatePointers3

                Cmp     AH, 11
                JE      UpdatePointers2
                Cmp     AH, 21
                JNE     UpdatePointers3

UpdatePointers2:
                Call    PE_ShowOrder

                Ret

UpdatePointers3:
                Cmp     AH, 3
                JNE     UpdatePointers4

                Call    I_ShowSamplePlay
                Ret

UpdatePointers4:
                Cmp     AH, 4
                JNE     UpdatePointers5

                Call    I_ShowInstrumentPlay
                Ret

UpdatePointers5:
UpdatePointersEnd:
                Ret

;EndP            UpdatePointers
                ;Assume DS:Nothing

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc ShowTime

                PushA
                Push    DS

                Push    CS
                Pop     DS
                        ;Assume DS:InfoLine

                Cmp     AX, 2
                Mov     EAX, [TimerCounter]
                JE      ShowTime3

                Cmp     ShowUsageTime, 0
                JE      ShowTime2

                Jmp     ShowTime4

ShowTime3:
                Sub     EAX, [PlaybackTimer]

ShowTime4:
                Mov     EDX, 3600
                Mul     EDX
                ShRD    EAX, EDX, 16
                ShR     EDX, 16
                JNZ     ShowTime2
                                        ; EAX = number of seconds
                Mov     EBX, 60
                Div     EBX             ; EAX = minutes, EDX = seconds

                Push    EDX
                Xor     EDX, EDX
                Div     EBX             ; EAX = hours, EDX = minutes

                Pop     ECX
                Push    AX              ; Hours on stack, CX = seconds, DX = min
                Mov     BL, 10

                Mov     AX, DX
                Div     BL
                Add     AX, 3030h
                Mov     [Word Ptr Minutes], AX

                Mov     AX, CX
                Div     BL
                Add     AX, 3030h
                Mov     [Word Ptr Seconds], AX

                Mov     SI, Offset TimeMsg
                Mov     DI, (62+9*80)*2
                Mov     AH, 20h
                Call    S_DrawString
                Pop     AX              ; To clear stack

ShowTime2:
                Pop     DS
                PopA

                Ret

;EndP            ShowTime
                ;Assume DS:Nothing

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc StartClock Far

                Push    EAX
                Mov     EAX, CS:TimerCounter
                Mov     [CS:PlaybackTimer], EAX
                Pop     EAX

                Ret

;EndP            StartClock

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

Proc GetTimerCounter Far

                Mov     EAX, [CS:TimerCounter]
                Ret

;EndP            GetTimerCounter

;袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�

EndS

;袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�

End
