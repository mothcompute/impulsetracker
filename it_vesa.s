;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Vesa Module                                                                 �
;쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Functions provided:                                                         �
;�   DetectVESA                                                                �
;�   SetVESAMode                                                               �
;�                                                                             �
;쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� DetectVESA                                                                  �
;�  - No parameters required                                                   �
;�  - Detects the presence of a VESA driver                                    �
;�  - Returns carry SET if no VESA driver found                                �
;�  - Returns carry CLEAR if VESA driver found                                 �
;�  - All registers preserved                                                  �
;쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� SetVESAMode                                                                 �
;�  - Requires AX = VESA Mode                                                  �
;�  - Returns carry SET if VESA Mode isn't supported                           �
;�  - Returns carry CLEAR if VESA mode change OK                               �
;�  - All registers preserved                                                  �
;쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� VESAGetInfo                                                                 �
;�  - Requires AX = VESA Mode to get information on                            �
;�  - Returns carry SET if VESA Mode isn't supported                           �
;�  - Returns carry clear if information is OK                                 �
;�  - Returns ES:DI to Table, all other registers preserved                    �
;�                                                                             �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

%include "switch.inc"

%IF SPECTRUMANALYSER

;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Externals                                                                   �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�


;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Globals                                                                     �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�


;袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�

;Segment                 Vesa BYTE Public 'Code' USE16
%warning "USE16"
section .text

;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Variables                                                                   �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

VESAInformationTable:;    Label
VESASignature           DB      4 Dup (0)
VESAVersion             DW      0
VESAOEMStringPrt        DD      0
VESACapabilities        DD      0
VESAVideoModePtr        DD      0
VESATotalMemory         DW      0
                        DB      256-($-VESAInformationTable) Dup(0)

VESAModeInformationTable:; Label
                        DB      256-($-VESAModeInformationTable) Dup (0)

ModeInformationStructure        Struc
        ModeAtributes           DW      ?
        WindowAAtributes        DB      ?
        WindowBAttributes       DB      ?
        WindowGranularity       DW      ?
        WindowSize              DW      ?
        WindowASegment          DW      ?
        WindowBSegment          DW      ?
        WindowFunction          DD      ?
        BytesPerScanLine        DW      ?

        XResolution             DW      ?
        YResolution             DW      ?
        XCharacterSize          DB      ?
        YCharacterSize          DB      ?
        NumberOfPlanes          DB      ?
        BitsPerPixel            DB      ?
        NumberOfBanks           DB      ?
        MemoryModel             DB      ?
        BankSize                DB      ?
        NumberOfImagePages      DB      ?
        Reserved                DB      ?

        RedMaskSize             DB      ?
        RedFieldPosition        DB      ?
        GreenMaskSize           DB      ?
        GreenFieldPosition      DB      ?
        BlueMaskSize            DB      ?
        BlueFieldPosition       DB      ?
        RSVDMaskSize            DB      ?
        DirectColourModeInfo    DB      ?

ModeInformationStructure        EndS

;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
;� Functions                                                                   �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

VESA_Detect:; Far
global          VESA_Detect

                PushA
                Push    ES

                Mov     AX, 4F00h
                Push    CS
                Pop     ES
                Mov     DI, Offset VESAInformationTable
                Int     10h

                Cmp     AX, 4Fh
                JNE     DetectVESA1
                Cmp     [DWord Ptr ES:DI], "ASEV"       ; 'VESA' identification
                JNE     DetectVESA1

                DB      85h

DetectVESA1:
                StC

                Pop     ES
                PopA
                Ret

;EndP            VESA_Detect

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

VESA_SetMode:; Far
global          VESA_SetMode

                PushA
                Push    DS
                Push    ES

                Call    VESA_GetInfo
                JC      VESA_SetMode3

                Mov     BX, AX
                Mov     AX, 4F02h       ; Set Mode
                Int     10h
                Cmp     AX, 4Fh
                JE      VESA_SetMode3

                StC

VESA_SetMode3:
                Pop     ES
                Pop     DS
                PopA

                Mov     CX, [VESAModeInformationTable.XResolution]
                Mov     DX, [VESAModeInformationTable.YResolution]

                Ret

;EndP            VESA_SetMode

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

VESA_GetInfo:
global          VESA_GetInfo

                Push    AX
                Push    CX

                Mov     CX, AX

                Push    CS
                Pop     ES
                Mov     DI, Offset VESAModeInformationTable
                Mov     AX, 4F01h
                Int     10h

                Cmp     AX, 4Fh
                JE      VESA_GetInfo1

                StC

VESA_GetInfo1:
                Pop     CX
                Pop     AX

                Ret

;EndP            VESA_GetInfo

;컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

VESA_SetBlock:; Far       ; Gives access to a 64kb block
global          VESA_SetBlock           ; Given AX = block number.

                PushA
                Push    AX

                Mov     AX, 64
                Xor     DX, DX
                Div     Word Ptr [VESAModeInformationTable.WindowGranularity]
                Mov     DX, AX
                Pop     AX
                Mul     DX
                Mov     DX, AX
                Xor     BX, BX
                Call    DWord Ptr [VESAModeInformationTable.WindowFunction]

                PopA
                Ret

;EndP            VESA_SetBlock

%ENDIF
