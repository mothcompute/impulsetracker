;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³ Global Key Handler                                                          ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

%include "switch.inc"
%include "network.inc"

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³ Externals                                                                   ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

Segment         Pattern BYTE Public 'Code'
                extern    LastInstrument:Byte
                extern    Order:Word
                extern    MaxRow:Word
                extern    NumberOfRows:Word
                extern    PatternNumber:Word
EndS

Segment         Inst BYTE Public 'Code'
                extern    SampleNumber:Byte
                extern    InstrumentScreen:Word
EndS

Segment         Object1 BYTE Public 'Data'
EndS

                extern    D_InitLoadModule:Far
                extern    D_InitLoadSamples:Far
                extern    D_InitLoadInstruments:Far
                extern    Display_SelectDisplayList:Far

                extern    M_Object1List:Far

                extern    I_ClearTables:Far

                extern    Music_GetInstrumentMode:Far
                extern    Music_GetPlayMode:Far
                extern    Music_PlayPattern:Far
                extern    Music_PlaySong:Far
                extern    Music_Stop:Far
                extern    Music_ToggleChannel:Far
                extern    Music_GetSlaveChannelInformationTable:Far
                extern    Music_IncreaseSpeed:Far
                extern    Music_DecreaseSpeed:Far
                extern    Music_IncreaseVolume:Far
                extern    Music_DecreaseVolume:Far
                extern    Music_GetSongSegment:Far
                extern    Music_GetDriverScreen:Far

                extern    SetInfoLine:Far

                extern    PE_GetCurrentPattern:Far
                extern    PE_SetPatternModified:far

                extern    O1_InstrumentListGeneral:Far
                extern    O1_InstrumentListVolume:Far
                extern    O1_InstrumentListPanning:Far
                extern    O1_InstrumentListPitch:Far

                extern    O1_KeyboardList:Far
                extern    O1_LoadSampleList:Far
                extern    O1_OrderPanningList:Far
                extern    O1_PatternEditList:Far
                extern    O1_PEConfigList:Far
                extern    O1_SampleList:Far
                extern    O1_LoadModuleList:Far
                extern    O1_ViewInstrumentLibrary:Far
                extern    O1_SaveModuleList:Far
                extern    O1_LoadInstrumentList:Far
                extern    O1_MessageList:Far
                extern    O1_OrderVolumeList:Far
                extern    O1_DisplayList:Far
                extern    I_DrawWaveForm:Far
                extern    S_DefineSmallNumbers:Far
                extern    S_SaveScreen:Far, S_RestoreScreen:Far
                extern    RestoreMouse:Far, RestoreMouseGraphics:Far
                extern    D_ClearFileSpecifier:Far
                extern    O1_ConfigureITList:Far
                extern    O1_ViewSampleLibrary:Far
                extern    O1_ConfigurePaletteList:Far
                extern    O1_MIDIScreen:Far
                extern    O1_TimerList:Far
                extern    I_MapEnvelope:Far
                extern    NewCharacterSet:Far
                extern    S_GetDestination:Far
                extern    S_DefineHiASCII:Far

%IF  MEMORYDEBUG
                extern    O1_DebugList:Far
%ENDIF 

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³ Globals                                                                     ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

                Global  Glbl_Ctrl_F1:Far
                Global  Glbl_Ctrl_F3:Far
                Global  Glbl_Ctrl_F4:Far
                Global  Glbl_Ctrl_F5:Far
                Global  Glbl_Ctrl_F12:Far
                Global  Glbl_F2:Far
                Global  Glbl_F3:Far
                Global  Glbl_F4:Far
                Global  Glbl_F4_2:Far
                Global  Glbl_F5:Far
                Global  Glbl_F6:Far
                Global  Glbl_Shift_F1:Far
                Global  Glbl_Shift_F6:Far
                Global  Glbl_Shift_F9:Far
                Global  Glbl_F8:Far
                Global  Glbl_F9:Far
                Global  Glbl_F10:Far
                Global  Glbl_F11:Far
                Global  Glbl_F12:Far
                Global  Glbl_Alt_F1:Far
                Global  Glbl_Alt_F2:Far
                Global  Glbl_Alt_F3:Far
                Global  Glbl_Alt_F4:Far
                Global  Glbl_Alt_F5:Far
                Global  Glbl_Alt_F6:Far
                Global  Glbl_Alt_F7:Far
                Global  Glbl_Alt_F8:Far
                Global  Glbl_LeftBrace:Far
                Global  Glbl_RightBrace:Far
                Global  Glbl_LeftSquareBracket:Far
                Global  Glbl_RightSquareBracket:Far
                Global  Glbl_LoadSample:Far
                Global  Glbl_LoadInstrument:Far
                Global  Glbl_GetHeaderMode:Far
                Global  Glbl_SetCurrentMode:Far
                Global  Glbl_GetCurrentMode:Far
                Global  Glbl_SaveMode:Far
                Global  Glbl_RestoreMode:Far

%IF  TIMERSCREEN
                Global  Glbl_TimerScreen:Far
%ENDIF 

                Global  CurrentMode:Byte

                Public  Glbl_F2_2
                Public  Glbl_F11_2

%IF  MEMORYDEBUG
                Global  Glbl_Debug:Far
%ENDIF 
                Global  Glbl_DriverScreen:Far


;ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

Segment                 Glbl BYTE Public 'Code'
                        ;Assume CS:Glbl, DS:Nothing

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³ Variables                                                                   ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

SLAVECHANNELSIZE        EQU     128

CurrentMode             DB      0               ; 2 = Pattern edit
                                                ; 3 = Sample list
                                                ; 4 = Instrument list
                                                ; 5 = Info list
                                                ; 6 = configure pattern edit
                                                ; 9 = load list
                                                ; 10 = save list
                                                ; 11 = order/panning list
                                                ; 12 = configure IT list
                                                ; 13 = load sample list.
                                                ; 14 = palette config list.
                                                ; 15 = load instrument list
                                                ; 16 = message list
                                                ; 21 = order/volume list
                                                ; 22 = debug
                                                ; 23 = timer
                                                ; 24 = Network screen
                                                ; 31 = MIDI list
                                                ; 1 = Keyboard list
                                                ; 0 = Nothing in particular :)
                                                ; 100 = Driver Screen
                                                ; 200 = Full screen display
                                                ; 201 = VGA display

CurrentMode2    DB      0
CurrentList     DW      0
CurrentListSegment DW   0

TempoSetMsg     DB      "Tempo set to ", 0FDh, "D beats per minute", 0
SpeedSetMsg     DB      "Speed set to ", 0FDh, "D frames per row", 0
VolumeSetMsg    DB      "Global Volume set to ", 0FDh, "D", 0

InstrumentScreenTable   Label
        DW      Offset O1_InstrumentListGeneral
        DW      Offset O1_InstrumentListVolume
        DW      Offset O1_InstrumentListPanning
        DW      Offset O1_InstrumentListPitch

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³ Functions                                                                   ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

Proc Glbl_F2 Far

                Call    Glbl_SampleToInstrument
                Cmp     CS:CurrentMode, 2

                JE      Glbl_F2_1

Glbl_F2_2:
                Call    S_DefineSmallNumbers

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 2

                Mov     DX, Offset O1_PatternEditList

                Ret

Glbl_F2_1:
                Mov     CS:CurrentMode, 6

                Mov     AX, Pattern
                Mov     DS, AX
                        ;Assume DS:Pattern

                Mov     AX, MaxRow
                Inc     AX
                Mov     NumberOfRows, AX

                Mov     DI, Offset O1_PEConfigList
                Mov     CX, 0FFFFh
                Call    M_Object1List
                Call    PE_SetPatternModified

                Mov     AX, Pattern
                Mov     DS, AX
                        ;Assume DS:Pattern

                Mov     BX, NumberOfRows
                Dec     BX
                Mov     MaxRow, BX

%IF  NETWORKENABLED
                Call    Network_GetSendQueue
                JZ      Glbl_F2_Network

                Mov     AX, NETWORK_SETPATTERNLENGTH*100h ; Destination ALL
                StosW
                Mov     AH, BL
                Mov     AL, [Byte Ptr PatternNumber]
                StosW

Glbl_F2_Network:
                Call    Network_FinishedSendQueue
%ENDIF 
                Mov     CS:CurrentMode, 2

                Mov     AX, 1
                Ret

;EndP            Glbl_F2
                ;Assume DS:Nothing

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_F3 Far

                Call    I_DrawWaveForm

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 3

                Mov     DX, Offset O1_SampleList
                Ret

;EndP            Glbl_F3

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_F4 Far

                                        ; Init SampleNumber
                Call    Glbl_SampleToInstrument

                Mov     AX, Pattern
                Mov     DS, AX
                        ;Assume DS:Pattern

                Mov     BL, LastInstrument
                And     BL, BL
                JNZ     Glbl_F4_1

                Mov     LastInstrument, 1

Glbl_F4_1:
                Mov     AX, Inst
                Mov     DS, AX
                        ;Assume DS:Inst
                Mov     SampleNumber, BL

Proc Glbl_F4_2 Far

                Call    I_MapEnvelope

                Mov     DI, InstrumentScreen
                Add     DI, DI
                Mov     DX, [DI+InstrumentScreenTable]

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 4

                Ret

;EndP            Glbl_F4_2

;EndP            Glbl_F4
                ;Assume DS:Nothing

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_F5 Far

                Cmp     CS:CurrentMode, 5
                JE      Glbl_F5_1

                Call    S_DefineSmallNumbers

                Call    Music_GetPlayMode
                Test    AX, AX
                JNZ     Glbl_F5_4

                Call    Music_GetSlaveChannelInformationTable

Glbl_F5_3:
                Test    Byte Ptr [SI], 1
                JNZ     Glbl_F5_4

                Add     SI, SLAVECHANNELSIZE
                Loop    Glbl_F5_3

                Call    I_ClearTables

                Xor     AX, AX
                Call    Music_PlaySong

Glbl_F5_4:
                Jmp     Display_SelectDisplayList

Glbl_F5_1:
                Call    Music_GetPlayMode
                And     AX, AX
                JNZ     Glbl_F5_2

                Call    I_ClearTables

                Xor     AX, AX
                Call    Music_PlaySong

Glbl_F5_2:
                Mov     AX, 1
                Ret

;EndP            Glbl_F5

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_F6 Far

                Call    I_ClearTables

                Call    PE_GetCurrentPattern
                Xor     CX, CX
                Call    Music_PlayPattern

                Mov     AX, 1
                Ret

;EndP            Glbl_F6

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_LoadSample Far

                Call    D_InitLoadSamples

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 13

                Mov     DX, Offset O1_LoadSampleList
                Ret

;EndP            Glbl_LoadSample

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_LoadInstrument Far

                Call    D_InitLoadInstruments

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 15

                Mov     DX, Offset O1_LoadInstrumentList
                Ret

;EndP            Glbl_LoadInstrument

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Shift_F1 Far

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 31

                Mov     DX, Offset O1_MIDIScreen
                Ret

;EndP            Glbl_Shift_F1

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Shift_F9 Far

                Call    S_DefineHIASCII

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 16

                Mov     DX, Offset O1_MessageList
                Ret

;EndP            Glbl_Shift_F9

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Shift_F6 Far

                Call    I_ClearTables

                Mov     AX, Pattern
                Mov     DS, AX
                        ;Assume DS:Pattern
                Mov     AX, Order

                Call    Music_PlaySong

                Mov     AX, 1
                Ret

;EndP            Glbl_Shift_F6
                ;Assume DS:Nothing

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_F8 Far

                Call    Music_Stop

                Mov     AX, 1
                Ret

;EndP            Glbl_F8

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_F9 Far

                Call    D_InitLoadModule

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 9

                Mov     DX, Offset O1_LoadModuleList

                Mov     DS, CX
                Mov     BX, DX
                Mov     Word Ptr [BX], 12

                Ret

;EndP            Glbl_F9

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_F10 Far

                Call    D_InitLoadModule

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 10

                Mov     DX, Offset O1_SaveModuleList

                Mov     DS, CX
                Mov     BX, DX
                Mov     Word Ptr [BX], 15

                Call    D_ClearFileSpecifier

                Ret

;EndP            Glbl_F10

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_F11 Far

                Cmp     CS:CurrentMode, 11
                JE      Glbl_F11_1

Glbl_F11_2:
                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     DX, Offset O1_OrderPanningList

                Mov     CS:CurrentMode, 11
                Ret

Glbl_F11_1:
                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     DX, Offset O1_OrderPanningList

                Mov     CS:CurrentMode, 21
                Mov     DX, Offset O1_OrderVolumeList
                Ret

;EndP            Glbl_F11

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_F12 Far

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 12

                Mov     DX, Offset O1_ConfigureITList
                Ret

;EndP            Glbl_F12

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Ctrl_F1 Far

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 1

                Mov     DX, Offset O1_KeyboardList
                Ret

;EndP            Glbl_Ctrl_F1

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Ctrl_F3 Far

                Call    D_InitLoadSamples

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 13

                Mov     DX, Offset O1_ViewSampleLibrary
                Ret

;EndP            Glbl_Ctrl_F3

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Ctrl_F4 Far

                Call    D_InitLoadInstruments

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 15

                Mov     DX, Offset O1_ViewInstrumentLibrary
                Ret

;EndP            Glbl_Ctrl_F4

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Ctrl_F5 Far

                Call    I_ClearTables

                Xor     AX, AX
                Call    Music_PlaySong

                Mov     AX, 1
                Ret

;EndP            Glbl_Ctrl_F5

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Ctrl_F12 Far

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 14

                Mov     DX, Offset O1_ConfigurePaletteList

                Ret

;EndP            Glbl_Ctrl_F12

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_GetHeaderMode Far

                Push    DS
                Mov     AX, Pattern
                Mov     DS, AX
                        ;Assume DS:Pattern
                Mov     AL, LastInstrument
                Pop     DS

                Xor     AH, AH

                Cmp     CS:CurrentMode, 3               ; Sample list
                JE      Glbl_GetHeaderMode1

                Cmp     CS:CurrentMode, 13              ; Sample load list
                JE      Glbl_GetHeaderMode1

                Cmp     CS:CurrentMode, 4
                JE      Glbl_GetHeaderMode2

                Call    Music_GetInstrumentMode

Glbl_GetHeaderMode1:
                Ret

Glbl_GetHeaderMode2:
                Push    DS
                Push    AX

                Mov     AX, Inst
                Mov     DS, AX
                        ;Assume DS:Inst

                Pop     AX
                Mov     AL, SampleNumber

                Pop     DS
                Ret

;EndP            Glbl_GetHeaderMode
                ;Assume DS:Nothing

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_SetCurrentMode Far

                Mov     CS:CurrentMode, AL

                Ret

;EndP            Glbl_SetCurrentMode

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_GetCurrentMode Far         ; Returns AL

                Mov     AL, CS:CurrentMode

                Ret

;EndP            Glbl_GetCurrentMode

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Alt_F1 Far

                Mov     AX, 0
                Call    Music_ToggleChannel

                Mov     AX, 1
                Ret

;EndP            Glbl_Alt_F1

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Alt_F2 Far

                Mov     AX, 1
                Call    Music_ToggleChannel

                Mov     AX, 1
                Ret

;EndP            Glbl_Alt_F2

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Alt_F3 Far

                Mov     AX, 2
                Call    Music_ToggleChannel

                Mov     AX, 1
                Ret

;EndP            Glbl_Alt_F3

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Alt_F4 Far

                Mov     AX, 3
                Call    Music_ToggleChannel

                Mov     AX, 1
                Ret

;EndP            Glbl_Alt_F4

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Alt_F5 Far

                Mov     AX, 4
                Call    Music_ToggleChannel

                Mov     AX, 1
                Ret

;EndP            Glbl_Alt_F5

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Alt_F6 Far

                Mov     AX, 5
                Call    Music_ToggleChannel

                Mov     AX, 1
                Ret

;EndP            Glbl_Alt_F6

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Alt_F7 Far

                Mov     AX, 6
                Call    Music_ToggleChannel

                Mov     AX, 1
                Ret

;EndP            Glbl_Alt_F7

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_Alt_F8 Far

                Mov     AX, 7
                Call    Music_ToggleChannel

                Mov     AX, 1
                Ret

;EndP            Glbl_Alt_F8

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_LeftBrace Far

                Push    CS
                Pop     DS

                Call    Music_IncreaseSpeed
                Mov     SI, Offset SpeedSetMsg
                Call    SetInfoLine

                Mov     AX, 1
                Ret

;EndP            Glbl_LeftBrace

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_RightBrace Far

                Push    CS
                Pop     DS

                Call    Music_DecreaseSpeed
                Mov     SI, Offset SpeedSetMsg
                Call    SetInfoLine

                Mov     AX, 1
                Ret

;EndP            Glbl_RightBrace

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_LeftSquareBracket Far

                Push    CS
                Pop     DS

                Call    Music_DecreaseVolume

                Mov     SI, Offset VolumeSetMsg
                Call    SetInfoLine

                Mov     AX, 1
                Ret

;EndP            Glbl_LeftSquareBracket

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_RightSquareBracket Far

                Push    CS
                Pop     DS

                Call    Music_IncreaseVolume

                Mov     SI, Offset VolumeSetMsg
                Call    SetInfoLine

                Mov     AX, 1
                Ret

;EndP            Glbl_RightSquareBracket

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_SaveMode Far

;                Call    S_GetDestination
;                Mov     AX, 0B800h
;                Mov     ES, AX
;                Call    RestoreMouse

                Call    S_SaveScreen

                Mov     AL, CurrentMode
                Mov     CurrentMode2, AL

                Mov     BP, SP
                Mov     AX, [BP+16]
                Mov     CurrentList, AX
                Mov     AX, [BP+18]
                Mov     CurrentListSegment, AX
                Mov     CurrentMode, 0

                Ret

;EndP            Glbl_SaveMode

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_RestoreMode Far

;                Call    NewCharacterSet

                Call    S_RestoreScreen

                Mov     AL, CurrentMode2
                Mov     CurrentMode, AL

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, CurrentListSegment
                Mov     DX, CurrentList

                Ret

;EndP            Glbl_RestoreMode

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

%IF  MEMORYDEBUG

Proc Glbl_Debug Far

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 22

                Mov     DX, Offset O1_DebugList
                Ret

;EndP            Glbl_Debug

%ENDIF 

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_SampleToInstrument

                Cmp     CS:CurrentMode, 3
                JNE     Glbl_SampleToInstrument1

                Call    Music_GetSongSegment
                Mov     DS, AX
                        ;Assume DS:Nothing

                Test    Byte Ptr [DS:2Ch], 4
                JZ      Glbl_SampleToInstrument1

                Mov     AX, Pattern
                Mov     ES, AX
                        ;Assume ES:Pattern

                Mov     AH, ES:LastInstrument
                Mov     BX, [DS:64712]  ; Offset of first instrument

                                        ; Search for sample in tables.
                Mov     DX, 99

Glbl_SampleToInstrument2:
                Push    BX

                Add     BX, 41h         ; To note/sample tables
                Mov     CX, 120

Glbl_SampleToInstrument4:
                Cmp     [BX], AH
                JE      Glbl_SampleToInstrument3
                Add     BX, 2
                Loop    Glbl_SampleToInstrument4

                Pop     BX
                Add     BX, 554         ; Length of instrument
                Dec     DX
                JNZ     Glbl_SampleToInstrument2

                Ret

Glbl_SampleToInstrument3:
                Pop     BX

                Mov     AL, 100
                Sub     AL, DL
                Mov     ES:LastInstrument, AL

Glbl_SampleToInstrument1:
                Ret

;EndP            Glbl_SampleToInstrument
                ;Assume ES:Nothing

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

%IF  TIMERSCREEN

Proc Glbl_TimerScreen Far

                Mov     AX, 5
                Mov     SI, 1
                Mov     CX, Object1
                Mov     CS:CurrentMode, 23

                Mov     DX, Offset O1_TimerList
                Ret

;EndP            Glbl_TimerScreen

%ENDIF 

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Proc Glbl_DriverScreen Far

                Call    Music_GetDriverScreen
                JC      Glbl_DriverScreen1

                Mov     CurrentMode, 100

Glbl_DriverScreen1:
                Ret

;EndP            Glbl_DriverScreen

;ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

EndS

;ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ

End
