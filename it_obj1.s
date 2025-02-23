%include "switch.inc"

                extern    D_SaveInstrument:Far
                extern    D_LSCheckLoopValues:Far
                extern    D_LSCheckSusLoopValues:Far

                extern    D_PreLoadSampleWindow:Far
                extern    D_DrawLoadSampleWindow:Far
                extern    D_PostLoadSampleWindow:Far

                extern    D_LSDrawDriveWindow:Far
                extern    D_LSPreDriveWindow:Far
                extern    D_LSPostDriveWindow:Far

                extern    D_LIDrawDriveWindow:Far
                extern    D_LIPreDriveWindow:Far
                extern    D_LIPostDriveWindow:Far

                extern    D_SaveSample:Far
                extern    D_SaveRawSample:Far
                extern    D_SaveST3Sample:Far

                extern    D_GetFormatType:Far

                extern    D_SlowSampleSort:Far
                extern    D_SlowInstrumentSort:Far
                extern    D_SaveDirectoryConfiguration:Far
                extern    D_LoadSampleNames:Far
                extern    D_LoadSongNames:Far
                extern    D_DrawFileWindow:Far
                extern    D_DrawDirectoryWindow:Far
                extern    D_DrawDriveWindow:Far
                extern    D_PreFileWindow:Far
                extern    D_SaveModule:Far
                extern    D_PostFileLoadWindow:Far
                extern    D_PostFileSaveWindow:Far
                extern    D_PreDirectoryWindow:Far
                extern    D_PostDirectoryWindow:Far
                extern    D_PostViewSampleLibrary:Far
                extern    D_PreDriveWindow:Far
                extern    D_PostDriveWindow:Far
                extern    D_PostSaveDriveWindow:Far
                extern    D_NewDirectory:Far
                extern    D_NewSpecifier:Far

%IF  TUTORIAL
%ELSE
                extern    D_LoadXM:Far
                extern    D_LoadS3M:Far
                extern    D_LoadMOD:Far
                extern    D_LoadIT:Far
                extern    D_LoadMTM:Far
                extern    D_Load669:Far
%ENDIF 
                extern    D_DrawHeader:Far
                extern    D_SaveIT:Far
                extern    D_SaveS3M:Far
                extern    D_SaveSong:Far
                extern    Quit:Far

                extern    D_DrawLoadInstrument:Far
                extern    D_PreLoadInstrument:Far
                extern    D_PostLoadInstrument:Far
                extern    D_LoadInstrumentNames:Far
                extern    D_ViewInstrument:Far

%IF  EMSDEBUG

                extern    E_DumpEMSMemory:Far

%ENDIF 

                extern    LSWindow_Up:Far
                extern    LSWindow_Down:Far

                extern    SongDirectory:Byte
                extern    FileSpecifier:Byte

                extern    F_InstrumentButtonHandler:Far


                extern    F_DrawHeader:Far
                extern    F_Return0:Far
                extern    F_Return1:Far
                extern    F_ShowChannels:Far
                extern    F_RedrawScreen:Far
                extern    F_GotoEmptyList:Far
                extern    F_DrawSMCChannels:Far
                extern    F_Nothing:Far
                extern    F_CalculateLength:Far

                extern    F_MainMenu:Far
                extern    F_Help:Far                      ;  Menu functions
                extern    F_ViewVariables:Far
                extern    F_ViewOrderPan:Far
                extern    F_ViewPattern:Far

                extern    F_FileMenu:Far
                extern    F_FileLoad:Far
                extern    F_FileNew:Far
                extern    F_FileSaveCurrent:Far
                extern    F_FileSaveAs:Far
                extern    F_FileDOSShell:Far
                extern    F_FileQuit:Far

                extern    F_PlaybackMenu:Far
                extern    F_InfoPage:Far
                extern    F_PlaySong:Far
                extern    F_PlayPattern:Far
                extern    F_PlayOrder:Far
                extern    F_PlayMark:Far
                extern    F_Stop:Far
                extern    F_ReinitSoundCard:Far
                extern    F_DriverScreen:Far
                extern    F_CalculateLength:Far

                extern    F_MessageEditor:Far
                extern    F_SampleMenu:Far
                extern    F_SampleList:Far
                extern    F_SampleLibrary:Far
                extern    F_ReloadGravis:Far

                extern    F_Return64:Far
                extern    F_Return192:Far

                extern    F_InstrumentMenu:Far
                extern    F_InstrumentList:Far
                extern    F_InstrumentLibrary:Far

                extern    F_ShowMIDIZxxInput:Far
                extern    F_MIDI_Up:Far, F_MIDI_Down:Far
                extern    F_MIDI_PgUp:Far, F_MIDI_PgDn:Far

%IF  SPECTRUMANALYSER
                extern    Fourier_Start:Far
                extern    Fourier_PreDrawScreen:Far
                extern    Fourier_DrawScreen:Far
                extern    Fourier_PostFunction:Far
                extern    Fourier_IdleList:Far
                extern    Fourier_ChangePalette:Far
%ENDIF 

                extern    K_DrawTables:Far
                extern    K_ResetKeyboardTables:Far
                extern    K_ShowMIDIInput:Far

                extern    PEFunction_IncreaseOctave:Far
                extern    PEFunction_DecreaseOctave:Far

                extern    Glbl_DriverScreen:Far
                extern    Glbl_Ctrl_F1:Far
                extern    Glbl_Ctrl_F3:Far
                extern    Glbl_Ctrl_F4:Far
                extern    Glbl_Ctrl_F5:Far
                extern    Glbl_Ctrl_F12:Far
                extern    Glbl_F8:Far
                extern    Glbl_F9:Far
                extern    Glbl_F10:Far
                extern    Glbl_F11:Far
                extern    Glbl_F12:Far
                extern    Glbl_F2:Far
                extern    Glbl_F3:Far
                extern    Glbl_F4:Far
                extern    Glbl_F5:Far
                extern    Glbl_F6:Far
                extern    PE_F7:Far                       ; Global...
                extern    Glbl_Shift_F1:Far
                extern    Glbl_Shift_F6:Far
                extern    Glbl_Shift_F9:Far
                extern    Glbl_Alt_F1:Far
                extern    Glbl_Alt_F2:Far
                extern    Glbl_Alt_F3:Far
                extern    Glbl_Alt_F4:Far
                extern    Glbl_Alt_F5:Far
                extern    Glbl_Alt_F6:Far
                extern    Glbl_Alt_F7:Far
                extern    Glbl_Alt_F8:Far
                extern    Glbl_LoadSample:Far
                extern    Glbl_LoadInstrument:Far
                extern    Glbl_LeftBrace:Far
                extern    Glbl_RightBrace:Far
                extern    Glbl_LeftSquareBracket:Far
                extern    Glbl_RightSquareBracket:Far

%IF  NETWORKENABLED
                extern    Network_DriverScreen:Far
                extern    Network_DrawDriverScreen:Far
                extern    Network_PreDriverScreen:Far
                extern    Network_PostDriverScreen:Far

                Public  O1_LoadNetworkDriver
%ENDIF 

%IF  TIMERSCREEN
                extern    Glbl_TimerScreen:Far
                extern    D_DrawTimer:Far, D_PostTimerList:Far
%ENDIF 

                extern    H_HelpESC:Far
                extern    H_Help:Far
                extern    H_DrawHelp:Far

                extern    H_HelpUp:Far
                extern    H_HelpDown:Far
                extern    H_HelpPgUp:Far
                extern    H_HelpPgDn:Far

                extern    I_SelectScreen:Far
                extern    I_InstrumentListSpace:Far
                extern    I_InstrumentListNoteOff:Far
                extern    I_AmplifySample:Far
                extern    I_GetInstrumentScreen:Far
                extern    I_SampleButtonHandler:Far
                extern    I_CalculateC5Speed:Far
                extern    I_PrintC5Frequency:Far

                extern    I_DoubleSampleSpeed:Far
                extern    I_HalveSampleSpeed:Far
                extern    I_SampleSpeedSemiUp:Far
                extern    I_SampleSpeedSemiDown:Far

                extern    I_PlaySample:Far
                extern    I_PlayNote:Far

                extern    I_DrawPitchPanCenter:Far
                extern    I_PrePitchPanCenter:Far
                extern    I_PostPitchPanCenter:Far

                extern    I_IncreasePlayChannel:Far
                extern    I_DecreasePlayChannel:Far

                extern    I_DeleteInstrument:Far
                extern    I_ReverseSample:Far
                extern    I_InvertSample:Far
                extern    I_CutSampleBeforeLoop:Far
                extern    I_ConvertSample:Far
                extern    I_DeleteSample:Far
                extern    I_CutSample:Far
                extern    I_ExchangeSamples:Far
                extern    I_SwapSamples:Far
                extern    I_ReplaceSample:Far
                extern    I_ReplaceInstrument:Far
                extern    I_SwapInstruments:Far
                extern    I_ResizeSample:Far
                extern    I_ResizeSampleNoInt:Far
                extern    I_UpdateInstrument:Far
                extern    I_ToggleSampleQuality:Far
                extern    I_CopyInstrument:Far
                extern    I_CenterSample:Far
                extern    I_ScaleInstrumentVolumes:Far
                extern    I_ScaleSampleVolumes:Far

                extern    I_DrawInstrumentWindow:Far
                extern    I_PreInstrumentWindow:Far
                extern    I_PostInstrumentWindow:Far
                extern    I_ToggleMultiChannel:Far

                extern    I_DrawNoteWindow:Far
                extern    I_PreNoteWindow:Far
                extern    I_PostNoteWindow:Far

                extern    I_DrawEnvelope:Far
                extern    I_PreEnvelope:Far
                extern    I_PostEnvelope:Far

                extern    I_ShowSampleInfo:Far
                extern    I_SampleUp:Far
                extern    I_SampleDown:Far
                extern    I_CheckLoopValues:Far
                extern    I_CheckSusLoopValues:Far

                extern    I_DrawSampleList:Far
                extern    I_PreSampleList:Far
                extern    I_PostSampleList:Far
                extern    I_IdleUpdateEnvelope:Far

                extern    Msg_DrawMessage:Far
                extern    Msg_PreMessage:Far
                extern    Msg_PostMessage:Far

                extern    Music_SoundCardLoadAllSamples:Far
                extern    Music_ReinitSoundCard:Far
                extern    Music_SaveMIDIConfig:Far
                extern    Music_ShowAutodetectSoundcard:Far
                extern    Music_ToggleOrderUpdate:Far

                extern    PE_FillHeader:Far
                extern    PE_SetCommandCursor:Far
                extern    PE_DrawPatternEdit:Far
                extern    PE_PrePatternEdit:Far
                extern    PE_PostPatternEdit:Far

                extern    PEFunction_DrawUndo:Far
                extern    PEFunction_PreUndo:Far
                extern    PEFunction_PostUndo:Far

                extern    S_UpdateScreen:Far
                extern    S_RestoreScreen:Far

                extern    DrawDisplayData:Far
                extern    PostDisplayData:Far
                extern    DisplayUpdateScreen:Far

                extern    BaseOctave
                extern    SkipValue
                extern    RowHiLight1
                extern    RowHiLight2
                extern    NumberOfRows:Word
                extern    Amplification
                extern    InstrumentAmplification
                extern    FastVolumeAmplification
                extern    SampleAmplification
                extern    CommandToValue
                extern    MultiChannelInfo
                extern    SampleNumberInput:Byte
                extern    SongDirectory:Byte
                extern    SampleDirectory:Byte
                extern    InstrumentDirectory:Byte

                extern    IdleUpdateInfoLine:Far
                extern    DOSShell:Far

                extern    I_ExchangeInstruments:Far

                extern    F_ConfigButtonSetup:Far
                extern    F_SetControlInstrument:Far
                extern    F_SetControlSample:Far
                extern    F_SetMono:Far
                extern    F_SetStereo:Far
                extern    F_SetAmiga:Far
                extern    F_SetLinear:Far

                extern    F_NewSong:Far

                extern    AddressInput:Byte
                extern    NewSampleSize:Word
                extern    ThumbStringEnter:Byte
                extern    SampleName:Byte

%If MEMORYDEBUG

                extern    F_PostDebug:Far
                extern    Glbl_Debug:Far
                extern    F_DrawDebug:Far
                extern    F_DebugUp:Far
                extern    F_DebugDown:Far
                extern    F_DebugPgUp:Far
                extern    F_DebugPgDn:Far
                extern    F_DebugStringInput:Far
                Global  O1_DebugList

%ENDIF 

                extern    PaletteDefs:Byte

                extern    S_UsePresetPalette:Far
                extern    DisplayMinus:Far
                extern    DisplayPlus:Far
                extern    PatternSetLength, PatternLengthStart, PatternLengthEnd

                extern    MouseToggle:Far
                extern    Refresh:Far

                extern    MIDI_SetInstrument:Far, CentraliseCursor
                extern    MIDI_PlayNote:Far, MIDI_NoteOff:Far, MIDI_PlaySample:Far
                extern    MIDICentralNote, MIDIAmplification

                extern    Music_TimeSong:Far, Music_ShowTime:Far
                extern    Flags

                extern    Music_ToggleSoloInstrument:Far
                extern    Music_ToggleSoloSample:Far

;様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�

                Global  O1_MIDIScreen
                Global  O1_LongMessageList
                Global  O1_MessageList
                Global  O1_ConfirmNoSave

                Global  O1_MainMenu
                Global  O1_PlayBackMenu
                Global  O1_SampleMenu
                Global  O1_FileMenu
                Global  O1_InstrumentMenu

                Global  O1_EditSampleName

                Global  O1_AutoDetectList

                Global  O1_ShowTime
                Global  O1_SampleCenterList
                Global  O1_ConfirmClearMessage
                Global  O1_SampleAmplificationList
                Global  O1_EnableInstrumentMode
                Global  O1_OutOfSoundCardMemoryList
                Global  O1_OutOfSamplesList
                Global  O1_NewSongList
                Global  O1_InitInstrument
                Global  O1_ThumbStringList
                Global  O1_ConfigureITList
                Global  O1_OrderVolumeList
                Global  O1_HelpList
                Global  O1_OrderPanningList
                Global  O1_PatternEditList
                Global  O1_PEConfigList
                Global  O1_OutOfMemoryList
                Global  O1_OutOfSoundCardMemoryList
                Global  O1_SwapOutOfRangeList
                Global  O1_OverlapBlockList
                Global  O1_NoBlockMarkedList
                Global  O1_NoBlockDataList
                Global  O1_GetAmpList
                Global  O1_GetInstrumentAmpList
                Global  O1_GetFastAmpList

%IF  SHOWPATTERNLENGTH
                Global  O1_ShowPatternLengthList
%ENDIF 

                Global  O1_C5FrequencyList

%IF  SPECTRUMANALYSER
                Global  O1_FourierDisplay
%ENDIF 
                Global  O1_EMSWarningMessage
%IF  NETWORKENABLED
                Global  O1_NetworkErrorList
%ENDIF 
                Global  O1_TemplateErrorList
                Global  O1_PatternTooLongList
                Global  O1_SampleList
                Global  O1_LoadModuleList
                Global  O1_SaveModuleList
                Global  O1_SaveS3MList
                Global  O1_LoadS3MList
                Global  O1_LoadXMList
                Global  O1_LoadMODList
                Global  O1_Load669List
                Global  O1_LoadMTMList
                Global  O1_LoadITList
                Global  O1_SaveITList
                Global  O1_EmptyList
                Global  O1_ConfirmOverWriteList
                Global  O1_UnableToSaveList
                Global  O1_ConfirmQuit
                Global  O1_SelectMultiChannel
                Global  O1_ConfirmDelete
                Global  O1_ConfirmDelete2
                Global  O1_ConfirmDelete3
                Global  O1_ConfirmDeleteSample
                Global  O1_ConfirmDeleteInstrument
                Global  O1_ConfirmCutSample
                Global  O1_ConfirmConvertList
                Global  O1_ConfirmConvert2List
                Global  O1_ExchangeSampleList
                Global  O1_ExchangeInstrumentList
                Global  O1_ReplaceSampleList
                Global  O1_ReplaceInstrumentList
                Global  O1_LoadSampleList
                Global  O1_ConfirmSaveRenameList
                Global  O1_ConfirmResaveList
                Global  O1_ConfirmDiscardList
                Global  O1_InitialiseInstrumentList
                Global  O1_SwapSampleList
                Global  O1_SwapInstrumentList
                Global  O1_ResizeSampleList
                Global  O1_KeyboardList
                Global  O1_DisplayList
                Global  O1_FullDisplayList
                Global  O1_ViewSampleLibrary
                Global  O1_ConfigurePaletteList
                Global  O1_LoadInstrumentList
                Global  O1_ViewInstrumentLibrary
                Global  O1_ConfirmDeleteInstrument
                Global  O1_CopyInstrumentList

                Global  O1_CrashRecovery

                Global  O1_UndoList

                Global  O1_InstrumentListGeneral
                Global  O1_InstrumentListVolume
                Global  O1_InstrumentListPanning
                Global  O1_InstrumentListPitch
                Global  O1_SetPatternLength

                Global  O1_StereoSampleList
                Global  O1_PatternSizeMismatchList

                Global  PatternLength
                Global  HelpKeyValue, OrderKeyValue
                Global  GlobalKeyList:Byte
                Global  LogoCharacter:Word
                Global  EMSErrorValue, EMSErrorValue2
                Global  EMSErrorValue3, EMSErrorValue4
                Global  EMSErrorValue5, EMSErrorValue6
                Global  EMSErrorValue7, EMSErrorValue8

%IF  TIMERSCREEN
                Public  O1_TimerList
%ENDIF 

;様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�

Segment                 Object1 BYTE Public 'Data'

O1_AutoDetectList       DW      6
                        DW      0
                        DW      ESCContinueList
                        DW      AboutBox
                        DW      ImpulseLogo
                        DW      AutoMiniBox
                        DW      AboutText
                        DW      AutoDetectText
                        DW      CallAutoDetect
                        DW      AutoContinueButton
                        DW      0

ESCContinueList         DB      0               ; ESC
                        DW      101h
                        DD      Glbl_F2

                        DB      0FFh

O1_OrderPanningList     DW      10
                        DW      IdleFunctionList
                        DW      GlobalKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      FillHeader    ; 2
                        DW      OrderandPanningMsg ; 3
                        DW      OrderBox      ; 4
                        DW      PanBox1       ; 5
                        DW      PanBox2       ; 6
                        DW      ShowChannelMsgs ; 7
                        DW      PanText1      ; 8
                        DW      PanText2      ; 9
                        DW      OrderList     ; 10
                        DW      Channel1      ; 11
                        DW      Channel2      ; 12
                        DW      Channel3      ; 13
                        DW      Channel4      ; 14
                        DW      Channel5      ; 15
                        DW      Channel6      ; 16
                        DW      Channel7      ; 17
                        DW      Channel8      ; 18
                        DW      Channel9      ; 19
                        DW      Channel10     ; 20
                        DW      Channel11     ; 21
                        DW      Channel12     ; 22
                        DW      Channel13     ; 23
                        DW      Channel14     ; 24
                        DW      Channel15     ; 25
                        DW      Channel16     ; 26
                        DW      Channel17
                        DW      Channel18
                        DW      Channel19
                        DW      Channel20
                        DW      Channel21
                        DW      Channel22
                        DW      Channel23
                        DW      Channel24
                        DW      Channel25
                        DW      Channel26
                        DW      Channel27
                        DW      Channel28
                        DW      Channel29
                        DW      Channel30
                        DW      Channel31
                        DW      Channel32
                        DW      Channel33
                        DW      Channel34
                        DW      Channel35
                        DW      Channel36
                        DW      Channel37
                        DW      Channel38
                        DW      Channel39
                        DW      Channel40
                        DW      Channel41
                        DW      Channel42
                        DW      Channel43
                        DW      Channel44
                        DW      Channel45
                        DW      Channel46
                        DW      Channel47
                        DW      Channel48
                        DW      Channel49
                        DW      Channel50
                        DW      Channel51
                        DW      Channel52
                        DW      Channel53
                        DW      Channel54
                        DW      Channel55
                        DW      Channel56
                        DW      Channel57
                        DW      Channel58
                        DW      Channel59
                        DW      Channel60
                        DW      Channel61
                        DW      Channel62
                        DW      Channel63
                        DW      Channel64
                        DW      SetHelpContext0
                        DW      0

O1_HelpList             DW      6
                        DW      IdleFunctionList
                        DW      HelpKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      FillHeader    ; 2
                        DW      HelpMsg       ; 3
                        DW      HelpBox       ; 4
                        DW      ShowHelp      ; 5
                        DW      HelpDoneButton ; 6
                        DW      0

O1_PatternEditList      DW      3
                        DW      InfoPageIdleList
                        DW      GlobalKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      PatternEditMsg ; 2
                        DW      PatternEdit   ; 3
                        DW      FillHeader    ; 4
                        DW      SetHelpContext1 ; 5
                        DW      0

O1_PEConfigList         DW      14
                        DW      IdleFunctionList
                        DW      ESCF2&ReturnList
                        DW      PEConfigBox   ; 0
                        DW      PEConfigText  ; 1
                        DW      PEConfigBsOctText ; 2
                        DW      PEConfigSkipValueText ; 3
                        DW      PEConfigRHLMinorText ; 4
                        DW      PEConfigRHLMajorText  ;5
                        DW      PEConfigMaxRowsText ; 6
                        DW      PEConfigCommandCursor ; 7
                        DW      PECBox1
                        DW      PECBox2
                        DW      PECBox3
                        DW      PECBox4
                        DW      PECBox5
                        DW      PEConfigDoneButton ; 13
                        DW      PETBBaseOctave ; 14
                        DW      PETBSkipValue ; 15
                        DW      PETBRHLMinor ; 16
                        DW      PETBRHLMajor ; 17
                        DW      PETBMaxRow ; 18
                        DW      PECLinkButton ; 19
                        DW      PECSplitButton ; 20
                        DW      FillHeader
                        DW      0

O1_SetPatternLength     DW      4
                        DW      IdleFunctionList
                        DW      ESC&ReturnList
                        DW      SetPatternLengthBox    ; 0
                        DW      SetPatternLengthHeader
                        DW      SetPatternLengthThumbBox1
                        DW      SetPatternLengthThumbBox2
                        DW      SetPatternLengthThumbBar       ; 4
                        DW      SetPatternLengthStart          ; 5
                        DW      SetPatternLengthEnd            ; 6
                        DW      SetPatternLengthOKButton       ; 7
                        DW      SetPatternLengthText
                        DW      0

SetPatternLengthBox     DW      0
                        DB      15, 19, 65, 33
                        DB      3

SetPatternLengthHeader  DW      1
                        DB      31, 21
                        DB      20h
                        DB      "Set Pattern Length", 0

SetPatternLengthText    DW      1
                        DB      19, 24
                        DB      20h
                        DB      "Pattern Length", 13
                        DB      13
                        DB      13
                        DB      " Start Pattern", 13
                        DB      "   End Pattern", 0

SetPatternLengthThumbBox1 DW    0
                        DB      33, 23, 56, 25
                        DB      25

SetPatternLengthThumbBox2 DW    0
                        DB      33, 26, 60, 29
                        DB      25

SetPatternLengthThumbBar DW     9
                        DB      34, 24
                        DW      32, 200
                        DW      1, PatternSetLength
                        DW      0FFFFh, 5, 0FFFFh, 0FFFFh
                        DW      0FFFFh, 0FFFFh

SetPatternLengthStart   DW      9
                        DB      34, 27
                        DW      0, 199
                        DW      1, PatternLengthStart
                        DW      4, 6, 0FFFFh, 0FFFFh
                        DW      0FFFFh, 0FFFFh

SetPatternLengthEnd     DW      9
                        DB      34, 28
                        DW      0, 199
                        DW      1, PatternLengthEnd
                        DW      5, 7, 0FFFFh, 0FFFFh
                        DW      0FFFFh, 0FFFFh

SetPatternLengthOKButton DW     2
                        DW      6, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      1               ; Returns 1
                        DW      0, 0, 0, 0
                        DB      35, 30, 44, 32
                        DB      8
                        DB      0
                        DB      "   OK", 0

OKCancelList            DB      8       ; 'O'
                        DW      'O'
                        DD      DWord Ptr F_Return1

                        DB      8       ; 'C'
                        DW      'C'
                        DD      DWord Ptr F_Return0

                        DB      8       ; 'Y'
                        DW      'Y'
                        DD      DWord Ptr F_Return1

                        DB      8       ; 'N'
                        DW      'N'
                        DD      DWord Ptr F_Return0

ESCReturnList           DB      0
                        DW      101h
                        DD      DWord Ptr F_Return0

                        DB      5
                        DW      ChainMIDICommands

O1_NoBlockMarkedList    DW      2
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      NBMText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_OutOfSoundCardMemoryList   DW      2
                        DW      0
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      OOSoundCardMemoryText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_OutOfMemoryList      DW      2
                        DW      0
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      OOMText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_PatternSizeMismatchList DW   2
                        DW      0
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      PSMText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_LongMessageList      DW      2
                        DW      0
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      LongMsgText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_OutOfSamplesList     DW      2
                        DW      0
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      OOSText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_OverlapBlockList     DW      2
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      OLBText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_SwapOutOfRangeList   DW      2
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      SOORText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_NoBlockDataList      DW      2
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      NBDText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_PatternTooLongList   DW      2
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      PatternTooLongText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_GetAmpList           DW      3
                        DW      IdleFunctionList
                        DW      AmpExtraKeyList
                        DW      AmpBox        ; 0
                        DW      AmpText       ; 1
                        DW      AmpTBBox      ; 2
                        DW      AmpTB         ; 3
                        DW      ConfirmOKButton   ; 4
                        DW      ConfirmCancelButton ; 5
                        DW      FillHeader
                        DW      0

O1_GetInstrumentAmpList DW      3
                        DW      IdleFunctionList
                        DW      AmpExtraKeyList
                        DW      AmpBox        ; 0
                        DW      AmpText       ; 1
                        DW      AmpTBBox      ; 2
                        DW      InstrumentAmpTB   ; 3
                        DW      ConfirmOKButton   ; 4
                        DW      ConfirmCancelButton ; 5
                        DW      FillHeader
                        DW      0

O1_GetFastAmpList       DW      3
                        DW      IdleFunctionList
                        DW      AmpExtraKeyList
                        DW      AmpBox        ; 0
                        DW      AmpText       ; 1
                        DW      FastAmpTBBox  ; 2
                        DW      FastAmpTB     ; 3
                        DW      ConfirmOKButton   ; 4
                        DW      ConfirmCancelButton ; 5
                        DW      FillHeader
                        DW      0

O1_SampleAmplificationList DW   3
                        DW      IdleFunctionList
                        DW      ESC&ReturnList
                        DW      SampleAmpBox
                        DW      SampleAmpText ; 1
                        DW      SampleAmpTBBox ; 2
                        DW      SampleAmpTB   ; 3
                        DW      ConfirmOKButton   ; 4
                        DW      ConfirmCancelButton ; 5
                        DW      FillHeader
                        DW      0

%IF  SHOWPATTERNLENGTH

O1_ShowPatternLengthList DW     2
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      PatternLengthText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

%ENDIF 

O1_C5FrequencyList      DW      2
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      C5FrequencyText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

O1_EMSWarningMessage    DW      2
                        DW      0
                        DW      ESCReturnList
                        DW      EMSErrorBox
                        DW      EMSErrorText
                        DW      OKButton
                        DW      FillHeader
                        DW      0

%IF  NETWORKENABLED
O1_NetworkErrorList     DW      2
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      TemplateErrorBox
                        DW      NetworkErrorText
                        DW      TemplateOKButton
                        DW      FillHeader
                        DW      0
%ENDIF 

O1_TemplateErrorList    DW      2
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      TemplateErrorBox
                        DW      TemplateErrorText
                        DW      TemplateOKButton
                        DW      FillHeader
                        DW      0

O1_CrashRecovery        DW      2
                        DW      0
                        DW      ESCReturnList
                        DW      CrashRecoveryBox
                        DW      CrashRecoveryText
                        DW      CrashRecoveryOKButton
                        DW      0

O1_LoadSampleList       DW      15
                        DW      SampleNameLoader
                        DW      LoadSampleKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      LoadSampleHeader ; 2
                        DW      FillHeader    ; 3
                        DW      LoadSampleBox
                        DW      DriveSampleBox
                        DW      LSInfoBox
                        DW      LSInfoText
                        DW      LSWaveFormBox
                        DW      LSParametersBox
                        DW      LSParametersText      ; 10
                        DW      LSParametersVolBox    ; 11
                        DW      LSParametersVibBox
                        DW      LSFileInfoBox
                        DW      LSFileInfoText
                        DW      LoadSampleWindow      ; 15
                        DW      LSDriveWindow         ; 16
                        DW      LSFileNameInput       ; 17
                        DW      LSSpeedInput
                        DW      LSLoopToggle          ; 19
                        DW      LSLoopBeginInput
                        DW      LSLoopEndInput
                        DW      LSSusLoopToggle       ; 22
                        DW      LSSusLoopBeginInput
                        DW      LSSusLoopEndInput
                        DW      LSDefaultVolumeInput  ; 25
                        DW      LSGlobalVolumeInput   ; 26
                        DW      LSVibratoSpeedInput   ; 27
                        DW      LSVibratoDepthInput   ; 28
                        DW      LSVibratoRateInput    ; 29
                        DW      SetHelpContext6
                        DW      0

O1_ViewSampleLibrary    DW      15
                        DW      SampleNameLoader
                        DW      LoadSampleKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      ViewSampleHeader ; 2
                        DW      FillHeader    ; 3
                        DW      LoadSampleBox
                        DW      DriveSampleBox
                        DW      LSInfoBox
                        DW      LSInfoText
                        DW      LSWaveFormBox
                        DW      LSParametersBox
                        DW      LSParametersText      ; 10
                        DW      LSParametersVolBox    ; 11
                        DW      LSParametersVibBox
                        DW      LSFileInfoBox
                        DW      LSFileInfoText
                        DW      ViewSampleWindow      ; 15
                        DW      LSDriveWindow         ; 16
                        DW      LSFileNameInput       ; 17
                        DW      LSSpeedInput
                        DW      LSLoopToggle          ; 19
                        DW      LSLoopBeginInput
                        DW      LSLoopEndInput
                        DW      LSSusLoopToggle       ; 22
                        DW      LSSusLoopBeginInput
                        DW      LSSusLoopEndInput
                        DW      LSDefaultVolumeInput  ; 25
                        DW      LSGlobalVolumeInput   ; 26
                        DW      LSVibratoSpeedInput   ; 27
                        DW      LSVibratoDepthInput   ; 28
                        DW      LSVibratoRateInput    ; 29
                        DW      SetHelpContext6
                        DW      0


LSFileNameInput         DW      16
                        DB      64, 13
                        DW      3, 4
                        DW      13
                        DD      0
                        DW      0FFFFh, 18, 25, 16

LSSpeedInput            DW      18
                        DB      64, 14
                        DW      1, 3Ch
                        DD      0
                        DW      17, 19, 25, 16

LSLoopToggle            DW      17
                        DB      64, 15
                        DW      3, 12h
                        DB      16
                        DW      18, 20, 25, 16

LSLoopBeginInput        DW      18
                        DB      64, 16
                        DW      1, 34h
                        DD      DWord Ptr D_LSCheckLoopValues
                        DW      19, 21, 25, 16

LSLoopEndInput          DW      18
                        DB      64, 17
                        DW      1, 38h
                        DD      DWord Ptr D_LSCheckLoopValues
                        DW      20, 22, 25, 16

LSSusLoopToggle         DW      17
                        DB      64, 18
                        DW      3, 12h
                        DB      32
                        DW      21, 23, 25, 16

LSSusLoopBeginInput     DW      18
                        DB      64, 19
                        DW      1, 40h
                        DD      DWord Ptr D_LSCheckSusLoopValues
                        DW      22, 24, 25, 16

LSSusLoopEndInput       DW      18
                        DB      64, 20
                        DW      1, 44h
                        DD      DWord Ptr D_LSCheckSusLoopValues
                        DW      23, 25, 25, 16

LSDefaultVolumeInput    DW      9
                        DB      63, 33
                        DW      0, 64
                        DW      5, 13h
                        DW      24, 26, 15, 17
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

LSGlobalVolumeInput     DW      9
                        DB      63, 34
                        DW      0, 64
                        DW      5, 11h
                        DW      25, 27, 15, 17
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

LSVibratoSpeedInput     DW      9
                        DB      63, 37
                        DW      0, 64
                        DW      5, 4Ch
                        DW      26, 28, 15, 17
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

LSVibratoDepthInput     DW      14
                        DB      63, 38
                        DW      0, 32
                        DW      5, 4Dh
                        DW      27, 29, 15, 17
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn
                        DW      8

LSVibratoRateInput      DW      14
                        DB      63, 39
                        DW      0, 255
                        DW      5, 4Eh
                        DW      28, 0FFFFh, 15, 17
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn
                        DW      8

SampleNameLoader        DD      DWord Ptr D_LoadSampleNames
IdleFunctionList        DD      DWord Ptr IdleUpdateInfoLine
                        DD      0

IdleInstrumentList      DD      DWord Ptr IdleUpdateInfoLine
                        DD      DWord Ptr I_IdleUpdateEnvelope
                        DD      0

LoadSampleHeader        DW      10
                        DB      "Load Sample", 0

ViewSampleHeader        DW      10
                        DB      "Sample Library (Ctrl-F3)", 0

LoadSampleBox           DW      0
                        DB      5, 12, 44, 48
                        DB      27

DriveSampleBox          DW      0
                        DB      45, 12, 54, 23
                        DB      27

LSInfoBox               DW      0
                        DB      63, 12, 77, 23
                        DB      27

LSInfoText              DW      1
                        DB      55, 13
                        DB      20h
                        DB      "Filename", 13
                        DB      "   Speed", 13
                        DB      "    Loop", 13
                        DB      " LoopBeg", 13
                        DB      " LoopEnd", 13
                        DB      " SusLoop", 13
                        DB      " SusLBeg", 13
                        DB      " SusLEnd", 13
                        DB      " Quality", 13
                        DB      "  Length"
                        DB       0

LSWaveFormBox           DW      0
                        DB      45, 24, 77, 29
                        DB      27

LSParametersBox         DW      0
                        DB      45, 30, 77, 42
                        DB      9

LSParametersText        DW      1
                        DB      48, 33
                        DB      20h
                        DB      "Default Volume", 13
                        DB      " Global Volume", 13
                        DB      13
                        DB      13
                        DB      " Vibrato Speed", 13
                        DB      " Vibrato Depth", 13
                        DB      "  Vibrato Rate"
                        DB       0

LSParametersVolBox      DW      0
                        DB      62, 32, 72, 35
                        DB      25

LSParametersVibBox      DW      0
                        DB      62, 36, 72, 40
                        DB      25

LSFileInfoBox           DW      0
                        DB      52, 43, 77, 48
                        DB      27

LSFileInfoText          DW      1
                        DB      46, 44
                        DB      20h
                        DB      "Format", 13
                        DB      "  Size", 13
                        DB      "  Date", 13
                        DB      "  Time"
                        DB      0

LoadSampleWindow        DW      15
                        DD      DWord Ptr D_DrawLoadSampleWindow
                        DD      DWord Ptr D_PreLoadSampleWindow
                        DD      DWord Ptr D_PostLoadSampleWindow

ViewSampleWindow        DW      15
                        DD      DWord Ptr D_DrawLoadSampleWindow
                        DD      DWord Ptr D_PreLoadSampleWindow
                        DD      DWord Ptr D_PostViewSampleLibrary

LSDriveWindow           DW      15
                        DD      DWord Ptr D_LSDrawDriveWindow
                        DD      DWord Ptr D_LSPreDriveWindow
                        DD      DWord Ptr D_LSPostDriveWindow

O1_SampleList           DW      28
                        DW      IdleFunctionList
                        DW      SampleGlobalKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      SampleListHeader
                        DW      SampleListBox
                        DW      InstDVBox
                        DW      InstDVText
                        DW      InstDVTBBox
                        DW      InstDVTB      ; 7
                        DW      InstGVBox
                        DW      InstGVText
                        DW      InstGVTBBox
                        DW      InstGVTB      ; 11
                        DW      InstVSBox
                        DW      InstVSText
                        DW      InstVSTBBox
                        DW      InstVSTB      ; 15
                        DW      InstVDBox
                        DW      InstVDText
                        DW      InstVDTBBox
                        DW      InstVDTB      ; 19
                        DW      InstVRBox
                        DW      InstVRText
                        DW      InstVRTBBox
                        DW      InstVRTB      ; 23
                        DW      InstVWBox
                        DW      InstVWText
                        DW      InstParamBox
                        DW      InstParamText
                        DW      SampleList      ; 28
                        DW      InstFileName  ; 29
                        DW      InstSpeed
                        DW      InstLoopToggle
                        DW      InstLoopBegin
                        DW      InstLoopEnd
                        DW      InstSusLoopToggle
                        DW      InstSusLoopBegin
                        DW      InstSusLoopEnd ;36
                        DW      InstVibSine   ; 37
                        DW      InstVibRamp   ; 38
                        DW      InstVibSquare ; 39
                        DW      InstVibRandom ; 40
                        DW      InstWaveFormBox ; 41
                        DW      InstWaveFormText ; 42
                        DW      InstDPBox      ; 43
                        DW      InstDPText
                        DW      InstDPTBBox
                        DW      InstDPToggle   ; 46
                        DW      InstDPTB       ; 47
                        DW      InstFillInfo
                        DW      FillHeader
                        DW      SetHelpContext2
                        DW      0

O1_LoadModuleList       DW      12
                        DW      SongNameModuleLoader
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      LoadModuleText
                        DW      FileBox
                        DW      DirBox                ; 5
                        DW      DriveBox
                        DW      SearchBox
                        DW      FileInfoBox
                        DW      FileNameBox
                        DW      SearchText            ; 10
                        DW      FileText
                        DW      FileWindow            ; 12
                        DW      DirectoryWindow
                        DW      DriveWindow
                        DW      FileNamePrompt        ; 15
                        DW      SongDirectoryPrompt
                        DW      SetHelpContext3
                        DW      0

O1_SaveModuleList       DW      15
                        DW      SongNameModuleLoader
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      SaveModuleText
                        DW      FileBox
                        DW      DirBox                ; 5
                        DW      DriveBox
                        DW      SearchBox
                        DW      FileInfoBox
                        DW      FileNameBox
                        DW      SearchText            ; 10
                        DW      FileText
                        DW      FileSaveWindow        ; 12
                        DW      DirectoryWindow
                        DW      SaveDriveWindow
                        DW      FileNameSavePrompt    ; 15
                        DW      SongDirectoryPrompt
                        DW      ITFormatButton         ; 17
                        DW      S3MFormatButton        ; 18
                        DW      OldITFormatButton      ; 19
%IF  DDCOMPRESS
                        DW      IT215FormatButton      ; 20
%ENDIF 
                        DW      0

%IF  NETWORKENABLED
O1_LoadNetworkDriver    DW      6
                        DW      IdleFunctionList
                        DW      GlobalKeyList
                        DW      FullScreenBox          ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      SaveModuleText
                        DW      LoadNetworkText
                        DW      LoadNetworkBox
                        DW      LoadNetworkFunctions
                        DW      0
%ENDIF 

O1_SaveITList           DW      7
                        DW      IdleFunctionGotoEmpty
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      SaveModuleText
                        DW      LoadBox
                        DW      SaveITModuleText
                        DW      DirectScreen          ; 6
                        DW      SaveIT                ; 7
                        DW      0

O1_SaveS3MList          DW      7
                        DW      IdleFunctionGotoEmpty
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      SaveModuleText
                        DW      LoadBox
                        DW      SaveS3MModuleText
                        DW      DirectScreen          ; 6
                        DW      SaveS3M               ; 7
                        DW      0

%IF  TUTORIAL
%ELSE

O1_LoadS3MList          DW      7
                        DW      IdleFunctionGotoEmpty
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      LoadModuleText
                        DW      LoadBox
                        DW      LoadS3MModuleText
                        DW      DirectScreen          ; 6
                        DW      LoadS3M               ; 7
                        DW      0

O1_LoadXMList           DW      7
                        DW      IdleFunctionGotoEmpty
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      LoadModuleText
                        DW      LoadBox
                        DW      LoadXMModuleText
                        DW      DirectScreen          ; 6
                        DW      LoadXM                ; 7
                        DW      0

O1_LoadMTMList          DW      7
                        DW      IdleFunctionGotoEmpty
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      LoadModuleText
                        DW      LoadBox
                        DW      LoadMTMModuleText
                        DW      DirectScreen          ; 6
                        DW      LoadMTM               ; 7
                        DW      0

O1_LoadMODList          DW      7
                        DW      IdleFunctionGotoEmpty
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      LoadModuleText
                        DW      LoadBox
                        DW      LoadMODModuleText
                        DW      DirectScreen          ; 6
                        DW      LoadMOD               ; 7
                        DW      0

O1_Load669List          DW      7
                        DW      IdleFunctionGotoEmpty
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      LoadModuleText
                        DW      LoadBox
                        DW      Load669ModuleText
                        DW      DirectScreen          ; 6
                        DW      Load669               ; 7
                        DW      0

O1_LoadITList           DW      7
                        DW      IdleFunctionGotoEmpty
                        DW      GlobalKeyList
                        DW      FullScreenBox         ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      LoadModuleText
                        DW      LoadBox
                        DW      LoadITModuleText
                        DW      DirectScreen          ; 6
                        DW      LoadIT                ; 7
                        DW      0
%ENDIF 

O1_EmptyList            DW      0
                        DW      IdleFunctionList
                        DW      GlobalKeyList
                        DW      InDirectScreen        ; 0
                        DW      FullScreenBox         ; 1
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      NoText
                        DW      0

ITFormatButton          DW      2
                        DW      0FFFFh, 18, 14, 15
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr D_GetFormatType
                        DW      0
                        DW      0, 0
                        DB      69, 12, 77, 14
                        DB      8
                        DB      0
                        DB      " IT214", 0

S3MFormatButton         DW      2
                        DW      17, 19, 14, 15
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr D_GetFormatType
                        DW      1
                        DW      0, 0
                        DB      69, 15, 77, 17
                        DB      8
                        DB      0
                        DB      "  S3M", 0

%IF  DDCOMPRESS

OldITFormatButton       DW      2
                        DW      18, 20, 14, 15
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr D_GetFormatType
                        DW      2
                        DW      0, 0
                        DB      69, 18, 77, 20
                        DB      8
                        DB      0
                        DB      " IT2xx", 0

IT215FormatButton       DW      2
                        DW      19, 15, 14, 15
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr D_GetFormatType
                        DW      3
                        DW      0, 0
                        DB      69, 21, 77, 23
                        DB      8
                        DB      0
                        DB      " IT215", 0


%ELSE

OldITFormatButton       DW      2
                        DW      18, 15, 14, 15
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr D_GetFormatType
                        DW      2
                        DW      0, 0
                        DB      69, 18, 77, 20
                        DB      8
                        DB      0
                        DB      " IT2xx", 0
%ENDIF 


NoText                  DW      10
                        DB      0

LoadBox                 DW      0
                        DB      1, 12, 78, 48
                        DB      27

SaveITModuleText        DW      1
                        DB      3, 14
                        DB      2h
                        DB      "Saving Impulse 2 Module", 13
                        DB      0FFh, 23, 129, 0

SaveS3MModuleText       DW      1
                        DB      3, 14
                        DB      2h
                        DB      "Saving Scream Tracker 3 Module", 13
                        DB      0FFh, 30, 129, 0

LoadS3MModuleText       DW      1
                        DB      3, 14
                        DB      2h
                        DB      "Scream Tracker III Module", 13
                        DB      0FFh, 25, 129, 0

LoadXMModuleText        DW      1
                        DB      3, 14
                        DB      2h
                        DB      "Fast Tracker II Module", 13
                        DB      0FFh, 22, 129, 0

LoadMTMModuleText       DW      1
                        DB      3, 14
                        DB      2h
                        DB      "MultiTracker Module", 13
                        DB      0FFh, 19, 129, 0

LoadMODModuleText       DW      1
                        DB      3, 14
                        DB      2h
                        DB      "MOD Format Module", 13
                        DB      0FFh, 17, 129, 0

Load669ModuleText       DW      1
                        DB      3, 14
                        DB      2h
                        DB      "Composer 669 Module", 13
                        DB      0FFh, 19, 129, 0

LoadITModuleText        DW      1
                        DB      3, 14
                        DB      2h
                        DB      "Impulse Tracker Module", 13
                        DB      0FFh, 22, 129, 0

IdleFunctionGotoEmpty   DD      DWord Ptr F_GotoEmptyList
                        DD      0

%IF  TUTORIAL
%ELSE

LoadMOD                 DW      15
                        DD      DWord Ptr F_Return0
                        DD      DWord Ptr D_LoadMOD
                        DD      DWord Ptr F_GotoEmptyList

Load669                 DW      15
                        DD      DWord Ptr F_Return0
                        DD      DWord Ptr D_Load669
                        DD      DWord Ptr F_GotoEmptyList

LoadS3M                 DW      15
                        DD      DWord Ptr F_Return0
                        DD      DWord Ptr D_LoadS3M
                        DD      DWord Ptr F_GotoEmptyList

LoadXM                  DW      15
                        DD      DWord Ptr F_Return0
                        DD      DWord Ptr D_LoadXM
                        DD      DWord Ptr F_GotoEmptyList

LoadMTM                 DW      15
                        DD      DWord Ptr F_Return0
                        DD      DWord Ptr D_LoadMTM
                        DD      DWord Ptr F_GotoEmptyList

LoadIT                  DW      15
                        DD      DWord Ptr F_Return0
                        DD      DWord Ptr D_LoadIT
                        DD      DWord Ptr F_GotoEmptyList

%ENDIF 

SaveIT                  DW      15
                        DD      DWord Ptr F_Return0
                        DD      DWord Ptr D_SaveIT
                        DD      DWord Ptr F_GotoEmptyList

SaveS3M                 DW      15
                        DD      DWord Ptr F_Return0
                        DD      DWord Ptr D_SaveS3M
                        DD      DWord Ptr F_GotoEmptyList

FileNamePrompt          DW      16
                        DB      13, 46
                        DW      0                       ; Disk segment
                        DW      FileSpecifier
                        DW      64                      ; Length
                        DD      D_NewSpecifier
                        DW      12, 16, 16, 14

FileNameSavePrompt      DW      16
                        DB      13, 46
                        DW      0                       ; Disk segment
                        DW      FileSpecifier
                        DW      64                      ; Length
                        DD      D_SaveModule
                        DW      12, 16, 16, 14

SongDirectoryPrompt     DW      16
                        DB      13, 47
                        DW      0
                        DW      SongDirectory
                        DW      64
                        DD      D_NewDirectory
                        DW      15, 12, 12, 15

SongNameModuleLoader    Label   DWord
                        DD      DWord Ptr D_LoadSongNames
                        DD      DWord Ptr IdleUpdateInfoLine
                        DD      0

FileWindow              DW      15
                        DD      DWord Ptr D_DrawFileWindow
                        DD      DWord Ptr D_PreFileWindow
                        DD      DWord Ptr D_PostFileLoadWindow

FileSaveWindow          DW      15
                        DD      DWord Ptr D_DrawFileWindow
                        DD      DWord Ptr D_PreFileWindow
                        DD      DWord Ptr D_PostFileSaveWindow

DirectoryWindow         DW      15
                        DD      DWord Ptr D_DrawDirectoryWindow
                        DD      DWord Ptr D_PreDirectoryWindow
                        DD      DWord Ptr D_PostDirectoryWindow

DriveWindow             DW      15
                        DD      DWord Ptr D_DrawDriveWindow
                        DD      DWord Ptr D_PreDriveWindow
                        DD      DWord Ptr D_PostDriveWindow

SaveDriveWindow         DW      15
                        DD      DWord Ptr D_DrawDriveWindow
                        DD      DWord Ptr D_PreDriveWindow
                        DD      DWord Ptr D_PostSaveDriveWindow

%IF  NETWORKENABLED
LoadNetworkText         DW      10
                        DB      "Load Network Driver", 0

LoadNetworkBox          DW      0
                        DB      1, 12, 78, 49
                        DB      27

LoadNetworkFunctions    DW      15
                        DD      DWord Ptr Network_DrawDriverScreen
                        DD      DWord Ptr Network_PreDriverScreen
                        DD      DWord Ptr Network_PostDriverScreen

%ENDIF 

LoadModuleText          DW      10
                        DB      "Load Module (F9)", 0

SaveModuleText          DW      10
                        DB      "Save Module (F10)", 0

FileBox                 DW      0
                        DB      2, 12, 41, 44
                        DB      27

DirBox                  DW      0
                        DB      43, 12, 56, 34
                        DB      27

DriveBox                DW      0
                        DB      58, 12, 67, 34
                        DB      27

SearchBox               DW      0
                        DB      50, 36, 77, 38
                        DB      27

FileInfoBox             DW      0
                        DB      50, 39, 77, 44
                        DB      27

FileNameBox             DW      0
                        DB      12, 45, 77, 48
                        DB      27

SearchText              DW      1
                        DB      44, 37
                        DB      20h
                        DB      "Search", 13
                        DB      13
                        DB      13
                        DB      "Format", 13
                        DB      "  Size", 13
                        DB      "  Date", 13
                        DB      "  Time", 0

FileText                DW      1
                        DB      3, 46
                        DB      20h
                        DB      " Filename", 13
                        DB      "Directory", 0

SampleListHeader          DW      10
                        DB      "Sample List (F3)", 0

InstFillInfo            DW      8
                        DD      DWord Ptr I_ShowSampleInfo

InstFileName            DW      16
                        DB      64, 13
                        DW      1
                        DW      4
                        DW      13
                        DD      0
                        DW      0FFFFh, 30, 28, 7

InstSpeed               DW      18
                        DB      64, 14
                        DW      0
                        DW      3Ch
                        DD      DWord Ptr I_PlaySample
                        DW      29, 31, 28, 7

InstLoopToggle          DW      17
                        DB      64, 15
                        DW      0
                        DW      12h
                        DB      16
                        DW      30, 32, 28, 7

InstLoopBegin           DW      18
                        DB      64, 16
                        DW      0
                        DW      34h
                        DD      DWord Ptr I_CheckLoopValues
                        DW      31, 33, 28, 7

InstLoopEnd             DW      18
                        DB      64, 17
                        DW      0
                        DW      38h
                        DD      DWord Ptr I_CheckLoopValues
                        DW      32, 34, 28, 7

InstSusLoopToggle       DW      17
                        DB      64, 18
                        DW      0
                        DW      12h
                        DB      32
                        DW      33, 35, 28, 7

InstSusLoopBegin        DW      18
                        DB      64, 19
                        DW      0
                        DW      40h
                        DD      DWord Ptr I_CheckSusLoopValues
                        DW      34, 36, 28, 7

InstSusLoopEnd          DW      18
                        DB      64, 20
                        DW      0
                        DW      44h
                        DD      DWord Ptr I_CheckSusLoopValues
                        DW      35, 37, 28, 7

SetHelpContext0         DW      11
                        DW      0

SetHelpContext1         DW      11
                        DW      1

SetHelpContext2         DW      11
                        DW      2

SetHelpContext3         DW      11
                        DW      3

SetHelpContext4         DW      11
                        DW      4

SetHelpContext5         DW      11
                        DW      5

SetHelpContext6         DW      11
                        DW      6

SetHelpContext7         DW      11
                        DW      7

SetHelpContext8         DW      11
                        DW      8

SetHelpContext9         DW      11
                        DW      9

SetHelpContext10        DW      11
                        DW      10

SetHelpContext11        DW      11
                        DW      11

SetHelpContext12        DW      11
                        DW      12

SetHelpContext13        DW      11
                        DW      13

SampleListBox             DW      0
                        DB      4, 12, 35, 48
                        DB      27

InstDVBox               DW      0
                        DB      36, 12, 53, 18
                        DB      9

InstDVTBBox             DW      0
                        DB      37, 15, 47, 17
                        DB      9

InstDVTB                DW      9
                        DB      38, 16
                        DW      0, 64
                        DW      2, 13h
                        DW      0FFFFh, 11, 29, 28
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

InstGVTBBox             DW      0
                        DB      37, 22, 47, 24
                        DB      9

InstGVTB                DW      9
                        DB      38, 23
                        DW      0, 64
                        DW      2, 11h
                        DW      7, 46, 29, 28
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

InstDPTBBox             DW      0
                        DB      37, 29, 47, 32
                        DB      25

InstDPToggle            DW      17
                        DB      38, 30
                        DW      0, 2Fh
                        DB      80h
                        DW      11, 47, 29, 28

InstDPTB                DW      9
                        DB      38, 31
                        DW      0, 64
                        DW      2, 2Fh
                        DW      46, 15, 29, 28
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

InstVSTBBox             DW      0
                        DB      37, 38, 47, 40
                        DB      9

InstVSTB                DW      9
                        DB      38, 39
                        DW      0, 64
                        DW      2, 4Ch
                        DW      47, 19, 37, 28
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

InstVDTBBox             DW      0
                        DB      37, 45, 47, 47
                        DB      9

InstVDTB                DW      14
                        DB      38, 46
                        DW      0, 32
                        DW      2, 4Dh
                        DW      15, 0FFFFh, 23, 28
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn
                        DW      8

InstVRTBBox             DW      0
                        DB      55, 45, 72, 47
                        DB      9

InstVRTB                DW      14
                        DB      56, 46
                        DW      0, 255
                        DW      2, 4Eh
                        DW      39, 0FFFFh, 28, 19
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn
                        DW      15

InstGVBox               DW      0
                        DB      36, 19, 53, 25
                        DB      9

InstDPBox               DW      0
                        DB      36, 26, 53, 33
                        DB      9

InstVSBox               DW      0
                        DB      36, 35, 53, 41
                        DB      9

InstVDBox               DW      0
                        DB      36, 42, 53, 48
                        DB      9

InstVRBox               DW      0
                        DB      54, 42, 77, 48
                        DB      9

InstParamBox            DW      0
                        DB      63, 12, 77, 24
                        DB      27

InstVWBox               DW      0
                        DB      54, 31, 77, 41
                        DB      9

InstDVText              DW      1
                        DB      38, 14
                        DB      20h
                        DB      "Default Volume", 0

InstGVText              DW      1
                        DB      38, 21
                        DB      20h
                        DB      "Global Volume", 0

InstDPText              DW      1
                        DB      39, 28
                        DB      20h
                        DB      "Default Pan", 0

InstVSText              DW      1
                        DB      38, 37
                        DB      20h
                        DB      "Vibrato Speed", 0

InstVDText              DW      1
                        DB      38, 44
                        DB      20h
                        DB      "Vibrato Depth", 0

InstVRText              DW      1
                        DB      60, 44
                        DB      20h
                        DB      "Vibrato Rate", 0

InstVWText              DW      1
                        DB      58, 33
                        DB      20h
                        DB      "Vibrato Waveform", 0

InstParamText           DW      1
                        DB      55, 13
                        DB      20h
                        DB      "Filename", 13
                        DB      "   Speed", 13
                        DB      "    Loop", 13
                        DB      " LoopBeg", 13
                        DB      " LoopEnd", 13
                        DB      " SusLoop", 13
                        DB      " SusLBeg", 13
                        DB      " SusLEnd", 13
                        DB      0FFh, 8, ' ', 0FEh, 21h, 146, 0FEh, 3, 0FFh, 13, 154, 0FEh, 20h, 13
                        DB      " Quality", 13
                        DB      "  Length"
                        DB      0

InstVibSine             DW      2
                        DW      36, 39, 15, 38
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr I_SampleButtonHandler
                        DW      0, 4Fh, 0
                        DB      56, 35, 65, 37
                        DB      8
                        DB      0
                        DB      "   ", 185, 186, 0

InstVibRamp             DW      2
                        DW      36, 40, 37, 28
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr I_SampleButtonHandler
                        DW      1, 4Fh, 0
                        DB      66, 35, 75, 37
                        DB      8
                        DB      0
                        DB      "   ", 189, 190, 0

InstVibSquare           DW      2
                        DW      37, 23, 15, 40
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr I_SampleButtonHandler
                        DW      2, 4Fh, 0
                        DB      56, 38, 65, 40
                        DB      8
                        DB      0
                        DB      "   ", 187, 188, 0

InstVibRandom           DW      2
                        DW      38, 23, 39, 28
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr I_SampleButtonHandler
                        DW      3, 4Fh, 0
                        DB      66, 38, 75, 40
                        DB      8
                        DB      0
                        DB      " Random", 0

InstWaveFormBox         DW      0
                        DB      54, 25, 77, 30
                        DB      9

InstWaveFormText        DW      1
                        DB      55, 26
                        DB      0Dh
                        DB      1, 2, 3, 4, 5, 6, 7, 8, 9, 0FFh, 1, 10, 11
                        DB      12, 0FFh, 1, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 13
                        DB      23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33
                        DB      34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 13
                        DB      45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55
                        DB      56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 13
                        DB      67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77
                        DB      78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88
                        DB      0

SampleList              DW      15
                        DD      DWord Ptr I_DrawSampleList
                        DD      DWord Ptr I_PreSampleList
                        DD      DWord Ptr I_PostSampleList

EMSErrorText            DW      1
                        DB      27, 26
                        DB      20h
                        DB      "Crash warning: EMS error", 13
                        DB      " Debug: ", 0FDh, "Xh, ", 0FDh, "D, ", 0FDh, "D, ", 0FDh, "X", 13
                        DB      0FFh, 8, " "
                        DB      0FDh, "X:"
                        DB      0FDh, "X:"
                        DB      0FDh, "X:"
                        DB      0FDh, "X", 0
EMSErrorValue7          DW      0
EMSErrorValue6          DW      0
EMSErrorValue5          DW      0
EMSErrorValue4          DW      0
EMSErrorValue8          DW      0
EMSErrorValue3          DW      0
EMSErrorValue2          DW      0
EMSErrorValue           DW      0

EMSErrorBox             DW      0
                        DB      25, 24, 54, 32
                        DB      3

TemplateErrorBox        DW      0
                        DB      20, 23, 59, 34
                        DB      3

TemplateErrorText       DW      1
                        DB      24, 25
                        DB      20h
                        DB      0FFh, 9, " Template Error", 13, 13
                        DB      "No note in the top left position", 13
                        DB      "  of the clipboard on which to", 13
                        DB      0FFh, 7, " base translations.", 0

%IF  NETWORKENABLED
NetworkErrorText        DW      1
                        DB      23, 25
                        DB      20h
                        DB      0FFh, 10, " Network Error", 13, 13
                        DB      "This function is not available in", 13
                        DB      " multi-composer mode. Disconnect", 13
                        DB      "   from network mode to enable.", 0
%ENDIF 

CrashRecoveryBox        DW      0
                        DB      20, 19, 60, 30
                        DB      3

CrashRecoveryText       DW      1
                        DB      22, 21
                        DB      20h
                        DB      0FFh, 12, " Crash Recovery", 13, 13
                        DB      "    Please save your work under a", 13
                        DB      "   different filename, reboot your", 13
                        DB      "computer and rerun Impulse Tracker as", 13
                        DB      " the system is likely to be unstable", 0

%IF  SHOWPATTERNLENGTH

PatternLengthText       DW      1
                        DB      27, 27
                        DB      20h
                        DB      "Pattern is ", 0FDh, 'D', " bytes long", 0
PatternLength           DW      0

%ENDIF 

C5FrequencyText         DW      8
                        DD      DWord Ptr I_PrintC5Frequency

AmpExtraKeyList         Label
                        DB      1
                        DW      2400h            ; Alt-J
                        DD      DWord Ptr F_Return1

                        DB      0               ; ESC
                        DW      101h
                        DD      DWord Ptr F_Return0

                        DB      0               ; Enter
                        DW      11Ch
                        DD      DWord Ptr F_Return1

                        DB      0FFh

AmpBox                  DW      0
                        DB      22, 25, 57, 35
                        DB      3

SampleAmpBox            DW      0
                        DB      9, 25, 69, 35
                        DB      3

AmpText                 DW      1
                        DB      27, 27
                        DB      "   Volume Amplification %", 0

SampleAmpText           DW      1
                        DB      27, 27
                        DB      "   Sample Amplification %", 0

AmpTBBox                DW      0
                        DB      25, 29, 52, 31
                        DB      25

FastAmpTBBox            DW      0
                        DB      32, 29, 44, 31
                        DB      25

SampleAmpTBBox          DW      0
                        DB      12, 29, 64, 31
                        DB      25

AmpTB                   DW      9
                        DB      26, 30
                        DW      0, 200
                        DW      1, Amplification
                        DW      4, 4, 4, 4
                        DW      0FFFFh, 0FFFFh

InstrumentAmpTB         DW      9
                        DB      26, 30
                        DW      0, 200
                        DW      8, InstrumentAmplification
                        DW      4, 4, 4, 4
                        DW      0FFFFh, 0FFFFh

FastAmpTB               DW      9
                        DB      33, 30
                        DW      10, 90
                        DW      1, FastVolumeAmplification
                        DW      4, 4, 4, 4
                        DW      0FFFFh, 0FFFFh

SampleAmpTB             DW      9
                        DB      13, 30
                        DW      0, 400
                        DW      8, SampleAmplification
                        DW      4, 4, 4, 4
                        DW      0FFFFh, 0FFFFh


ConfirmOKButton         DW      2
                        DW      3, 3, 5, 5
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      1               ; Returns 1
                        DW      0, 0, 0, 0
                        DB      30, 32, 39, 34
                        DB      8
                        DB      0
                        DB      "   OK", 0

ConfirmCancelButton     DW      2
                        DW      3, 3, 4, 4
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0               ; Returns 0
                        DW      0, 0, 0, 0
                        DB      40, 32, 49, 34
                        DB      8
                        DB      0
                        DB      " Cancel", 0

PatternTooLongText      DW      1
                        DB      28, 27
                        DB      20h
                        DB      "Pattern data exceeds 64k", 0

NBDText                 DW      1
                        DB      30, 27
                        DB      20h
                        DB      "No data in clipboard", 0

OOSoundCardMemoryText   DW      1
                        DB      27, 27
                        DB      20h
                        DB      "Insufficient Soundcard RAM", 0

OOSText                 DW      1
                        DB      31, 27
                        DB      20h
                        DB      "Too many samples!", 0


OOMText                 DW      1
                        DB      30, 27
                        DB      20h
                        DB      "Insufficient memory", 0

PSMText                 DW      1
                        DB      27, 26
                        DB      20h
                        DB      "      Crash Warning:", 13
                        DB      "  Pattern Size Mismatch", 13
                        DB      "Fix: Remove corrupted data", 0

LongMsgText             DW      1
                        DB      29, 27
                        DB      20h
                        DB      "Song message too long!", 0

OLBText                 DW      1
                        DB      30, 27
                        DB      20h
                        DB      "Swap blocks overlap", 0

SOORText                DW      1
                        DB      30, 27
                        DB      20h
                        DB      "Out of pattern range", 0

NBMBox                  DW      0
                        DB      25, 25, 54, 32
                        DB      3

NBMText                 DW      1
                        DB      31, 27
                        DB      20h
                        DB      "No block is marked", 0

OKButton                DW      2
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0               ; Returns 0
                        DW      0, 0, 0, 0
                        DB      35, 29, 44, 31
                        DB      8
                        DB      0
                        DB      "   OK", 0


CrashRecoveryOKButton   DW      2
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0               ; Returns 0
                        DW      0, 0, 0, 0
                        DB      35, 27, 44, 29
                        DB      8
                        DB      0
                        DB      "   OK", 0


TemplateOKButton        DW      2
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0               ; Returns 0
                        DW      0, 0, 0, 0
                        DB      35, 31, 44, 33
                        DB      8
                        DB      0
                        DB      "   OK", 0


PECLinkButton           DW      2
                        DW      18, 13, 20, 20
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr PE_SetCommandCursor
                        DW      1
                        DW      0
                        DW      0
                        DB      39, 37, 50, 39
                        DB      8
                        DB      0
                        DB      "   Link", 0

PECSplitButton          DW      2
                        DW      18, 13, 19, 19
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr PE_SetCommandCursor
                        DW      0
                        DW      0
                        DW      0
                        DB      51, 37, 63, 39
                        DB      8
                        DB      0
                        DB      "   Split", 0


PECBox1                 DW      0
                        DB      39, 22, 42, 24
                        DB      9

PECBox2                 DW      0
                        DB      39, 25, 43, 27
                        DB      9

PECBox3                 DW      0
                        DB      39, 28, 45, 30
                        DB      9

PECBox4                 DW      0
                        DB      39, 31, 57, 33
                        DB      9

PECBox5                 DW      0
                        DB      39, 34, 62, 36
                        DB      9

PEConfigBox             DW      0
                        DB      10, 18, 69, 43
                        DB      3

PEConfigText            DW      1
                        DB      28, 19
                        DB      20h
                        DB      "Pattern Editor Options", 0

PEConfigBsOctText       DW      1
                        DB      28, 23
                        DB      20h
                        DB      "Base octave", 0

PEConfigSkipValueText   DW      1
                        DB      28, 26
                        DB      20h
                        DB      "Cursor step", 0

PEConfigRHLMinorText    DW      1
                        DB      22, 29
                        DB      20h
                        DB      "Row hilight minor", 0

PEConfigRHLMajorText    DW      1
                        DB      22, 32
                        DB      20h
                        DB      "Row hilight major", 0

PEConfigMaxRowsText     DW      1
                        DB      14, 35
                        DB      20h
                        DB      "Number of rows in pattern", 0

PEConfigCommandCursor   DW      1
                        DB      18, 38
                        DB      20h
                        DB      "Command/Value columns", 0

PEConfigDoneButton      DW      2
                        DW      19, 14, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0               ; Returns 0
                        DW      0, 0, 0, 0
                        DB      34, 40, 45, 42
                        DB      8
                        DB      0
                        DB      "   Done", 0

PETBBaseOctave          DW      9
                        DB      40, 23
                        DW      0, 8
                        DW      1, BaseOctave
                        DW      13, 15, 15, 13
                        DW      0FFFFh, 0FFFFh

PETBSkipValue           DW      9
                        DB      40, 26
                        DW      0, 16
                        DW      1, SkipValue
                        DW      14, 16, 16, 14
                        DW      0FFFFh, 0FFFFh

PETBRHLMinor            DW      9
                        DB      40, 29
                        DW      0, 32
                        DW      1, RowHiLight1
                        DW      15, 17, 17, 15
                        DW      0FFFFh, 0FFFFh

PETBRHLMajor            DW      9
                        DB      40, 32
                        DW      0, 128
                        DW      1, RowHiLight2
                        DW      16, 18, 18, 16
                        DW      0FFFFh, 0FFFFh

PETBMaxRow              DW      9
                        DB      40, 35
                        DW      32, 200
                        DW      1, NumberOfRows
                        DW      17, 19, 19, 17
                        DW      0FFFFh, 0FFFFh

PatternEdit             DW      15
                        DD      DWord Ptr PE_DrawPatternEdit
                        DD      DWord Ptr PE_PrePatternEdit
                        DD      DWord Ptr PE_PostPatternEdit

PatternEditMsg          DW      10
                        DB      "Pattern Editor (F2)", 0

HelpKeyList             DB      0
                        DW      1C8h
                        DD      DWord Ptr H_HelpUp

                        DB      0
                        DW      1D0h
                        DD      DWord Ptr H_HelpDown

                        DB      0
                        DW      1C9h
                        DD      DWord Ptr H_HelpPgUp

                        DB      0
                        DW      1D1h
                        DD      DWord Ptr H_HelpPgDn

                        DB      0
                        DW      101h
                        DD      DWord Ptr H_HelpESC

                        DB      5
                        DW      GlobalKeyChain

ShowHelp                DW      8
                        DD      DWord Ptr H_DrawHelp

HelpBox                 DW      0
                        DB      1, 12, 78, 45
                        DW      27

HelpMsg                 DW      10
                        DB      "Help", 0

HelpDoneButton          DW      2
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr H_HelpESC
                        DW      0, 0, 0
                        DB      34, 46, 45, 48
                        DB      8
                        DB      0
                        DB      "   Done", 0

SetHelpOrderPanning     DW      11
                        DW      0

OrderBox                DW      0
                        DB      5, 14, 9, 47
                        DB      27

OrderList               DW      12
                        DB      2, 15
                        DW      32
                        DW      11, 43

ShowChannelMsgs         DW      8
                        DD      DWord Ptr F_ShowChannels

FillHeader              DW      8
                        DD      DWord Ptr PE_FillHeader

PanBox1                 DW      0
                        DB      30, 14, 40, 47
                        DB      15

PanBox2                 DW      0
                        DB      64, 14, 74, 47
                        DB      15

PanText1                DW      1
                        DB      30, 14
                        DB      23h
                        DB      146, 0FEh, 30h, "L   M   R", 0FEh, 23h, 145, 0

PanText2                DW      1
                        DB      64, 14
                        DB      23h
                        DB      146, 0FEh, 30h, "L   M   R", 0FEh, 23h, 145, 0

VolumeText1             DW      1
                        DB      30, 14
                        DB      23h
                        DB      146, 0FEh, 30h, " Volumes ", 0FEh, 23h, 145, 0

VolumeText2             DW      1
                        DB      64, 14
                        DB      23h
                        DB      146, 0FEh, 30h, " Volumes ", 0FEh, 23h, 145, 0


Channel1                DW      9                       ; Object 9
                        DB      31, 15                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 0                    ; Pan/Channel 1
                        DW      11, 12, 43, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 19                  ; PgUp/PgDn

Channel2                DW      9
                        DB      31, 16
                        DW      0, 64
                        DW      0, 1                    ; Pan/Channel 2
                        DW      11, 13, 44, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 20                  ; PgUp/PgDn

Channel3                DW      9                       ; Object 9
                        DB      31, 17                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 2                    ; Pan/Channel 3
                        DW      12, 14, 45, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 21                  ; PgUp/PgDn

Channel4                DW      9
                        DB      31, 18
                        DW      0, 64
                        DW      0, 3                    ; Pan/Channel 4
                        DW      13, 15, 46, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 22                  ; PgUp/PgDn

Channel5                DW      9                       ; Object 9
                        DB      31, 19                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 4                    ; Pan/Channel 5
                        DW      14, 16, 47, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 23                  ; PgUp/PgDn

Channel6                DW      9
                        DB      31, 20
                        DW      0, 64
                        DW      0, 5                    ; Pan/Channel 6
                        DW      15, 17, 48, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 24                  ; PgUp/PgDn

Channel7                DW      9                       ; Object 9
                        DB      31, 21                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 6                    ; Pan/Channel 7
                        DW      16, 18, 49, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 25                  ; PgUp/PgDn

Channel8                DW      9
                        DB      31, 22
                        DW      0, 64
                        DW      0, 7                    ; Pan/Channel 8
                        DW      17, 19, 50, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 26                  ; PgUp/PgDn

Channel9                DW      9                       ; Object 9
                        DB      31, 23                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 8                    ; Pan/Channel 9
                        DW      18, 20, 51, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 27                  ; PgUp/PgDn

Channel10               DW      9
                        DB      31, 24
                        DW      0, 64
                        DW      0, 9                    ; Pan/Channel 10
                        DW      19, 21, 52, 10          ; Up/Down/Tab/Shift-Tab
                        DW      12, 28                  ; PgUp/PgDn

Channel11               DW      9                       ; Object 9
                        DB      31, 25                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 10                   ; Pan/Channel 11
                        DW      20, 22, 53, 10          ; Up/Down/Tab/Shift-Tab
                        DW      13, 29                  ; PgUp/PgDn

Channel12               DW      9
                        DB      31, 26
                        DW      0, 64
                        DW      0, 11                   ; Pan/Channel 12
                        DW      21, 23, 54, 10          ; Up/Down/Tab/Shift-Tab
                        DW      14, 30                  ; PgUp/PgDn

Channel13               DW      9                       ; Object 9
                        DB      31, 27                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 12                   ; Pan/Channel 13
                        DW      22, 24, 55, 10          ; Up/Down/Tab/Shift-Tab
                        DW      15, 31                  ; PgUp/PgDn

Channel14               DW      9
                        DB      31, 28
                        DW      0, 64
                        DW      0, 13                   ; Pan/Channel 14
                        DW      23, 25, 56, 10          ; Up/Down/Tab/Shift-Tab
                        DW      16, 32                  ; PgUp/PgDn

Channel15               DW      9                       ; Object 9
                        DB      31, 29                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 14                   ; Pan/Channel 15
                        DW      24, 26, 57, 10          ; Up/Down/Tab/Shift-Tab
                        DW      17, 33                  ; PgUp/PgDn

Channel16               DW      9
                        DB      31, 30
                        DW      0, 64
                        DW      0, 15                   ; Pan/Channel 16
                        DW      25, 27, 58, 10          ; Up/Down/Tab/Shift-Tab
                        DW      18, 34                  ; PgUp/PgDn

Channel17               DW      9                       ; Object 9
                        DB      31, 31                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 16                   ; Pan/Channel 17
                        DW      26, 28, 59, 10          ; Up/Down/Tab/Shift-Tab
                        DW      19, 35                  ; PgUp/PgDn

Channel18               DW      9
                        DB      31, 32
                        DW      0, 64
                        DW      0, 17                   ; Pan/Channel 18
                        DW      27, 29, 60, 10          ; Up/Down/Tab/Shift-Tab
                        DW      20, 36                  ; PgUp/PgDn

Channel19               DW      9                       ; Object 9
                        DB      31, 33                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 18                   ; Pan/Channel 19
                        DW      28, 30, 61, 10          ; Up/Down/Tab/Shift-Tab
                        DW      21, 37                  ; PgUp/PgDn

Channel20               DW      9
                        DB      31, 34
                        DW      0, 64
                        DW      0, 19                   ; Pan/Channel 20
                        DW      29, 31, 62, 10          ; Up/Down/Tab/Shift-Tab
                        DW      22, 38                  ; PgUp/PgDn

Channel21               DW      9                       ; Object 9
                        DB      31, 35                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 20                   ; Pan/Channel 21
                        DW      30, 32, 63, 10          ; Up/Down/Tab/Shift-Tab
                        DW      23, 39                  ; PgUp/PgDn

Channel22               DW      9
                        DB      31, 36
                        DW      0, 64
                        DW      0, 21                   ; Pan/Channel 22
                        DW      31, 33, 64, 10          ; Up/Down/Tab/Shift-Tab
                        DW      24, 40                  ; PgUp/PgDn

Channel23               DW      9                       ; Object 9
                        DB      31, 37                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 22                   ; Pan/Channel 23
                        DW      32, 34, 65, 10          ; Up/Down/Tab/Shift-Tab
                        DW      25, 41                  ; PgUp/PgDn

Channel24               DW      9
                        DB      31, 38
                        DW      0, 64
                        DW      0, 23                   ; Pan/Channel 24
                        DW      33, 35, 66, 10          ; Up/Down/Tab/Shift-Tab
                        DW      26, 42                  ; PgUp/PgDn

Channel25               DW      9                       ; Object 9
                        DB      31, 39                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 24                   ; Pan/Channel 25
                        DW      34, 36, 67, 10          ; Up/Down/Tab/Shift-Tab
                        DW      27, 43                  ; PgUp/PgDn

Channel26               DW      9
                        DB      31, 40
                        DW      0, 64
                        DW      0, 25                   ; Pan/Channel 26
                        DW      35, 37, 68, 10          ; Up/Down/Tab/Shift-Tab
                        DW      28, 44                  ; PgUp/PgDn

Channel27               DW      9                       ; Object 9
                        DB      31, 41                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 26                   ; Pan/Channel 27
                        DW      36, 38, 69, 10          ; Up/Down/Tab/Shift-Tab
                        DW      29, 45                  ; PgUp/PgDn

Channel28               DW      9
                        DB      31, 42
                        DW      0, 64
                        DW      0, 27                   ; Pan/Channel 28
                        DW      37, 39, 70, 10          ; Up/Down/Tab/Shift-Tab
                        DW      30, 46                  ; PgUp/PgDn

Channel29               DW      9                       ; Object 9
                        DB      31, 43                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 28                   ; Pan/Channel 29
                        DW      38, 40, 71, 10          ; Up/Down/Tab/Shift-Tab
                        DW      31, 47                  ; PgUp/PgDn

Channel30               DW      9
                        DB      31, 44
                        DW      0, 64
                        DW      0, 29                   ; Pan/Channel 30
                        DW      39, 41, 72, 10          ; Up/Down/Tab/Shift-Tab
                        DW      32, 48                  ; PgUp/PgDn

Channel31               DW      9                       ; Object 9
                        DB      31, 45                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 30                   ; Pan/Channel 31
                        DW      40, 42, 73, 10          ; Up/Down/Tab/Shift-Tab
                        DW      33, 49                  ; PgUp/PgDn

Channel32               DW      9
                        DB      31, 46
                        DW      0, 64
                        DW      0, 31                   ; Pan/Channel 32
                        DW      41, 43, 74, 10          ; Up/Down/Tab/Shift-Tab
                        DW      34, 50                  ; PgUp/PgDn

Channel33               DW      9                       ; Object 9
                        DB      65, 15                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 32                   ; Pan/Channel 33
                        DW      42, 44, 10, 11          ; Up/Down/Tab/Shift-Tab
                        DW      35, 51                  ; PgUp/PgDn

Channel34               DW      9
                        DB      65, 16
                        DW      0, 64
                        DW      0, 33                   ; Pan/Channel 34
                        DW      43, 45, 10, 12          ; Up/Down/Tab/Shift-Tab
                        DW      36, 52                  ; PgUp/PgDn

Channel35               DW      9                       ; Object 9
                        DB      65, 17                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 34                   ; Pan/Channel 35
                        DW      44, 46, 10, 13          ; Up/Down/Tab/Shift-Tab
                        DW      37, 53                  ; PgUp/PgDn

Channel36               DW      9
                        DB      65, 18
                        DW      0, 64
                        DW      0, 35                   ; Pan/Channel 36
                        DW      45, 47, 10, 14          ; Up/Down/Tab/Shift-Tab
                        DW      38, 54                  ; PgUp/PgDn

Channel37               DW      9                       ; Object 9
                        DB      65, 19                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 36                   ; Pan/Channel 37
                        DW      46, 48, 10, 15          ; Up/Down/Tab/Shift-Tab
                        DW      39, 55                  ; PgUp/PgDn

Channel38               DW      9
                        DB      65, 20
                        DW      0, 64
                        DW      0, 37                   ; Pan/Channel 38
                        DW      47, 49, 10, 16          ; Up/Down/Tab/Shift-Tab
                        DW      40, 56                  ; PgUp/PgDn

Channel39               DW      9                       ; Object 9
                        DB      65, 21                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 38                   ; Pan/Channel 39
                        DW      48, 50, 10, 17          ; Up/Down/Tab/Shift-Tab
                        DW      41, 57                  ; PgUp/PgDn

Channel40               DW      9
                        DB      65, 22
                        DW      0, 64
                        DW      0, 39                   ; Pan/Channel 40
                        DW      49, 51, 10, 18          ; Up/Down/Tab/Shift-Tab
                        DW      42, 58                  ; PgUp/PgDn

Channel41               DW      9                       ; Object 9
                        DB      65, 23                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 40                   ; Pan/Channel 41
                        DW      50, 52, 10, 19          ; Up/Down/Tab/Shift-Tab
                        DW      43, 59                  ; PgUp/PgDn

Channel42               DW      9
                        DB      65, 24
                        DW      0, 64
                        DW      0, 41                   ; Pan/Channel 42
                        DW      51, 53, 10, 20          ; Up/Down/Tab/Shift-Tab
                        DW      44, 60                  ; PgUp/PgDn

Channel43               DW      9                       ; Object 9
                        DB      65, 25                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 42                   ; Pan/Channel 43
                        DW      52, 54, 10, 21          ; Up/Down/Tab/Shift-Tab
                        DW      45, 61                  ; PgUp/PgDn

Channel44               DW      9
                        DB      65, 26
                        DW      0, 64
                        DW      0, 43                   ; Pan/Channel 44
                        DW      53, 55, 10, 22          ; Up/Down/Tab/Shift-Tab
                        DW      46, 62                  ; PgUp/PgDn

Channel45               DW      9                       ; Object 9
                        DB      65, 27                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 44                   ; Pan/Channel 45
                        DW      54, 56, 10, 23          ; Up/Down/Tab/Shift-Tab
                        DW      47, 63                  ; PgUp/PgDn

Channel46               DW      9
                        DB      65, 28
                        DW      0, 64
                        DW      0, 45                   ; Pan/Channel 46
                        DW      55, 57, 10, 24          ; Up/Down/Tab/Shift-Tab
                        DW      48, 64                  ; PgUp/PgDn

Channel47               DW      9                       ; Object 9
                        DB      65, 29                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 46                   ; Pan/Channel 47
                        DW      56, 58, 10, 25          ; Up/Down/Tab/Shift-Tab
                        DW      49, 65                  ; PgUp/PgDn

Channel48               DW      9
                        DB      65, 30
                        DW      0, 64
                        DW      0, 47                   ; Pan/Channel 48
                        DW      57, 59, 10, 26          ; Up/Down/Tab/Shift-Tab
                        DW      50, 66                  ; PgUp/PgDn

Channel49               DW      9                       ; Object 9
                        DB      65, 31                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 48                   ; Pan/Channel 49
                        DW      58, 60, 10, 27          ; Up/Down/Tab/Shift-Tab
                        DW      51, 67                  ; PgUp/PgDn

Channel50               DW      9
                        DB      65, 32
                        DW      0, 64
                        DW      0, 49                   ; Pan/Channel 50
                        DW      59, 61, 10, 28          ; Up/Down/Tab/Shift-Tab
                        DW      52, 68                  ; PgUp/PgDn

Channel51               DW      9                       ; Object 9
                        DB      65, 33                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 50                   ; Pan/Channel 51
                        DW      60, 62, 10, 29          ; Up/Down/Tab/Shift-Tab
                        DW      53, 69                  ; PgUp/PgDn

Channel52               DW      9
                        DB      65, 34
                        DW      0, 64
                        DW      0, 51                   ; Pan/Channel 52
                        DW      61, 63, 10, 30          ; Up/Down/Tab/Shift-Tab
                        DW      54, 70                  ; PgUp/PgDn

Channel53               DW      9                       ; Object 9
                        DB      65, 35                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 52                   ; Pan/Channel 53
                        DW      62, 64, 10, 31          ; Up/Down/Tab/Shift-Tab
                        DW      55, 71                  ; PgUp/PgDn

Channel54               DW      9
                        DB      65, 36
                        DW      0, 64
                        DW      0, 53                   ; Pan/Channel 54
                        DW      63, 65, 10, 32          ; Up/Down/Tab/Shift-Tab
                        DW      56, 72                  ; PgUp/PgDn

Channel55               DW      9                       ; Object 9
                        DB      65, 37                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 54                   ; Pan/Channel 55
                        DW      64, 66, 10, 33          ; Up/Down/Tab/Shift-Tab
                        DW      57, 73                  ; PgUp/PgDn

Channel56               DW      9
                        DB      65, 38
                        DW      0, 64
                        DW      0, 55                   ; Pan/Channel 56
                        DW      65, 67, 10, 34          ; Up/Down/Tab/Shift-Tab
                        DW      58, 74                  ; PgUp/PgDn

Channel57               DW      9                       ; Object 9
                        DB      65, 39                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 56                   ; Pan/Channel 57
                        DW      66, 68, 10, 35          ; Up/Down/Tab/Shift-Tab
                        DW      59, 74                  ; PgUp/PgDn

Channel58               DW      9
                        DB      65, 40
                        DW      0, 64
                        DW      0, 57                   ; Pan/Channel 58
                        DW      67, 69, 10, 36          ; Up/Down/Tab/Shift-Tab
                        DW      60, 74                  ; PgUp/PgDn

Channel59               DW      9                       ; Object 9
                        DB      65, 41                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 58                   ; Pan/Channel 59
                        DW      68, 70, 10, 37          ; Up/Down/Tab/Shift-Tab
                        DW      61, 74                  ; PgUp/PgDn

Channel60               DW      9
                        DB      65, 42
                        DW      0, 64
                        DW      0, 59                   ; Pan/Channel 60
                        DW      69, 71, 10, 38          ; Up/Down/Tab/Shift-Tab
                        DW      62, 74                  ; PgUp/PgDn

Channel61               DW      9                       ; Object 9
                        DB      65, 43                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 60                   ; Pan/Channel 61
                        DW      70, 72, 10, 39          ; Up/Down/Tab/Shift-Tab
                        DW      63, 74                  ; PgUp/PgDn

Channel62               DW      9
                        DB      65, 44
                        DW      0, 64
                        DW      0, 61                   ; Pan/Channel 62
                        DW      71, 73, 10, 40          ; Up/Down/Tab/Shift-Tab
                        DW      64, 74                  ; PgUp/PgDn

Channel63               DW      9                       ; Object 9
                        DB      65, 45                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      0, 62                   ; Pan/Channel 63
                        DW      72, 74, 10, 41          ; Up/Down/Tab/Shift-Tab
                        DW      65, 74                  ; PgUp/PgDn

Channel64               DW      9
                        DB      65, 46
                        DW      0, 64
                        DW      0, 63                   ; Pan/Channel 64
                        DW      73, 74, 10, 42          ; Up/Down/Tab/Shift-Tab
                        DW      66, 74                  ; PgUp/PgDn

OrderAndPanningMsg      DW      10
                        DB      "Order List and Panning (F11)", 0

OrderAndVolumeMsg       DW      10
                        DB      "Order List and Channel Volume (F11)", 0

FullScreenBox           DW      0
                        DB      0, 0, 79, 49
                        DB      4

ScreenHeader            DW      8
                        DD      DWord Ptr F_DrawHeader

CallAutoDetect          DW      8
                        DD      DWord Ptr Music_ShowAutoDetectSoundCard

AutoMiniBox             DW      0
                        DB      25, 25, 55, 30
                        DB      0

AutoDetectText          DW      1
                        DB      32, 26
                        DB      20h
                        DB      "Sound Card Setup", 0

LoadSampleKeyList       DB      0
                        DW      101h            ; ESC
                        DD      DWord Ptr Glbl_F3

ViewSampleKeyList       Label
                        DB      0
                        DW      1C9h            ; PgUp
                        DD      DWord Ptr LSWindow_Up

                        DB      0
                        DW      1D1h            ; PgDn
                        DD      DWord Ptr LSWindow_Down

                        DB      1               ; Alt
                        DW      1F00h           ; 'S'
                        DD      DWord Ptr D_SlowSampleSort

                        DB      5               ; Chain to...
                        DW      GlobalKeyList


LoadInstrumentKeyList   DB      0
                        DW      101h            ; ESC
                        DD      DWord Ptr Glbl_F4

                        DB      1               ; Alt
                        DW      1F00h           ; 'S'
                        DD      DWord Ptr D_SlowInstrumentSort

                        DB      5
                        DW      GlobalKeyList

GlobalKeyList           DB      0               ; F1
HelpKeyValue            DW      13Bh
                        DD      DWord Ptr H_Help

GlobalKeyChain:
                        DB      3               ; Ctrl...
                        DW      13Bh            ; F1
                        DD      DWord Ptr Glbl_Ctrl_F1

                        DB      0               ; F2
                        DW      13Ch
                        DD      DWord Ptr Glbl_F2

                        DB      0               ; F3
                        DW      13Dh
                        DD      DWord Ptr Glbl_F3

                        DB      3               ; Ctrl...
                        DW      13Dh            ; F3
                        DD      DWord Ptr Glbl_Ctrl_F3

                        DB      0               ; F4
                        DW      13Eh
                        DD      DWord Ptr Glbl_F4

                        DB      3               ; Ctrl...
                        DW      13Eh            ; F4
                        DD      DWord Ptr Glbl_Ctrl_F4

                        DB      0               ; F5
                        DW      13Fh
                        DD      DWord Ptr Glbl_F5

                        DB      1
                        DW      12h             ; Ctrl 'R'
                        DD      DWord Ptr Glbl_F9

                        DB      1
                        DW      0Ch             ; Ctrl 'L'
                        DD      DWord Ptr Glbl_F9

                        DB      0               ; F9
                        DW      142h
                        DD      DWord Ptr Glbl_F8

                        DB      0               ; F9
                        DW      143h
                        DD      DWord Ptr Glbl_F9

                        DB      6               ; F9
                        DW      143h
                        DD      DWord Ptr Glbl_Shift_F9

                        DB      1
                        DW      17h             ; Ctrl 'W'
                        DD      DWord Ptr Glbl_F10

                        DB      0               ; F10
                        DW      144h
                        DD      DWord Ptr Glbl_F10

                        DB      0               ; F11
OrderKeyValue           DW      157h
                        DD      DWord Ptr Glbl_F11

                        DB      0               ; F12
                        DW      158h
                        DD      DWord Ptr Glbl_F12

                        DB      3               ; Ctrl..
                        DW      158h            ; F1
                        DD      DWord Ptr Glbl_Ctrl_F12

                        DB      0               ; ESC
                        DW      101h
                        DD      DWord Ptr F_MainMenu

                        DB      1
                        DW      04h             ; Ctrl 'D'
                        DD      DWord Ptr DOSShell

                        DB      1
                        DW      05h             ; Ctrl 'E'
                        DD      DWord Ptr Refresh

                        DB      1
                        DW      13h             ; Ctrl 'S'
                        DD      DWord Ptr D_SaveSong

                        DB      1
                        DW      11h             ; Ctrl 'Q'
                        DD      DWord Ptr Quit

                        DB      1
                        DW      0Dh             ; Ctrl 'M'
                        DD      DWord Ptr MouseToggle

                        DB      1
                        DW      0Eh             ; Ctrl 'N'
                        DD      DWord Ptr F_NewSong

                        DB      1
                        DW      7h              ; Ctrl 'G'
                        DD      DWord Ptr Music_SoundCardLoadAllSamples

                        DB      1
                        DW      9               ; Ctrl 'I'
                        DD      DWord Ptr Music_ReinitSoundCard

                        DB      1
                        DW      16              ; Ctrl 'P'
                        DD      DWord Ptr Music_TimeSong

%IF  MEMORYDEBUG
                        DB      0
                        DW      15B7h           ; Right shift+Ctrl+Printscreen
                        DD      DWord Ptr Glbl_Debug
%ENDIF 

                        DB      2               ; Alt..
                        DW      13Bh            ; F1
                        DD      DWord Ptr Glbl_Alt_F1

                        DB      2               ; Alt..
                        DW      13Ch            ; F2
                        DD      DWord Ptr Glbl_Alt_F2

                        DB      2               ; Alt..
                        DW      13Dh            ; F3
                        DD      DWord Ptr Glbl_Alt_F3

                        DB      2               ; Alt..
                        DW      13Eh            ; F4
                        DD      DWord Ptr Glbl_Alt_F4

                        DB      2               ; Alt..
                        DW      13Fh            ; F5
                        DD      DWord Ptr Glbl_Alt_F5

                        DB      2               ; Alt..
                        DW      140h            ; F6
                        DD      DWord Ptr Glbl_Alt_F6

                        DB      2               ; Alt..
                        DW      141h            ; F7
                        DD      DWord Ptr Glbl_Alt_F7

                        DB      2               ; Alt..
                        DW      142h            ; F8
                        DD      DWord Ptr Glbl_Alt_F8

                        DB      2               ; Alt..
                        DW      157h            ; F11
                        DD      DWord Ptr Music_ToggleOrderUpdate

%IF  NETWORKENABLED
                        DB      6               ; Shift
                        DW      101h            ; ESC
                        DD      DWord Ptr Network_DriverScreen
%ENDIF 

                        DB      6               ; Shift F1
                        DW      13Bh
                        DD      DWord Ptr Glbl_Shift_F1

                        DB      6               ; Shift F5
                        DW      13Fh
                        DD      DWord Ptr Glbl_DriverScreen

%IF  TIMERSCREEN
                        DB      0               ; Left shift, left+right alt
                        DW      73C6h           ; Right ctrl + Pause
                        DD      DWord Ptr Glbl_TimerScreen
%ENDIF 

%IF  EMSDEBUG
                        DB      0               ; Left shift, Left alt, right alt
                        DW      6329h           ; + ~
                        DD      DWord Ptr E_DumpEMSMemory
%ENDIF 

PlayCommandChain:
                        DB      3               ; Ctrl...
                        DW      13Fh            ; F5
                        DD      DWord Ptr Glbl_Ctrl_F5

                        DB      0               ; F6
                        DW      140h
                        DD      DWord Ptr Glbl_F6

                        DB      6               ; F6
                        DW      140h
                        DD      DWord Ptr Glbl_Shift_F6

                        DB      0
                        DW      141h            ; F7
                        DD      DWord Ptr PE_F7

                        DB      3               ; Ctrl
                        DW      1CBh            ; Left
                        DD      DWord Ptr DisplayMinus

                        DB      3               ; Ctrl
                        DW      1CDh            ; Right
                        DD      DWord Ptr DisplayPlus

                        DB      0
                        DW      1B5h
                        DD      DWord Ptr PEFunction_DecreaseOctave

                        DB      0
                        DW      137h
                        DD      DWord Ptr PEFunction_IncreaseOctave

                        DB      6
                        DW      1B5h
                        DD      DWord Ptr PEFunction_DecreaseOctave

                        DB      6
                        DW      137h
                        DD      DWord Ptr PEFunction_IncreaseOctave

                        DB      1
                        DW      '{'
                        DD      DWord Ptr Glbl_LeftBrace

                        DB      1
                        DW      '}'
                        DD      DWord Ptr Glbl_RightBrace

                        DB      1
                        DW      '['
                        DD      DWord Ptr Glbl_LeftSquareBracket

                        DB      1
                        DW      ']'
                        DD      DWord Ptr Glbl_RightSquareBracket

ChainMIDICommands:
                        DB      9               ; MIDI Message
                        DW      08000h
                        DD      DWord Ptr MIDI_NoteOff

                        DB      9               ; MIDI Message
                        DW      09000h
                        DD      DWord Ptr MIDI_PlayNote

                        DB      9               ; MIDI Message
                        DW      0C000h
                        DD      DWord Ptr MIDI_SetInstrument

                        DB      0FFh ; End of list

ESCExitList             DB      0               ; ESC
                        DW      101h
                        DD      DWord Ptr F_Return0

                        DB      5
                        DW      ChainMIDICommands

SampleGlobalKeyList     Label
%IF  ENABLESOLO
                        DB      1
                        DW      '`'
                        DD      DWord Ptr Music_ToggleSoloSample
%ENDIF 

                        DB      0
                        DW      1C9h
                        DD      DWord Ptr I_SampleUp

                        DB      0
                        DW      1D1h
                        DD      DWord Ptr I_SampleDown

                        DB      1
                        DW      '<'
                        DD      DWord Ptr I_DecreasePlayChannel

                        DB      1
                        DW      '>'
                        DD      DWord Ptr I_IncreasePlayChannel

                        DB      1
                        DW      ','
                        DD      DWord Ptr I_DecreasePlayChannel

                        DB      1
                        DW      '.'
                        DD      DWord Ptr I_IncreasePlayChannel

                        DB      1
                        DW      1E00h           ; Alt 'A'
                        DD      DWord Ptr I_ConvertSample

                        DB      1
                        DW      3000h           ; Alt 'B'
                        DD      DWord Ptr I_CutSampleBeforeLoop

                        DB      1
                        DW      2000h           ; Alt 'D'
                        DD      DWord Ptr I_DeleteSample

                        DB      1
                        DW      1200h           ; Alt 'E'
                        DD      DWord Ptr I_ResizeSample

                        DB      1
                        DW      2100h           ; Alt 'F'
                        DD      DWord Ptr I_ResizeSampleNoInt

                        DB      1
                        DW      2200h           ; Alt 'G'
                        DD      DWord Ptr I_ReverseSample

                        DB      1
                        DW      2300h           ; Alt 'H'
                        DD      DWord Ptr I_CenterSample

                        DB      1
                        DW      1700h           ; Alt 'I'
                        DD      DWord Ptr I_InvertSample

                        DB      1               ; Alt 'J'
                        DW      2400h
                        DD      DWord Ptr I_ScaleSampleVolumes

                        DB      1
                        DW      2600h           ; Alt 'L'
                        DD      DWord Ptr I_CutSample

                        DB      1
                        DW      3200h           ; Alt 'M'
                        DD      DWord Ptr I_AmplifySample

                        DB      1
                        DW      3100h           ; Alt 'N'
                        DD      DWord Ptr I_ToggleMultiChannel

                        DB      1
                        DW      1800h           ; Alt 'O'
                        DD      DWord Ptr D_SaveSample

                        DB      1
                        DW      1000h           ; Alt 'Q'
                        DD      DWord Ptr I_ToggleSampleQuality

                        DB      1
                        DW      1300h           ; Alt 'R'
                        DD      DWord Ptr I_ReplaceSample

                        DB      1
                        DW      1F00h           ; Alt 'S'
                        DD      DWord Ptr I_SwapSamples

                        DB      1
                        DW      1400h           ; Alt 'T'
                        DD      DWord Ptr D_SaveST3Sample

                        DB      1
                        DW      1100h           ; Alt 'W'
                        DD      DWord Ptr D_SaveRawSample

                        DB      1
                        DW      2D00h           ; Alt 'X'
                        DD      DWord Ptr I_ExchangeSamples

                        DB      1               ; Alt 'Y'
                        DW      1500h
                        DD      DWord Ptr I_CalculateC5Speed


                        DB      2               ; Alt...
                        DW      14Eh            ; Grey plus
                        DD      DWord Ptr I_DoubleSampleSpeed

                        DB      2               ; Alt...
                        DW      14Ah            ; Grey minus
                        DD      DWord Ptr I_HalveSampleSpeed

                        DB      3
                        DW      14Eh
                        DD      DWord Ptr I_SampleSpeedSemiUp

                        DB      3
                        DW      14Ah
                        DD      DWord Ptr I_SampleSpeedSemiDown

                        DB      9
                        DW      9000h
                        DD      DWord Ptr MIDI_PlaySample

                        DB      0               ; Enter... to load sample!
                        DW      11Ch
                        DD      DWord Ptr Glbl_LoadSample

                        DB      5
                        DW      GlobalKeyList

ScreenBox               DW      0                       ; Object type 0
                        DB      0, 0, 79, 49            ; Coordinates
                        DB      7                       ; Box style

AboutBox                DW      0                       ; Object type 0
                        DB      11, 16, 68, 34          ; Coordinates
                        DB      0                       ; Box style

AboutText               DW      1                       ; Object type 1
                        DB      24, 19
                        DB      02Bh
                        DB      0FFh, 1, 0, 4, 8, 0FFh, 8, 55, 37, 41, 0FFh, 5, 55, 56, 58, 62, 66, 0FFh, 6, 55, 88, 92, 13
                        DB      1, 5, 9, 12, 15, 18, 22, 25, 28, 31, 34, 38, 42, 45, 48, 51, 55, 55, 57, 59, 63, 67, 70, 73, 76, 79, 82, 85, 89, 93, 96, 99, 102, 105, 13
                        DB      2, 6, 0FFh, 1, 10, 0FFh, 1, 13, 16, 19, 23, 26, 29, 32, 35, 39, 43, 46, 49, 52, 54, 55, 55, 60, 64, 68, 71, 74, 77, 80, 83, 86, 90, 94, 97, 100, 103, 106, 13
                        DB      3, 7, 11, 14, 17, 20, 24, 27, 30, 33, 36, 40, 44, 47, 50, 53, 55, 55, 55, 61, 65, 69, 72, 75, 78, 81, 84, 87, 91, 95, 98, 101, 104, 107, 13
                        DB      0FFh, 5, 55, 21, 0
;                        DB      0FEh, 20h
;                        DB      " http://www.citenet.net/noise/it", 0

AutoContinueButton      DW      2                       ; Object type 2
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0                       ; Button usage type
                        DW      0, 0                    ; ????
                        DW      4                       ; New List
                        DD      DWord Ptr Glbl_F9
                        DW      0, 0, 0                 ; ????
                        DB      32, 31, 47, 33          ; Left/Top/Right/Bottom
                        DB      8                       ; Box initial style
                        DB      0                       ; Button Up
                        DB      "   Continue", 0

UpdateScreen            DW      8
                        DD      DWord Ptr S_UpdateScreen

Exit                    DW      4                       ; Object type 4
                        DW      0                       ; Return value

DirectScreen            DW      5                       ; Object type 5
                        DB      1

InDirectScreen          DW      5                       ; Object type 5
                        DB      0

ImpulseLogo             DW      6                       ; Object type 6
LogoCharacter           DW      256                     ; First char to define
                        DW      108
                        DB      0, 0, 0, 0, 1, 7, 15, 31                ; 0
                        DB      63, 127, 127, 254, 252, 255, 255, 126   ; 1
                        DB      24, 0, 0, 0, 0, 0, 0, 0                 ; 2
                        DB      0, 1, 3, 3, 3, 1, 0, 0                  ; 3
                        DB      7, 31, 63, 255, 255, 254, 248, 240      ; 4
                        DB      192, 128, 0, 1, 1, 131, 3, 7            ; 5
                        DB      7, 15, 14, 30, 60, 60, 120, 240         ; 6
                        DB      240, 224, 224, 224, 224, 192, 0, 0      ; 7
                        DB      240, 240, 248, 248, 248, 120, 56, 120   ; 8
                        DB      112, 240, 240, 224, 224, 192, 192, 131  ; 9
                        DB      7, 15, 31, 31, 62, 60, 61, 63           ; 10
                        DB      63, 63, 62, 28, 8, 0, 0, 0              ; 11
                        DB      0, 0, 0, 0, 0, 0, 193, 227              ; 12
                        DB      199, 223, 191, 127, 247, 239, 207, 159  ; 13
                        DB      31, 31, 63, 60, 24, 0, 0, 0             ; 14
                        DB      0, 0, 0, 0, 0, 240, 240, 240            ; 15
                        DB      241, 227, 239, 223, 191, 251, 247, 231  ; 16
                        DB      159, 159, 31, 31, 14, 0, 0, 0           ; 17
                        DB      0, 0, 0, 0, 0, 48, 112, 248             ; 18
                        DB      248, 240, 224, 192, 193, 131, 7, 30     ; 19
                        DB      252, 240, 225, 131, 3, 7, 7, 15         ; 20
                        DB      15, 30, 30, 28, 8, 0, 0, 0              ; 21
                        DB      0, 0, 0, 1, 3, 3, 7, 15                 ; 22
                        DB      31, 63, 127, 255, 191, 190, 124, 126    ; 23
                        DB      255, 255, 255, 255, 199, 128, 128, 0    ; 24
                        DB      60, 124, 248, 240, 224, 192, 135, 159   ; 25
                        DB      127, 255, 223, 143, 30, 60, 56, 113     ; 26
                        DB      255, 255, 252, 240, 192, 0, 0, 0        ; 27
                        DB      0, 0, 0, 0, 0, 0, 128, 129              ; 28
                        DB      131, 135, 15, 15, 30, 60, 124, 253      ; 29
                        DB      191, 31, 31, 14, 0, 0, 0, 0             ; 30
                        DB      0, 0, 0, 0, 0, 112, 248, 240            ; 31
                        DB      225, 195, 135, 15, 31, 63, 127, 255     ; 32
                        DB      239, 223, 159, 15, 14, 0, 0, 0          ; 33
                        DB      0, 0, 0, 0, 24, 56, 124, 248            ; 34
                        DB      248, 241, 225, 193, 129, 131, 15, 31    ; 35
                        DB      249, 241, 225, 192, 0, 0, 0, 0          ; 36
                        DB      0, 0, 0, 0, 0, 0, 1, 3                  ; 37
                        DB      7, 15, 30, 61, 57, 123, 119, 254        ; 38
                        DB      252, 248, 240, 224, 192, 192, 192, 225  ; 39
                        DB      247, 255, 254, 252, 0, 0, 0, 0          ; 40
                        DB      0, 0, 24, 56, 120, 248, 248, 240        ; 41
                        DB      112, 96, 224, 192, 192, 128, 0, 1       ; 42
                        DB      3, 7, 14, 28, 56, 112, 248, 252         ; 43
                        DB      255, 127, 63, 31, 7, 0, 0, 0            ; 44
                        DB      0, 0, 0, 48, 120, 120, 248, 248         ; 45
                        DB      252, 124, 124, 120, 120, 112, 241, 231  ; 46
                        DB      142, 252, 248, 224, 128, 0, 0, 0        ; 47
                        DB      0, 0, 0, 0, 0, 0, 3, 7                  ; 48
                        DB      15, 30, 60, 63, 127, 254, 252, 60       ; 49
                        DB      126, 63, 63, 31, 6, 0, 0, 0             ; 50
                        DB      0, 0, 0, 0, 60, 254, 254, 222           ; 51
                        DB      30, 60, 248, 224, 128, 1, 7, 14         ; 52
                        DB      124, 248, 224, 192, 0, 0, 0, 0          ; 53
                        DB      0, 0, 0, 0, 128, 128, 0, 0              ; 54
                        DB      0, 0, 0, 0, 0, 0, 0, 0                  ; 55
                        DB      0, 0, 7, 31, 63, 127, 127, 255          ; 56
                        DB      255, 252, 127, 0, 0, 0, 0, 0            ; 57
                        DB      3, 255, 255, 255, 255, 255, 255, 252    ; 58
                        DB      128, 0, 0, 0, 0, 0, 0, 0                ; 59
                        DB      0, 0, 0, 1, 1, 3, 3, 7                  ; 60
                        DB      7, 15, 31, 31, 31, 30, 0, 0             ; 61
                        DB      255, 255, 255, 255, 255, 255, 255, 0    ; 62
                        DB      0, 1, 3, 7, 7, 15, 31, 62               ; 63
                        DB      60, 124, 248, 248, 240, 240, 224, 224   ; 64
                        DB      192, 192, 128, 128, 0, 0, 0, 0          ; 65
                        DB      128, 224, 240, 240, 248, 248, 248, 112  ; 66
                        DB      240, 224, 192, 192, 128, 6, 15, 31      ; 67
                        DB      63, 127, 127, 112, 33, 97, 195, 131     ; 68
                        DB      7, 7, 7, 3, 1, 0, 0, 0                  ; 69
                        DB      0, 0, 0, 0, 0, 0, 252, 254              ; 70
                        DB      254, 252, 248, 240, 224, 193, 195, 199  ; 71
                        DB      223, 253, 240, 224, 128, 0, 0, 0        ; 72
                        DB      0, 0, 0, 0, 0, 0, 0, 3                  ; 73
                        DB      15, 31, 63, 124, 248, 240, 225, 195     ; 74
                        DB      199, 254, 252, 120, 48, 0, 0, 0         ; 75
                        DB      0, 0, 0, 0, 0, 31, 255, 255             ; 76
                        DB      255, 255, 191, 63, 126, 252, 248, 184   ; 77
                        DB      63, 127, 127, 126, 124, 48, 0, 0        ; 78
                        DB      0, 0, 0, 0, 0, 0, 128, 128              ; 79
                        DB      129, 3, 7, 15, 15, 31, 62, 126          ; 80
                        DB      239, 207, 143, 7, 3, 0, 0, 0            ; 81
                        DB      0, 0, 0, 0, 0, 15, 63, 255              ; 82
                        DB      255, 255, 238, 204, 0, 0, 0, 3          ; 83
                        DB      15, 255, 254, 248, 224, 0, 0, 0         ; 84
                        DB      0, 0, 0, 0, 0, 193, 195, 131            ; 85
                        DB      135, 15, 15, 31, 63, 127, 255, 255      ; 86
                        DB      190, 60, 28, 24, 0, 0, 0, 0             ; 87
                        DB      0, 0, 0, 0, 0, 1, 3, 7                  ; 88
                        DB      15, 31, 63, 126, 252, 248, 240, 227     ; 89
                        DB      199, 223, 188, 112, 225, 199, 254, 252  ; 90
                        DB      252, 126, 127, 63, 31, 0, 0, 0          ; 91
                        DB      0, 12, 60, 124, 248, 248, 240, 224      ; 92
                        DB      192, 128, 0, 0, 0, 48, 248, 248         ; 93
                        DB      248, 120, 241, 225, 195, 3, 15, 31      ; 94
                        DB      59, 243, 227, 129, 0, 0, 0, 0           ; 95
                        DB      0, 0, 0, 0, 1, 15, 31, 62               ; 96
                        DB      120, 241, 231, 239, 252, 240, 192, 192  ; 97
                        DB      227, 255, 255, 252, 112, 0, 0, 0        ; 98
                        DB      0, 0, 0, 0, 192, 240, 241, 243          ; 99
                        DB      231, 207, 143, 14, 12, 28, 56, 112      ; 100
                        DB      225, 193, 1, 0, 0, 0, 0, 0              ; 101
                        DB      0, 0, 0, 0, 0, 192, 255, 255            ; 102
                        DB      255, 255, 254, 60, 120, 112, 240, 241   ; 103
                        DB      247, 255, 252, 248, 96, 0, 0, 0         ; 104
                        DB      0, 0, 0, 0, 0, 0, 0, 128                ; 105
                        DB      128, 0, 0, 0, 0, 0, 0, 192              ; 106
                        DB      192, 0, 0, 0, 0, 0, 0, 0                ; 107

O1_ConfirmConvertList   DW      4
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmConvertSampleText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmConvert2List  DW      4
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmConvertSampleText
                        DW      ConfirmConvertYesButton
                        DW      ConfirmConvertNoButton
                        DW      0

O1_SampleCenterList     DW      4
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmCenterSampleText
                        DW      ConfirmConvertYesButton
                        DW      ConfirmConvertNoButton
                        DW      0

O1_EnableInstrumentMode DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      EnableInstrumentModeText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0


O1_InitInstrument       DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      InitInstrumentText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmInitialiseNoButton
                        DW      0

O1_ConfirmOverWriteList DW      4
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmOverWriteText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_InitialiseInstrumentList DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmInitialiseText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmInitialiseNoButton
                        DW      0

O1_ConfirmDelete        DW      4
                        DW      SongNameModuleLoader
                        DW      OKCancelList
                        DW      DrawFileNameWindow
                        DW      ConfirmOverWriteBox
                        DW      ConfirmDeleteText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmDelete2       DW      4
                        DW      SampleNameLoader
                        DW      OKCancelList
                        DW      DrawLoadSampleWindow
                        DW      ConfirmOverWriteBox
                        DW      ConfirmDeleteText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmDelete3       DW      4
                        DW      InstrumentNameLoader
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmDeleteText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0


O1_ConfirmSaveRenameList DW      3
                        DW      SampleNameLoader
                        DW      OKCancelList
                        DW      DrawLoadSampleWindow
                        DW      ConfirmOverWriteBox
                        DW      ConfirmSaveRenameText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmResaveList    DW      3
                        DW      SampleNameLoader
                        DW      OKCancelList
                        DW      DrawLoadSampleWindow
                        DW      ConfirmOverWriteBox
                        DW      ConfirmResaveText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmDiscardList   DW      3
                        DW      SampleNameLoader
                        DW      OKCancelList
                        DW      DrawLoadSampleWindow
                        DW      ConfirmOverWriteBox
                        DW      ConfirmDiscardText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmCutSample     DW      4
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmCutSampleText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmDeleteSample  DW      4
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmDeleteSampleText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmDeleteInstrument DW   4
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmDeleteInstrumentText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmClearMessage  DW      4
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmClearMessageText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_ConfirmNoSave        DW      4
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmNoSaveBox
                        DW      ConfirmNoSaveMessage
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

EmptyObject             DW      8
                        DD      DWord Ptr F_Nothing

DrawFileNameWindow      DW      8
                        DD      DWord Ptr D_DrawFileWindow

DrawLoadSampleWindow    DW      8
                        DD      DWord Ptr D_DrawLoadSampleWindow

DrawLoadInstrumentWindow DW     8
                        DD      DWord Ptr D_DrawLoadInstrument

ConfirmOverWriteBox     DW      0       ; Box Object
                        DB      26, 25, 54, 32
                        DB      3

ConfirmNosaveBox        DW      0       ; Box Object
                        DB      20, 25, 60, 32
                        DB      3

EnableInstrumentModeText DW     1
                        DB      29, 27
                        DB      20h
                        DB      "Enable Instrument mode?", 0

ConfirmCenterSampleText DW      1
                        DB      31, 27
                        DB      20h
                        DB      "Centralise sample?", 0

ConfirmOverWriteText    DW      1
                        DB      33, 27
                        DB      20h
                        DB      "Overwrite file?", 0

ConfirmDeleteText       DW      1
                        DB      35, 27
                        DB      20h
                        DB      "Delete file?", 0

ConfirmDeleteSampleText DW      1
                        DB      34, 27
                        DB      20h
                        DB      "Delete sample?", 0

ConfirmDeleteInstrumentText DW  1
                        DB      32, 27
                        DB      20h
                        DB      "Delete instrument?", 0

ConfirmClearMessageText DW      1
                        DB      31, 27
                        DB      20h
                        DB      "Clear song message?", 0

ConfirmNoSaveMessage    DW      1
                        DB      23, 27
                        DB      20h
                        DB      "Current module not saved. Proceed?", 0

ConfirmSaveRenameText   DW      1
                        DB      31, 27
                        DB      20h
                        DB      "Save/Rename sample?", 0

ConfirmDiscardText      DW      1
                        DB      33, 27
                        DB      20h
                        DB      "Discard changes?", 0

ConfirmResaveText       DW      1
                        DB      35, 27
                        DB      20h
                        DB      "Save sample?", 0

InitInstrumentText      DW      1
                        DB      29, 27
                        DB      20h
                        DB      "Create host instrument?", 0

ConfirmConvertSampleText DW     1
                        DB      33, 27
                        DB      20h
                        DB      "Convert sample?", 0

ConfirmInitialiseText   DW      1
                        DB      29, 27
                        DB      20h
                        DB      "Initialise instruments?", 0

ConfirmCutSampleText    DW      1
                        DB      35, 27
                        DB      20h
                        DB      "Cut sample?", 0

ConfirmQuitText         DW      1
                        DB      30, 27
                        DB      20h
                        DB      "Exit Impulse Tracker?", 0

ConfirmOverWriteOKButton DW      2
                        DW      0FFFFh, 0FFFFh, 4, 4
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      1               ; Return OK to overwrite
                        DW      0, 0, 0, 0
                        DB      30, 29, 39, 31
                        DB      8
                        DB      0
                        DB      "   OK", 0

ConfirmOverWriteCancelButton DW      2
                        DW      0FFFFh, 0FFFFh, 3, 3
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0               ; Returns 0
                        DW      0, 0, 0, 0
                        DB      41, 29, 50, 31
                        DB      8
                        DB      0
                        DB      " Cancel", 0

ConfirmConvertYesButton DW      2
                        DW      0FFFFh, 0FFFFh, 4, 4
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      1               ; Return 1
                        DW      0, 0, 0, 0
                        DB      29, 29, 39, 31
                        DB      8
                        DB      0
                        DB      "   Yes", 0

ConfirmConvertNoButton  DW      2
                        DW      0FFFFh, 0FFFFh, 3, 3
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      2               ; Returns 2
                        DW      0, 0, 0, 0
                        DB      41, 29, 50, 31
                        DB      8
                        DB      0
                        DB      "   No", 0

ConfirmInitialiseNoButton DW      2
                        DW      0FFFFh, 0FFFFh, 3, 3
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0               ; Returns 0
                        DW      0, 0, 0, 0
                        DB      41, 29, 50, 31
                        DB      8
                        DB      0
                        DB      "   No", 0

O1_UnableToSaveList     DW      2
                        DW      0
                        DW      ESCReturnList
                        DW      ConfirmOverWriteBox
                        DW      UnableToSaveText
                        DW      NoSaveOKButton
                        DW      0

UnableToSaveText        DW      1
                        DB      31, 27
                        DB      20h
                        DB      "Unable to save file", 0

NoSaveOKButton          DW      2
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      1
                        DW      0, 0, 0, 0
                        DB      36, 29, 45, 31
                        DB      8
                        DB      0
                        DB      "   OK", 0

O1_ConfirmQuit          DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      EmptyObject
                        DW      ConfirmOverWriteBox
                        DW      ConfirmQuitText
                        DW      ConfirmOverWriteOKButton
                        DW      ConfirmOverWriteCancelButton
                        DW      0

O1_SelectMultiChannel   DW      7
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      SMCBox                ; 0
                        DW      SMCText               ; 1
                        DW      SMCInBox1             ; 2
                        DW      SMCInBox2             ; 3
                        DW      SMCInBox3             ; 4
                        DW      SMCInBox4             ; 5
                        DW      SMCDrawChannel        ; 6
                        DW      SMCChannel00Toggle    ; 7
                        DW      SMCChannel01Toggle
                        DW      SMCChannel02Toggle
                        DW      SMCChannel03Toggle
                        DW      SMCChannel04Toggle
                        DW      SMCChannel05Toggle
                        DW      SMCChannel06Toggle
                        DW      SMCChannel07Toggle
                        DW      SMCChannel08Toggle
                        DW      SMCChannel09Toggle
                        DW      SMCChannel10Toggle
                        DW      SMCChannel11Toggle
                        DW      SMCChannel12Toggle
                        DW      SMCChannel13Toggle
                        DW      SMCChannel14Toggle
                        DW      SMCChannel15Toggle
                        DW      SMCChannel16Toggle
                        DW      SMCChannel17Toggle
                        DW      SMCChannel18Toggle
                        DW      SMCChannel19Toggle
                        DW      SMCChannel20Toggle
                        DW      SMCChannel21Toggle
                        DW      SMCChannel22Toggle
                        DW      SMCChannel23Toggle
                        DW      SMCChannel24Toggle
                        DW      SMCChannel25Toggle
                        DW      SMCChannel26Toggle
                        DW      SMCChannel27Toggle
                        DW      SMCChannel28Toggle
                        DW      SMCChannel29Toggle
                        DW      SMCChannel30Toggle
                        DW      SMCChannel31Toggle
                        DW      SMCChannel32Toggle
                        DW      SMCChannel33Toggle
                        DW      SMCChannel34Toggle
                        DW      SMCChannel35Toggle
                        DW      SMCChannel36Toggle
                        DW      SMCChannel37Toggle
                        DW      SMCChannel38Toggle
                        DW      SMCChannel39Toggle
                        DW      SMCChannel40Toggle
                        DW      SMCChannel41Toggle
                        DW      SMCChannel42Toggle
                        DW      SMCChannel43Toggle
                        DW      SMCChannel44Toggle
                        DW      SMCChannel45Toggle
                        DW      SMCChannel46Toggle
                        DW      SMCChannel47Toggle
                        DW      SMCChannel48Toggle
                        DW      SMCChannel49Toggle
                        DW      SMCChannel50Toggle
                        DW      SMCChannel51Toggle
                        DW      SMCChannel52Toggle
                        DW      SMCChannel53Toggle
                        DW      SMCChannel54Toggle
                        DW      SMCChannel55Toggle
                        DW      SMCChannel56Toggle
                        DW      SMCChannel57Toggle
                        DW      SMCChannel58Toggle
                        DW      SMCChannel59Toggle
                        DW      SMCChannel60Toggle
                        DW      SMCChannel61Toggle
                        DW      SMCChannel62Toggle
                        DW      SMCChannel63Toggle    ; 70
                        DW      SMCOKButton           ; 71
                        DW      0

SMCBox                  DW      0
                        DB      7, 18, 72, 42
                        DB      3

SMCInBox1               DW      0
                        DB      19, 21, 23, 38
                        DB      27

SMCInBox2               DW      0
                        DB      35, 21, 39, 38
                        DB      27

SMCInBox3               DW      0
                        DB      51, 21, 55, 38
                        DB      27

SMCInBox4               DW      0
                        DB      67, 21, 71, 38
                        DB      27

SMCText                 DW      1
                        DB      29, 19
                        DB      23h
                        DB      "Multichannel Selection", 0

SMCDrawChannel          DW      8
                        DD      DWord Ptr F_DrawSMCChannels

SMCChannel00Toggle      DW      17
                        DB      20, 22
                        DW      1
                        DW      MultiChannelInfo+00
                        DB      1
                        DW      71, 8, 23, 55

SMCChannel01Toggle      DW      17
                        DB      20, 23
                        DW      1
                        DW      MultiChannelInfo+01
                        DB      1
                        DW      7, 9, 24, 56

SMCChannel02Toggle      DW      17
                        DB      20, 24
                        DW      1
                        DW      MultiChannelInfo+02
                        DB      1
                        DW      8, 10, 25, 57

SMCChannel03Toggle      DW      17
                        DB      20, 25
                        DW      1
                        DW      MultiChannelInfo+03
                        DB      1
                        DW      9, 11, 26, 58

SMCChannel04Toggle      DW      17
                        DB      20, 26
                        DW      1
                        DW      MultiChannelInfo+04
                        DB      1
                        DW      10, 12, 27, 59

SMCChannel05Toggle      DW      17
                        DB      20, 27
                        DW      1
                        DW      MultiChannelInfo+05
                        DB      1
                        DW      11, 13, 28, 60

SMCChannel06Toggle      DW      17
                        DB      20, 28
                        DW      1
                        DW      MultiChannelInfo+06
                        DB      1
                        DW      12, 14, 29, 61

SMCChannel07Toggle      DW      17
                        DB      20, 29
                        DW      1
                        DW      MultiChannelInfo+07
                        DB      1
                        DW      13, 15, 30, 62

SMCChannel08Toggle      DW      17
                        DB      20, 30
                        DW      1
                        DW      MultiChannelInfo+08
                        DB      1
                        DW      14, 16, 31, 63

SMCChannel09Toggle      DW      17
                        DB      20, 31
                        DW      1
                        DW      MultiChannelInfo+09
                        DB      1
                        DW      15, 17, 32, 64

SMCChannel10Toggle      DW      17
                        DB      20, 32
                        DW      1
                        DW      MultiChannelInfo+10
                        DB      1
                        DW      16, 18, 33, 65

SMCChannel11Toggle      DW      17
                        DB      20, 33
                        DW      1
                        DW      MultiChannelInfo+11
                        DB      1
                        DW      17, 19, 34, 66

SMCChannel12Toggle      DW      17
                        DB      20, 34
                        DW      1
                        DW      MultiChannelInfo+12
                        DB      1
                        DW      18, 20, 35, 67

SMCChannel13Toggle      DW      17
                        DB      20, 35
                        DW      1
                        DW      MultiChannelInfo+13
                        DB      1
                        DW      19, 21, 36, 68

SMCChannel14Toggle      DW      17
                        DB      20, 36
                        DW      1
                        DW      MultiChannelInfo+14
                        DB      1
                        DW      20, 22, 37, 69

SMCChannel15Toggle      DW      17
                        DB      20, 37
                        DW      1
                        DW      MultiChannelInfo+15
                        DB      1
                        DW      21, 71, 38, 70

SMCChannel16Toggle      DW      17
                        DB      36, 22
                        DW      1
                        DW      MultiChannelInfo+16
                        DB      1
                        DW      71, 24, 39, 7

SMCChannel17Toggle      DW      17
                        DB      36, 23
                        DW      1
                        DW      MultiChannelInfo+17
                        DB      1
                        DW      23, 25, 40, 8

SMCChannel18Toggle      DW      17
                        DB      36, 24
                        DW      1
                        DW      MultiChannelInfo+18
                        DB      1
                        DW      24, 26, 41, 9

SMCChannel19Toggle      DW      17
                        DB      36, 25
                        DW      1
                        DW      MultiChannelInfo+19
                        DB      1
                        DW      25, 27, 42, 10

SMCChannel20Toggle      DW      17
                        DB      36, 26
                        DW      1
                        DW      MultiChannelInfo+20
                        DB      1
                        DW      26, 28, 43, 11

SMCChannel21Toggle      DW      17
                        DB      36, 27
                        DW      1
                        DW      MultiChannelInfo+21
                        DB      1
                        DW      27, 29, 44, 12

SMCChannel22Toggle      DW      17
                        DB      36, 28
                        DW      1
                        DW      MultiChannelInfo+22
                        DB      1
                        DW      28, 30, 45, 13

SMCChannel23Toggle      DW      17
                        DB      36, 29
                        DW      1
                        DW      MultiChannelInfo+23
                        DB      1
                        DW      29, 31, 46, 14

SMCChannel24Toggle      DW      17
                        DB      36, 30
                        DW      1
                        DW      MultiChannelInfo+24
                        DB      1
                        DW      30, 32, 47, 15

SMCChannel25Toggle      DW      17
                        DB      36, 31
                        DW      1
                        DW      MultiChannelInfo+25
                        DB      1
                        DW      31, 33, 48, 16

SMCChannel26Toggle      DW      17
                        DB      36, 32
                        DW      1
                        DW      MultiChannelInfo+26
                        DB      1
                        DW      32, 34, 49, 17

SMCChannel27Toggle      DW      17
                        DB      36, 33
                        DW      1
                        DW      MultiChannelInfo+27
                        DB      1
                        DW      33, 35, 50, 18

SMCChannel28Toggle      DW      17
                        DB      36, 34
                        DW      1
                        DW      MultiChannelInfo+28
                        DB      1
                        DW      34, 36, 51, 19

SMCChannel29Toggle      DW      17
                        DB      36, 35
                        DW      1
                        DW      MultiChannelInfo+29
                        DB      1
                        DW      35, 37, 52, 20

SMCChannel30Toggle      DW      17
                        DB      36, 36
                        DW      1
                        DW      MultiChannelInfo+30
                        DB      1
                        DW      36, 38, 53, 21

SMCChannel31Toggle      DW      17
                        DB      36, 37
                        DW      1
                        DW      MultiChannelInfo+31
                        DB      1
                        DW      37, 71, 54, 22

SMCChannel32Toggle      DW      17
                        DB      52, 22
                        DW      1
                        DW      MultiChannelInfo+32
                        DB      1
                        DW      71, 40, 55, 23

SMCChannel33Toggle      DW      17
                        DB      52, 23
                        DW      1
                        DW      MultiChannelInfo+33
                        DB      1
                        DW      39, 41, 56, 24

SMCChannel34Toggle      DW      17
                        DB      52, 24
                        DW      1
                        DW      MultiChannelInfo+34
                        DB      1
                        DW      40, 42, 57, 25

SMCChannel35Toggle      DW      17
                        DB      52, 25
                        DW      1
                        DW      MultiChannelInfo+35
                        DB      1
                        DW      41, 43, 58, 26

SMCChannel36Toggle      DW      17
                        DB      52, 26
                        DW      1
                        DW      MultiChannelInfo+36
                        DB      1
                        DW      42, 44, 59, 27

SMCChannel37Toggle      DW      17
                        DB      52, 27
                        DW      1
                        DW      MultiChannelInfo+37
                        DB      1
                        DW      43, 45, 60, 28

SMCChannel38Toggle      DW      17
                        DB      52, 28
                        DW      1
                        DW      MultiChannelInfo+38
                        DB      1
                        DW      44, 46, 61, 29

SMCChannel39Toggle      DW      17
                        DB      52, 29
                        DW      1
                        DW      MultiChannelInfo+39
                        DB      1
                        DW      45, 47, 62, 30

SMCChannel40Toggle      DW      17
                        DB      52, 30
                        DW      1
                        DW      MultiChannelInfo+40
                        DB      1
                        DW      46, 48, 63, 31

SMCChannel41Toggle      DW      17
                        DB      52, 31
                        DW      1
                        DW      MultiChannelInfo+41
                        DB      1
                        DW      47, 49, 64, 32

SMCChannel42Toggle      DW      17
                        DB      52, 32
                        DW      1
                        DW      MultiChannelInfo+42
                        DB      1
                        DW      48, 50, 65, 33

SMCChannel43Toggle      DW      17
                        DB      52, 33
                        DW      1
                        DW      MultiChannelInfo+43
                        DB      1
                        DW      49, 51, 66, 34

SMCChannel44Toggle      DW      17
                        DB      52, 34
                        DW      1
                        DW      MultiChannelInfo+44
                        DB      1
                        DW      50, 52, 67, 35

SMCChannel45Toggle      DW      17
                        DB      52, 35
                        DW      1
                        DW      MultiChannelInfo+45
                        DB      1
                        DW      51, 53, 68, 36

SMCChannel46Toggle      DW      17
                        DB      52, 36
                        DW      1
                        DW      MultiChannelInfo+46
                        DB      1
                        DW      52, 54, 69, 37

SMCChannel47Toggle      DW      17
                        DB      52, 37
                        DW      1
                        DW      MultiChannelInfo+47
                        DB      1
                        DW      53, 71, 70, 38

SMCChannel48Toggle      DW      17
                        DB      68, 22
                        DW      1
                        DW      MultiChannelInfo+48
                        DB      1
                        DW      71, 56, 7, 39

SMCChannel49Toggle      DW      17
                        DB      68, 23
                        DW      1
                        DW      MultiChannelInfo+49
                        DB      1
                        DW      55, 57, 8, 40

SMCChannel50Toggle      DW      17
                        DB      68, 24
                        DW      1
                        DW      MultiChannelInfo+50
                        DB      1
                        DW      56, 58, 9, 41

SMCChannel51Toggle      DW      17
                        DB      68, 25
                        DW      1
                        DW      MultiChannelInfo+51
                        DB      1
                        DW      57, 59, 10, 42

SMCChannel52Toggle      DW      17
                        DB      68, 26
                        DW      1
                        DW      MultiChannelInfo+52
                        DB      1
                        DW      58, 60, 11, 43

SMCChannel53Toggle      DW      17
                        DB      68, 27
                        DW      1
                        DW      MultiChannelInfo+53
                        DB      1
                        DW      59, 61, 12, 44

SMCChannel54Toggle      DW      17
                        DB      68, 28
                        DW      1
                        DW      MultiChannelInfo+54
                        DB      1
                        DW      60, 62, 13, 45

SMCChannel55Toggle      DW      17
                        DB      68, 29
                        DW      1
                        DW      MultiChannelInfo+55
                        DB      1
                        DW      61, 63, 14, 46

SMCChannel56Toggle      DW      17
                        DB      68, 30
                        DW      1
                        DW      MultiChannelInfo+56
                        DB      1
                        DW      62, 64, 15, 47

SMCChannel57Toggle      DW      17
                        DB      68, 31
                        DW      1
                        DW      MultiChannelInfo+57
                        DB      1
                        DW      63, 65, 16, 48

SMCChannel58Toggle      DW      17
                        DB      68, 32
                        DW      1
                        DW      MultiChannelInfo+58
                        DB      1
                        DW      64, 66, 17, 49

SMCChannel59Toggle      DW      17
                        DB      68, 33
                        DW      1
                        DW      MultiChannelInfo+59
                        DB      1
                        DW      65, 67, 18, 50

SMCChannel60Toggle      DW      17
                        DB      68, 34
                        DW      1
                        DW      MultiChannelInfo+60
                        DB      1
                        DW      66, 68, 19, 51

SMCChannel61Toggle      DW      17
                        DB      68, 35
                        DW      1
                        DW      MultiChannelInfo+61
                        DB      1
                        DW      67, 69, 20, 52

SMCChannel62Toggle      DW      17
                        DB      68, 36
                        DW      1
                        DW      MultiChannelInfo+62
                        DB      1
                        DW      68, 70, 21, 53

SMCChannel63Toggle      DW      17
                        DB      68, 37
                        DW      1
                        DW      MultiChannelInfo+63
                        DB      1
                        DW      69, 71, 22, 54

SMCOKButton             DW      2
                        DW      22, 7, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0
                        DW      0, 0, 0, 0
                        DB      35, 39, 44, 41
                        DB      8
                        DB      0
                        DB      "   OK   ", 0

O1_ExchangeSampleList   DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      ExchangeSampleBox
                        DW      ExchangeSampleText
                        DW      ExchangeSampleInputBox
                        DW      ExchangeSampleInput   ; 3
                        DW      CancelExchangeButton  ; 4
                        DW      0

O1_ReplaceSampleList    DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      ExchangeSampleBox
                        DW      ReplaceSampleText
                        DW      ExchangeSampleInputBox
                        DW      ExchangeSampleInput   ; 3
                        DW      CancelExchangeButton  ; 4
                        DW      0

O1_ReplaceInstrumentList DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      ExchangeSampleBox
                        DW      ReplaceInstrumentText
                        DW      ExchangeSampleInputBox
                        DW      ExchangeSampleInput   ; 3
                        DW      CancelExchangeButton  ; 4
                        DW      0

O1_SwapSampleList       DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      ExchangeSampleBox
                        DW      SwapSampleText
                        DW      ExchangeSampleInputBox
                        DW      ExchangeSampleInput   ; 3
                        DW      CancelExchangeButton  ; 4
                        DW      0

O1_SwapInstrumentList   DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      ExchangeSampleBox
                        DW      SwapInstrumentText
                        DW      ExchangeSampleInputBox
                        DW      ExchangeSampleInput   ; 3
                        DW      CancelExchangeButton  ; 4
                        DW      0

O1_CopyInstrumentList   DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      ExchangeSampleBox
                        DW      CopyInstrumentText
                        DW      ExchangeSampleInputBox
                        DW      ExchangeSampleInput   ; 3
                        DW      CancelExchangeButton  ; 4
                        DW      0

O1_ExchangeInstrumentList DW      3
                        DW      IdleFunctionList
                        DW      OKCancelList
                        DW      ExchangeSampleBox
                        DW      ExchangeInstrumentText
                        DW      ExchangeSampleInputBox
                        DW      ExchangeSampleInput   ; 3
                        DW      CancelExchangeButton  ; 4
                        DW      0

O1_ResizeSampleList     DW      3
                        DW      IdleFunctionList
                        DW      ESC&ReturnList
                        DW      ResizeSampleBox        ; 0
                        DW      ResizeSampleText       ; 1
                        DW      ResizeSampleInputBox   ; 2
                        DW      ResizeSampleInput      ; 3
                        DW      CancelExchangeButton
                        DW      0

ESCF2&ReturnList        DB      0
                        DW      13Ch
                        DD      DWord Ptr F_Return0

ESC&ReturnList          DB      0
                        DW      101h
                        DD      DWord Ptr F_Return0

                        DB      0
                        DW      11Ch
                        DD      DWord Ptr F_Return1

                        DB      5
                        DW      ChainMIDICommands

ExchangeSampleBox       DW      0
                        DB      26, 23, 54, 32
                        DB      3

ExchangeSampleText      DW      1
                        DB      30, 25
                        DB      20h
                        DB      "Exchange sample with:", 13
                        DB      13
                        DB      0FFh, 5, " Sample", 0

ResizeSampleBox         DW      0
                        DB      26, 22, 54, 32
                        DB      3

ResizeSampleText        DW      1
                        DB      31, 24
                        DB      23h
                        DB      "   Resize Sample", 13, 13
                        DB      13, 0FEh, 20h
                        DB      "New Length", 0

ResizeSampleInputBox    DW      0
                        DB      41, 26, 49, 28
                        DB      27

ResizeSampleInput       DW      18
                        DB      42, 27
                        DW      2
                        DW      NewSampleSize
                        DD      0
                        DW      0FFFFh, 4, 4, 0FFFFh

SwapSampleText          DW      1
                        DB      32, 25
                        DB      20h
                        DB      "Swap sample with:", 13
                        DB      13
                        DB      "   Sample", 0

SwapInstrumentText      DW      1
                        DB      29, 25
                        DB      20h
                        DB      "Swap instrument with:", 13
                        DB      13
                        DB      "  Instrument", 0

CopyInstrumentText      DW      1
                        DB      31, 25
                        DB      20h
                        DB      " Copy instrument:", 13
                        DB      13
                        DB      "Instrument", 0

ReplaceSampleText       DW      1
                        DB      30, 25
                        DB      20h
                        DB      "Replace sample with:", 13
                        DB      13
                        DB      0FFh, 5, " Sample", 0

ReplaceInstrumentText   DW      1
                        DB      28, 25
                        DB      20h
                        DB      "Replace instrument with:", 13
                        DB      13
                        DB      "   Instrument", 0

ExchangeInstrumentText  DW      1
                        DB      28, 25
                        DB      20h
                        DB      "Exchange instrument with:", 13
                        DB      13
                        DB      "   Instrument", 0

ExchangeSampleInputBox  DW      0
                        DB      41, 26, 45, 28
                        DB      27

ExchangeSampleInput     DW      16
                        DB      42, 27
                        DW      2
                        DW      SampleNumberInput
                        DW      3
                        DD      DWord Ptr F_Return1
                        DW      0FFFFh, 4, 4, 0FFFFh

CancelExchangeButton    DW      2
                        DW      3, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0               ; Returns 0
                        DW      0, 0, 0, 0
                        DB      35, 29, 44, 31
                        DB      8
                        DB      0
                        DB      " Cancel", 0


O1_OrderVolumeList      DW      10
                        DW      IdleFunctionList
                        DW      GlobalKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      FillHeader    ; 2
                        DW      OrderandVolumeMsg ; 3
                        DW      OrderBox      ; 4
                        DW      PanBox1       ; 5
                        DW      PanBox2       ; 6
                        DW      ShowChannelMsgs ; 7
                        DW      VolumeText1      ; 8
                        DW      VolumeText2      ; 9
                        DW      OrderList     ; 10
                        DW      ChannelVol1      ; 11
                        DW      ChannelVol2      ; 12
                        DW      ChannelVol3      ; 13
                        DW      ChannelVol4      ; 14
                        DW      ChannelVol5      ; 15
                        DW      ChannelVol6      ; 16
                        DW      ChannelVol7      ; 17
                        DW      ChannelVol8      ; 18
                        DW      ChannelVol9      ; 19
                        DW      ChannelVol10     ; 20
                        DW      ChannelVol11     ; 21
                        DW      ChannelVol12     ; 22
                        DW      ChannelVol13     ; 23
                        DW      ChannelVol14     ; 24
                        DW      ChannelVol15     ; 25
                        DW      ChannelVol16     ; 26
                        DW      ChannelVol17
                        DW      ChannelVol18
                        DW      ChannelVol19
                        DW      ChannelVol20
                        DW      ChannelVol21
                        DW      ChannelVol22
                        DW      ChannelVol23
                        DW      ChannelVol24
                        DW      ChannelVol25
                        DW      ChannelVol26
                        DW      ChannelVol27
                        DW      ChannelVol28
                        DW      ChannelVol29
                        DW      ChannelVol30
                        DW      ChannelVol31
                        DW      ChannelVol32
                        DW      ChannelVol33
                        DW      ChannelVol34
                        DW      ChannelVol35
                        DW      ChannelVol36
                        DW      ChannelVol37
                        DW      ChannelVol38
                        DW      ChannelVol39
                        DW      ChannelVol40
                        DW      ChannelVol41
                        DW      ChannelVol42
                        DW      ChannelVol43
                        DW      ChannelVol44
                        DW      ChannelVol45
                        DW      ChannelVol46
                        DW      ChannelVol47
                        DW      ChannelVol48
                        DW      ChannelVol49
                        DW      ChannelVol50
                        DW      ChannelVol51
                        DW      ChannelVol52
                        DW      ChannelVol53
                        DW      ChannelVol54
                        DW      ChannelVol55
                        DW      ChannelVol56
                        DW      ChannelVol57
                        DW      ChannelVol58
                        DW      ChannelVol59
                        DW      ChannelVol60
                        DW      ChannelVol61
                        DW      ChannelVol62
                        DW      ChannelVol63
                        DW      ChannelVol64   ; 74
                        DW      SetHelpContext4
                        DW      0

ChannelVol1                DW      9                       ; Object 9
                        DB      31, 15                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 0+64                 ; Volume/Channel 1
                        DW      11, 12, 43, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 19                  ; PgUp/PgDn

ChannelVol2                DW      9
                        DB      31, 16
                        DW      0, 64
                        DW      4, 1+64                    ; Volume/Channel 2
                        DW      11, 13, 44, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 20                  ; PgUp/PgDn

ChannelVol3                DW      9                       ; Object 9
                        DB      31, 17                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 2+64                    ; Volume/Channel 3
                        DW      12, 14, 45, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 21                  ; PgUp/PgDn

ChannelVol4                DW      9
                        DB      31, 18
                        DW      0, 64
                        DW      4, 3+64                    ; Volume/Channel 4
                        DW      13, 15, 46, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 22                  ; PgUp/PgDn

ChannelVol5                DW      9                       ; Object 9
                        DB      31, 19                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 4+64                    ; Volume/Channel 5
                        DW      14, 16, 47, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 23                  ; PgUp/PgDn

ChannelVol6                DW      9
                        DB      31, 20
                        DW      0, 64
                        DW      4, 5+64                    ; Volume/Channel 6
                        DW      15, 17, 48, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 24                  ; PgUp/PgDn

ChannelVol7                DW      9                       ; Object 9
                        DB      31, 21                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 6+64                    ; Volume/Channel 7
                        DW      16, 18, 49, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 25                  ; PgUp/PgDn

ChannelVol8                DW      9
                        DB      31, 22
                        DW      0, 64
                        DW      4, 7+64                    ; Volume/Channel 8
                        DW      17, 19, 50, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 26                  ; PgUp/PgDn

ChannelVol9                DW      9                       ; Object 9
                        DB      31, 23                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 8+64                    ; Volume/Channel 9
                        DW      18, 20, 51, 10          ; Up/Down/Tab/Shift-Tab
                        DW      11, 27                  ; PgUp/PgDn

ChannelVol10               DW      9
                        DB      31, 24
                        DW      0, 64
                        DW      4, 9+64                    ; Volume/Channel 10
                        DW      19, 21, 52, 10          ; Up/Down/Tab/Shift-Tab
                        DW      12, 28                  ; PgUp/PgDn

ChannelVol11               DW      9                       ; Object 9
                        DB      31, 25                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 10+64                ; Volume/Channel 11
                        DW      20, 22, 53, 10          ; Up/Down/Tab/Shift-Tab
                        DW      13, 29                  ; PgUp/PgDn

ChannelVol12               DW      9
                        DB      31, 26
                        DW      0, 64
                        DW      4, 11+64                ; Volume/Channel 12
                        DW      21, 23, 54, 10          ; Up/Down/Tab/Shift-Tab
                        DW      14, 30                  ; PgUp/PgDn

ChannelVol13               DW      9                       ; Object 9
                        DB      31, 27                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 12+64                ; Volume/Channel 13
                        DW      22, 24, 55, 10          ; Up/Down/Tab/Shift-Tab
                        DW      15, 31                  ; PgUp/PgDn

ChannelVol14               DW      9
                        DB      31, 28
                        DW      0, 64
                        DW      4, 13+64                ; Volume/Channel 14
                        DW      23, 25, 56, 10          ; Up/Down/Tab/Shift-Tab
                        DW      16, 32                  ; PgUp/PgDn

ChannelVol15               DW      9                       ; Object 9
                        DB      31, 29                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 14+64                ; Volume/Channel 15
                        DW      24, 26, 57, 10          ; Up/Down/Tab/Shift-Tab
                        DW      17, 33                  ; PgUp/PgDn

ChannelVol16               DW      9
                        DB      31, 30
                        DW      0, 64
                        DW      4, 15+64                ; Volume/Channel 16
                        DW      25, 27, 58, 10          ; Up/Down/Tab/Shift-Tab
                        DW      18, 34                  ; PgUp/PgDn

ChannelVol17               DW      9                       ; Object 9
                        DB      31, 31                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 16+64                ; Volume/Channel 17
                        DW      26, 28, 59, 10          ; Up/Down/Tab/Shift-Tab
                        DW      19, 35                  ; PgUp/PgDn

ChannelVol18               DW      9
                        DB      31, 32
                        DW      0, 64
                        DW      4, 17+64                ; Volume/Channel 18
                        DW      27, 29, 60, 10          ; Up/Down/Tab/Shift-Tab
                        DW      20, 36                  ; PgUp/PgDn

ChannelVol19               DW      9                       ; Object 9
                        DB      31, 33                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 18+64                ; Volume/Channel 19
                        DW      28, 30, 61, 10          ; Up/Down/Tab/Shift-Tab
                        DW      21, 37                  ; PgUp/PgDn

ChannelVol20               DW      9
                        DB      31, 34
                        DW      0, 64
                        DW      4, 19+64                ; Volume/Channel 20
                        DW      29, 31, 62, 10          ; Up/Down/Tab/Shift-Tab
                        DW      22, 38                  ; PgUp/PgDn

ChannelVol21               DW      9                       ; Object 9
                        DB      31, 35                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 20+64                ; Volume/Channel 21
                        DW      30, 32, 63, 10          ; Up/Down/Tab/Shift-Tab
                        DW      23, 39                  ; PgUp/PgDn

ChannelVol22               DW      9
                        DB      31, 36
                        DW      0, 64
                        DW      4, 21+64                ; Volume/Channel 22
                        DW      31, 33, 64, 10          ; Up/Down/Tab/Shift-Tab
                        DW      24, 40                  ; PgUp/PgDn

ChannelVol23               DW      9                       ; Object 9
                        DB      31, 37                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 22+64                ; Volume/Channel 23
                        DW      32, 34, 65, 10          ; Up/Down/Tab/Shift-Tab
                        DW      25, 41                  ; PgUp/PgDn

ChannelVol24               DW      9
                        DB      31, 38
                        DW      0, 64
                        DW      4, 23+64                ; Volume/Channel 24
                        DW      33, 35, 66, 10          ; Up/Down/Tab/Shift-Tab
                        DW      26, 42                  ; PgUp/PgDn

ChannelVol25               DW      9                       ; Object 9
                        DB      31, 39                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 24+64                ; Volume/Channel 25
                        DW      34, 36, 67, 10          ; Up/Down/Tab/Shift-Tab
                        DW      27, 43                  ; PgUp/PgDn

ChannelVol26               DW      9
                        DB      31, 40
                        DW      0, 64
                        DW      4, 25+64                ; Volume/Channel 26
                        DW      35, 37, 68, 10          ; Up/Down/Tab/Shift-Tab
                        DW      28, 44                  ; PgUp/PgDn

ChannelVol27               DW      9                       ; Object 9
                        DB      31, 41                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 26+64                ; Volume/Channel 27
                        DW      36, 38, 69, 10          ; Up/Down/Tab/Shift-Tab
                        DW      29, 45                  ; PgUp/PgDn

ChannelVol28               DW      9
                        DB      31, 42
                        DW      0, 64
                        DW      4, 27+64                ; Volume/Channel 28
                        DW      37, 39, 70, 10          ; Up/Down/Tab/Shift-Tab
                        DW      30, 46                  ; PgUp/PgDn

ChannelVol29               DW      9                       ; Object 9
                        DB      31, 43                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 28+64                ; Volume/Channel 29
                        DW      38, 40, 71, 10          ; Up/Down/Tab/Shift-Tab
                        DW      31, 47                  ; PgUp/PgDn

ChannelVol30               DW      9
                        DB      31, 44
                        DW      0, 64
                        DW      4, 29+64                ; Volume/Channel 30
                        DW      39, 41, 72, 10          ; Up/Down/Tab/Shift-Tab
                        DW      32, 48                  ; PgUp/PgDn

ChannelVol31               DW      9                       ; Object 9
                        DB      31, 45                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 30+64                ; Volume/Channel 31
                        DW      40, 42, 73, 10          ; Up/Down/Tab/Shift-Tab
                        DW      33, 49                  ; PgUp/PgDn

ChannelVol32               DW      9
                        DB      31, 46
                        DW      0, 64
                        DW      4, 31+64                ; Volume/Channel 32
                        DW      41, 43, 74, 10          ; Up/Down/Tab/Shift-Tab
                        DW      34, 50                  ; PgUp/PgDn

ChannelVol33               DW      9                       ; Object 9
                        DB      65, 15                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 32+64                ; Volume/Channel 33
                        DW      42, 44, 10, 11          ; Up/Down/Tab/Shift-Tab
                        DW      35, 51                  ; PgUp/PgDn

ChannelVol34               DW      9
                        DB      65, 16
                        DW      0, 64
                        DW      4, 33+64                ; Volume/Channel 34
                        DW      43, 45, 10, 12          ; Up/Down/Tab/Shift-Tab
                        DW      36, 52                  ; PgUp/PgDn

ChannelVol35               DW      9                       ; Object 9
                        DB      65, 17                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 34+64                ; Volume/Channel 35
                        DW      44, 46, 10, 13          ; Up/Down/Tab/Shift-Tab
                        DW      37, 53                  ; PgUp/PgDn

ChannelVol36               DW      9
                        DB      65, 18
                        DW      0, 64
                        DW      4, 35+64                ; Volume/Channel 36
                        DW      45, 47, 10, 14          ; Up/Down/Tab/Shift-Tab
                        DW      38, 54                  ; PgUp/PgDn

ChannelVol37               DW      9                       ; Object 9
                        DB      65, 19                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 36+64                ; Volume/Channel 37
                        DW      46, 48, 10, 15          ; Up/Down/Tab/Shift-Tab
                        DW      39, 55                  ; PgUp/PgDn

ChannelVol38               DW      9
                        DB      65, 20
                        DW      0, 64
                        DW      4, 37+64                ; Volume/Channel 38
                        DW      47, 49, 10, 16          ; Up/Down/Tab/Shift-Tab
                        DW      40, 56                  ; PgUp/PgDn

ChannelVol39               DW      9                       ; Object 9
                        DB      65, 21                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 38+64                ; Volume/Channel 39
                        DW      48, 50, 10, 17          ; Up/Down/Tab/Shift-Tab
                        DW      41, 57                  ; PgUp/PgDn

ChannelVol40               DW      9
                        DB      65, 22
                        DW      0, 64
                        DW      4, 39+64                ; Volume/Channel 40
                        DW      49, 51, 10, 18          ; Up/Down/Tab/Shift-Tab
                        DW      42, 58                  ; PgUp/PgDn

ChannelVol41               DW      9                       ; Object 9
                        DB      65, 23                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 40+64                ; Volume/Channel 41
                        DW      50, 52, 10, 19          ; Up/Down/Tab/Shift-Tab
                        DW      43, 59                  ; PgUp/PgDn

ChannelVol42               DW      9
                        DB      65, 24
                        DW      0, 64
                        DW      4, 41+64                ; Volume/Channel 42
                        DW      51, 53, 10, 20          ; Up/Down/Tab/Shift-Tab
                        DW      44, 60                  ; PgUp/PgDn

ChannelVol43               DW      9                       ; Object 9
                        DB      65, 25                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 42+64                ; Volume/Channel 43
                        DW      52, 54, 10, 21          ; Up/Down/Tab/Shift-Tab
                        DW      45, 61                  ; PgUp/PgDn

ChannelVol44               DW      9
                        DB      65, 26
                        DW      0, 64
                        DW      4, 43+64                ; Volume/Channel 44
                        DW      53, 55, 10, 22          ; Up/Down/Tab/Shift-Tab
                        DW      46, 62                  ; PgUp/PgDn

ChannelVol45               DW      9                       ; Object 9
                        DB      65, 27                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 44+64                ; Volume/Channel 45
                        DW      54, 56, 10, 23          ; Up/Down/Tab/Shift-Tab
                        DW      47, 63                  ; PgUp/PgDn

ChannelVol46               DW      9
                        DB      65, 28
                        DW      0, 64
                        DW      4, 45+64                ; Volume/Channel 46
                        DW      55, 57, 10, 24          ; Up/Down/Tab/Shift-Tab
                        DW      48, 64                  ; PgUp/PgDn

ChannelVol47               DW      9                       ; Object 9
                        DB      65, 29                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 46+64                ; Volume/Channel 47
                        DW      56, 58, 10, 25          ; Up/Down/Tab/Shift-Tab
                        DW      49, 65                  ; PgUp/PgDn

ChannelVol48               DW      9
                        DB      65, 30
                        DW      0, 64
                        DW      4, 47+64                ; Volume/Channel 48
                        DW      57, 59, 10, 26          ; Up/Down/Tab/Shift-Tab
                        DW      50, 66                  ; PgUp/PgDn

ChannelVol49               DW      9                       ; Object 9
                        DB      65, 31                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 48+64                ; Volume/Channel 49
                        DW      58, 60, 10, 27          ; Up/Down/Tab/Shift-Tab
                        DW      51, 67                  ; PgUp/PgDn

ChannelVol50               DW      9
                        DB      65, 32
                        DW      0, 64
                        DW      4, 49+64                ; Volume/Channel 50
                        DW      59, 61, 10, 28          ; Up/Down/Tab/Shift-Tab
                        DW      52, 68                  ; PgUp/PgDn

ChannelVol51               DW      9                       ; Object 9
                        DB      65, 33                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 50+64                ; Volume/Channel 51
                        DW      60, 62, 10, 29          ; Up/Down/Tab/Shift-Tab
                        DW      53, 69                  ; PgUp/PgDn

ChannelVol52               DW      9
                        DB      65, 34
                        DW      0, 64
                        DW      4, 51+64                ; Volume/Channel 52
                        DW      61, 63, 10, 30          ; Up/Down/Tab/Shift-Tab
                        DW      54, 70                  ; PgUp/PgDn

ChannelVol53               DW      9                       ; Object 9
                        DB      65, 35                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 52+64                ; Volume/Channel 53
                        DW      62, 64, 10, 31          ; Up/Down/Tab/Shift-Tab
                        DW      55, 71                  ; PgUp/PgDn

ChannelVol54               DW      9
                        DB      65, 36
                        DW      0, 64
                        DW      4, 53+64                ; Volume/Channel 54
                        DW      63, 65, 10, 32          ; Up/Down/Tab/Shift-Tab
                        DW      56, 72                  ; PgUp/PgDn

ChannelVol55               DW      9                       ; Object 9
                        DB      65, 37                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 54+64                ; Volume/Channel 55
                        DW      64, 66, 10, 33          ; Up/Down/Tab/Shift-Tab
                        DW      57, 73                  ; PgUp/PgDn

ChannelVol56               DW      9
                        DB      65, 38
                        DW      0, 64
                        DW      4, 55+64                ; Volume/Channel 56
                        DW      65, 67, 10, 34          ; Up/Down/Tab/Shift-Tab
                        DW      58, 74                  ; PgUp/PgDn

ChannelVol57               DW      9                       ; Object 9
                        DB      65, 39                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 56+64                ; Volume/Channel 57
                        DW      66, 68, 10, 35          ; Up/Down/Tab/Shift-Tab
                        DW      59, 74                  ; PgUp/PgDn

ChannelVol58               DW      9
                        DB      65, 40
                        DW      0, 64
                        DW      4, 57+64                ; Volume/Channel 58
                        DW      67, 69, 10, 36          ; Up/Down/Tab/Shift-Tab
                        DW      60, 74                  ; PgUp/PgDn

ChannelVol59               DW      9                       ; Object 9
                        DB      65, 41                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 58+64                ; Volume/Channel 59
                        DW      68, 70, 10, 37          ; Up/Down/Tab/Shift-Tab
                        DW      61, 74                  ; PgUp/PgDn

ChannelVol60               DW      9
                        DB      65, 42
                        DW      0, 64
                        DW      4, 59+64                ; Volume/Channel 60
                        DW      69, 71, 10, 38          ; Up/Down/Tab/Shift-Tab
                        DW      62, 74                  ; PgUp/PgDn

ChannelVol61               DW      9                       ; Object 9
                        DB      65, 43                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 60+64                ; Volume/Channel 61
                        DW      70, 72, 10, 39          ; Up/Down/Tab/Shift-Tab
                        DW      63, 74                  ; PgUp/PgDn

ChannelVol62               DW      9
                        DB      65, 44
                        DW      0, 64
                        DW      4, 61+64                ; Volume/Channel 62
                        DW      71, 73, 10, 40          ; Up/Down/Tab/Shift-Tab
                        DW      64, 74                  ; PgUp/PgDn

ChannelVol63               DW      9                       ; Object 9
                        DB      65, 45                  ; x,y
                        DW      0, 64                   ; Ranges
                        DW      4, 62+64                ; Volume/Channel 63
                        DW      72, 74, 10, 41          ; Up/Down/Tab/Shift-Tab
                        DW      65, 74                  ; PgUp/PgDn

ChannelVol64               DW      9
                        DB      65, 46
                        DW      0, 64
                        DW      4, 63+64                ; Volume/Channel 64
                        DW      73, 74, 10, 42          ; Up/Down/Tab/Shift-Tab
                        DW      66, 74                  ; PgUp/PgDn

O1_ConfigureITList      DW      14                      ; Song name input
                        DW      IdleFunctionList
                        DW      GlobalKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      FillHeader    ; 2
                        DW      ConfigureListHeader
                        DW      DivisionLine
                        DW      SongVarText1
                        DW      SongNameBox
                        DW      InitialSpeedBox
                        DW      VolumeBox
                        DW      SongVarText2
                        DW      LinkCommandGToggle    ; 10
                        DW      DirectoryText1
                        DW      DirectoryText2
                        DW      DirectoryInputBox
                        DW      SongNameInput         ; 14
                        DW      InitialTempoInput     ; 15
                        DW      InitialSpeedInput     ; 16
                        DW      GlobalVolumeInput     ; 17
                        DW      MixingVolumeInput     ; 18
                        DW      SeparationInput       ; 19
                        DW      OldEffectsModeToggle  ; 20
                        DW      ConfigSetupButtons    ; 21
                        DW      ControlInstrumentButton ; 22
                        DW      ControlSampleButton   ; 23
                        DW      PlayBackStereoButton   ; 24
                        DW      PlayBackMonoButton     ; 25
                        DW      SlideLinearButton      ; 26
                        DW      SlideAmigaButton       ; 27
                        DW      SongDirectoryInput     ; 28
                        DW      SampleDirectoryInput   ; 29
                        DW      InstrumentDirectoryInput       ; 30
                        DW      SaveDirectoryConfigButton      ; 31
                        DW      LinkCommandGToggle     ; 32
                        DW      SetHelpContext5
                        DW      0

ConfigureListHeader     DW      10
                        DB      "Song Variables & Directory Configuration (F12)", 0

DivisionLine            DW      1
                        DB      1, 39
                        DB      21h
                        DB      0FFh, 78, 129, 0

SongVarText1            DW      1
                        DB      33, 13
                        DB      23h
                        DB      "Song Variables", 0

SongNameBox             DW      0
                        DB      16, 15, 43, 17
                        DB      25

InitialSpeedBox         DW      0
                        DB      16, 18, 50, 21
                        DB      9

VolumeBox               DW      0
                        DB      16, 22, 34, 28
                        DB      25

SongVarText2            DW      1
                        DB      2, 16
                        DB      20h
                        DB      0FFh, 5, " Song Name", 13
                        DB      13
                        DB      13
                        DB      " Initial Tempo", 13
                        DB      " Initial Speed", 13
                        DB      13
                        DB      13
                        DB      " Global Volume", 13
                        DB      " Mixing Volume", 13
                        DB      0FFh, 4, " Separation", 13
                        DB      "   Old Effects", 13
                        DB      "Compatible Gxx", 13
                        DB      13
                        DB      13
                        DB      0FFh, 7, " Control", 13
                        DB      13
                        DB      13
                        DB      0FFh, 6, " Playback", 13
                        DB      13
                        DB      13
                        DB      "  Pitch Slides"
                        DB      0

DirectoryText1          DW      1
                        DB      34, 40
                        DB      23h
                        DB      "Directories", 0

DirectoryText2          DW      1
                        DB      2, 42
                        DB      20h
                        DB      0FFh, 4, " Module", 13
                        DB      0FFh, 4, " Sample", 13
                        DB      "Instrument", 13
                        DB      0

DirectoryInputBox       DW      0
                        DB      12, 41, 78, 45
                        DB      27

SongNameInput           DW      16
                        DB      17, 16
                        DW      4, 4                    ; Song seg, Song name
                        DW      26
                        DD      0
                        DW      0FFFFh, 15, 15, 0FFFFh

InitialTempoInput       DW      14
                        DB      17, 19
                        DW      31, 255
                        DW      3, 33h                  ; Init. Tempo=Music:33h
                        DW      14, 16, 16, 14
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn
                        DW      32

InitialSpeedInput       DW      14
                        DB      17, 20
                        DW      1, 255
                        DW      3, 32h                  ; Init. Tempo=Music:33h
                        DW      15, 17, 17, 15
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn
                        DW      32

GlobalVolumeInput       DW      9
                        DB      17, 23
                        DW      0, 128
                        DW      3, 30h
                        DW      16, 18, 18, 16
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

MixingVolumeInput       DW      9
                        DB      17, 24
                        DW      0, 128
                        DW      3, 31h
                        DW      17, 19, 19, 17
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

SeparationInput         DW      9
                        DB      17, 25
                        DW      0, 128
                        DW      3, 34h
                        DW      18, 20, 20, 18
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn

OldEffectsModeToggle    DW      17
                        DB      17, 26
                        DW      2
                        DW      2Ch             ; of 'Flags'
                        DB      16
                        DW      19, 10, 10, 19

LinkCommandGToggle      DW      17
                        DB      17, 27
                        DW      2
                        DW      2Ch             ; of 'Flags'
                        DB      32
                        DW      20, 22, 22, 20

ConfigSetupButtons      DW      8
                        DD      DWord Ptr F_ConfigButtonSetup

ControlInstrumentButton DW      2
                        DW      10, 24, 23, 23
                        DW      0
                        DW      0, 0                    ; Empty Data...
                        DW      2                       ; Call Function
                        DD      DWord Ptr F_SetControlInstrument
                        DW      0, 0, 0                 ; Empty data...
                        DB      16, 29, 30, 31
                        DB      8
                        DB      0
                        DB      " Instruments", 0

ControlSampleButton     DW      2
                        DW      10, 25, 22, 22
                        DW      0
                        DW      0, 0                    ; Empty Data...
                        DW      2                       ; Call Function
                        DD      DWord Ptr F_SetControlSample
                        DW      0, 0, 0                 ; Empty data...
                        DB      31, 29, 45, 31
                        DB      8
                        DB      0
                        DB      " Samples", 0

PlayBackStereoButton    DW      2
                        DW      22, 26, 25, 25
                        DW      0
                        DW      0, 0                    ; Empty Data...
                        DW      2                       ; Call Function
                        DD      DWord Ptr F_SetStereo
                        DW      0, 0, 0                 ; Empty data...
                        DB      16, 32, 30, 34
                        DB      8
                        DB      0
                        DB      " Stereo", 0

PlayBackMonoButton      DW      2
                        DW      23, 27, 24, 24
                        DW      0
                        DW      0, 0                    ; Empty Data...
                        DW      2                       ; Call Function
                        DD      DWord Ptr F_SetMono
                        DW      0, 0, 0                 ; Empty data...
                        DB      31, 32, 45, 34
                        DB      8
                        DB      0
                        DB      " Mono", 0

SlideLinearButton       DW      2
                        DW      24, 28, 27, 27
                        DW      0
                        DW      0, 0                    ; Empty Data...
                        DW      2                       ; Call Function
                        DD      DWord Ptr F_SetLinear
                        DW      0, 0, 0                 ; Empty data...
                        DB      16, 35, 30, 37
                        DB      8
                        DB      0
                        DB      " Linear", 0

SlideAmigaButton        DW      2
                        DW      25, 28, 26, 26
                        DW      0
                        DW      0, 0                    ; Empty Data...
                        DW      2                       ; Call Function
                        DD      DWord Ptr F_SetAmiga
                        DW      0, 0, 0                 ; Empty data...
                        DB      31, 35, 45, 37
                        DB      8
                        DB      0
                        DB      " Amiga", 0



SongDirectoryInput      DW      16
                        DB      13, 42
                        DW      0, SongDirectory
                        DW      65
                        DD      0
                        DW      26, 29, 29, 26

SampleDirectoryInput    DW      16
                        DB      013, 43
                        DW      0, SampleDirectory
                        DW      65
                        DD      0
                        DW      28, 30, 30, 28

InstrumentDirectoryInput DW      16
                        DB      13, 44
                        DW      0, InstrumentDirectory
                        DW      65
                        DD      0
                        DW      29, 31, 31, 29

SaveDirectoryConfigButton DW    2
                        DW      30, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0            ; Press... no data reqd
                        DW      2
                        DD      DWord Ptr D_SaveDirectoryConfiguration
                        DW      0, 0, 0         ; Unused data..
                        DB      27, 46, 52, 48
                        DB      8               ; Thin box up
                        DB      0               ; Button up
                        DB      "  Save all Preferences", 0

O1_KeyboardList         DW      8
                        DW      IdleKeyboardFunctionList
                        DW      GlobalKeyList
                        DW      FullScreenBox  ; 0
                        DW      ScreenHeader   ; 1
                        DW      FillHeader     ; 2
                        DW      KeyboardHeader ; 3
                        DW      KeyboardBox1   ; 4
                        DW      KeyboardBox2   ; 5
                        DW      KeyboardText1  ; 6
                        DW      KeyboardText2  ; 7
                        DW      KBClearTableButton ; 8
                        DW      KBDrawTables
                        DW      SetHelpContext8
                        DW      0

IdleKeyboardFunctionList DD      DWord Ptr IdleUpdateInfoLine
                        DD      DWord Ptr K_DrawTables
                        DD      0

KBDrawTables            DW      8
                        DD      DWord Ptr K_DrawTables

KeyboardHeader          DW      10
                        DB      "Keyboard Information (Ctrl-F1)", 0

KeyboardBox1            DW      0
                        DB      1, 14, 25, 47
                        DB      27

KeyboardBox2            DW      0
                        DB      28, 14, 52, 47
                        DB      27

KeyboardText1           DW      1
                        DB      2, 13
                        DB      20h
                        DB      "Keyboard Queue", 0

KeyboardText2           DW      1
                        DB      29, 13
                        DB      20h
                        DB      "Keypress Table", 0

KBClearTableButton      DW      2
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      2
                        DD      DWord Ptr K_ResetKeyboardTables
                        DW      0, 0, 0
                        DB      53, 14, 77, 16
                        DB      8
                        DB      0
                        DB      " Clear Keyboard Tables", 0


O1_InstrumentListGeneral DW     4
                        DW      IdleFunctionList
                        DW      InstrumentGlobalKeyList
                        DW      FullScreenBox  ; 0
                        DW      ScreenHeader   ; 1
                        DW      InstrumentListHeader   ; 2
                        DW      InstrumentNameBox      ; 3
                        DW      InstrumentWindow       ; 4
                        DW      GInstrumentGeneralButton ; 5
                        DW      GInstrumentVolumeButton ; 6
                        DW      GInstrumentPanningButton ; 7
                        DW      GInstrumentPitchButton  ; 8
                        DW      InstrumentTranslateBox ; 9
                        DW      InstrumentNoteWindow   ; 10
                        DW      InstrumentFileDivision
                        DW      InstrumentDCTDivision
                        DW      InstrumentGeneralNNAText
                        DW      InstrumentGeneralDCTText
                        DW      InstrumentGeneralFileNameText ; 15
                        DW      NNAButtonCut ; 16
                        DW      NNAButtonContinue ; 17
                        DW      NNAButtonOff ;18
                        DW      NNAButtonFade ; 19
                        DW      DCTButtonOff   ; 20
                        DW      DCTButtonNote  ; 21
                        DW      DCTButtonSample        ; 22
                        DW      DCTButtonInstrument    ; 23
                        DW      DCAButtonCut           ; 24
                        DW      DCAButtonOff           ; 25
                        DW      DCAButtonFade          ; 26
                        DW      InstrumentFilenameBox  ; 27
                        DW      InstrumentFilename     ; 28
                        DW      InstrumentNNADivision
                        DW      FillHeader
                        DW      SetHelpContext7
                        DW      0

InstrumentDCTDivision   DW      1
                        DB      44, 30
                        DB      20h
                        DB      0FFh, 35, 134, 0

InstrumentFileDivision  DW      1
                        DB      44, 45
                        DB      20h
                        DB      0FFh, 35, 154, 0

InstrumentNNADivision   DW      1
                        DB      44, 15
                        DB      20h
                        DB      0FFh, 35, 134, 0

NNAButtonCut            DW      2
                        DW      6, 17, 10, 4
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      0               ; Set to 0
                        DW      11h
                        DW      0               ; Unused
                        DB      45, 18, 77, 20, 8
                        DB      0
                        DB      "  Note Cut", 0

NNAButtonContinue       DW      2
                        DW      16, 18, 10, 4
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      1               ; Set to 1
                        DW      11h
                        DW      0               ; Unused
                        DB      45, 21, 77, 23, 8
                        DB      0
                        DB      "  Continue", 0

NNAButtonOff            DW      2
                        DW      17, 19, 10, 4
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      2
                        DW      11h
                        DW      0               ; Unused
                        DB      45, 24, 77, 26, 8
                        DB      0
                        DB      "  Note Off", 0

NNAButtonFade           DW      2
                        DW      18, 20, 10, 4
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      3
                        DW      11h
                        DW      0               ; Unused
                        DB      45, 27, 77, 29, 8
                        DB      0
                        DB      "  Note Fade", 0

DCTButtonOff            DW      2
                        DW      19, 21, 10, 24
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      0               ; Set to 0
                        DW      12h
                        DW      0               ; Unused
                        DB      45, 33, 60, 35, 8
                        DB      0
                        DB      "  Disabled", 0

DCTButtonNote           DW      2
                        DW      20, 22, 10, 25
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      1
                        DW      12h
                        DW      0               ; Unused
                        DB      45, 36, 60, 38, 8
                        DB      0
                        DB      "  Note", 0

DCTButtonSample         DW      2
                        DW      21, 23, 10, 26
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      2
                        DW      12h
                        DW      0               ; Unused
                        DB      45, 39, 60, 41, 8
                        DB      0
                        DB      "  Sample", 0

DCTButtonInstrument     DW      2
                        DW      22, 28, 10, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      3
                        DW      12h
                        DW      0               ; Unused
                        DB      45, 42, 60, 44, 8
                        DB      0
                        DB      "  Instrument", 0

DCAButtonCut            DW      2
                        DW      19, 25, 20, 4
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      0               ; Set to 0
                        DW      13h
                        DW      0               ; Unused
                        DB      61, 33, 77, 35, 8
                        DB      0
                        DB      "  Note Cut", 0

DCAButtonOff            DW      2
                        DW      24, 26, 21, 4
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      1               ; Set to 0
                        DW      13h
                        DW      0               ; Unused
                        DB      61, 36, 77, 38, 8
                        DB      0
                        DB      "  Note Off", 0

DCAButtonFade           DW      2
                        DW      25, 28, 22, 4
                        DW      0
                        DW      0, 0
                        DW      5
                        DD      DWord Ptr F_InstrumentButtonHandler
                        DW      2               ; Set to 0
                        DW      13h
                        DW      0               ; Unused
                        DB      61, 39, 77, 41, 8
                        DB      0
                        DB      "  Note Fade", 0


InstrumentGeneralNNAText DW     1
                        DB      54, 17
                        DB      20h
                        DB      "New Note Action", 0

InstrumentGeneralDCTText DW     1
                        DB      47, 32
                        DB      20h
                        DB      "Duplicate Check Type & Action", 0

InstrumentGeneralFileNameText DW     1
                        DB      47, 47
                        DB      20h
                        DB      "Filename", 0

InstrumentFilenameBox   DW      0
                        DB      55, 46, 73, 48
                        DB      27

InstrumentFileName      DW      16
                        DB      56, 47
                        DW      6, 4
                        DW      13
                        DD      0
                        DW      22, 0FFFFh, 4, 10

GInstrumentGeneralButton DW      2
                        DW      0FFFFh, 10, 4, 6
                        DW      0, 0, 0
                        DW      6
                        DD      I_GetInstrumentScreen
                        DW      0
                        DD      I_SelectScreen
                        DB      31, 12, 41, 14
                        DB      8, 0
                        DB      " General", 0

GInstrumentVolumeButton  DW      2
                        DW      0FFFFh, 16, 5, 7
                        DW      0, 0, 0
                        DW      6
                        DD      I_GetInstrumentScreen
                        DW      1
                        DD      I_SelectScreen
                        DB      43, 12, 53, 14
                        DB      8, 0
                        DB      " Volume", 0

GInstrumentPanningButton DW      2
                        DW      0FFFFh, 16, 6, 8
                        DW      0, 0, 0
                        DW      6
                        DD      I_GetInstrumentScreen
                        DW      2
                        DD      I_SelectScreen
                        DB      55, 12, 65, 14
                        DB      8, 0
                        DB      " Panning", 0

GInstrumentPitchButton   DW      2
                        DW      0FFFFh, 16, 7, 4
                        DW      0, 0, 0
                        DW      6
                        DD      I_GetInstrumentScreen
                        DW      3
                        DD      I_SelectScreen
                        DB      67, 12, 77, 14
                        DB      8, 0
                        DB      "  Pitch", 0


O1_InstrumentListVolume DW      4
                        DW      IdleInstrumentList
                        DW      InstrumentGlobalKeyList
                        DW      FullScreenBox  ; 0
                        DW      ScreenHeader   ; 1
                        DW      InstrumentListHeader   ; 2
                        DW      InstrumentNameBox      ; 3
                        DW      InstrumentWindow       ; 4
                        DW      VInstrumentGeneralButton ; 5
                        DW      VInstrumentVolumeButton ; 6
                        DW      VInstrumentPanningButton ; 7
                        DW      VInstrumentPitchButton  ; 8
                        DW      InstrumentEnvelopeBox   ; 9
                        DW      InstrumentEnvelope     ; 10
                        DW      InstrumentVEBox        ; 11
                        DW      InstrumentVELBox       ; 12
                        DW      InstrumentVESLBox      ; 13
                        DW      InstrumentVEText       ; 14
                        DW      InstrumentVELText      ; 15
                        DW      InstrumentVESLText     ; 16
                        DW      InstrumentVEToggle     ; 17
                        DW      InstrumentVELToggle    ; 18
                        DW      InstrumentVELBeg       ; 19
                        DW      InstrumentVELEnd       ; 20
                        DW      InstrumentVESLToggle   ; 21
                        DW      InstrumentVESLBeg      ; 22
                        DW      InstrumentVESLEnd      ; 23
                        DW      InstrumentGlobalVolumeBox ; 24
                        DW      InstrumentGlobalVolumeText ; 25
                        DW      InstrumentVolume2      ; 26
                        DW      InstrumentFadeOut2     ; 27
                        DW      InstrumentRandomVolBox ; 28
                        DW      InstrumentRandomVolBar ; 29
                        DW      InstrumentVECToggle    ; 30
                        DW      FillHeader
                        DW      SetHelpContext7
                        DW      0

InstrumentVEBox         DW      0
                        DB      53, 27, 63, 30
                        DB      27

InstrumentVEText        DW      1
                        DB      38, 28
                        DB      20h
                        DB      "Volume Envelope", 13
                        DB      "          Carry", 0

InstrumentVEToggle      DW      17
                        DB      54, 28
                        DW      4, 130h
                        DB      1
                        DW      10, 30, 4, 4

InstrumentVECToggle     DW      17
                        DB      54, 29
                        DW      4, 130h
                        DB      8
                        DW      17, 18, 4, 4

InstrumentVELBox        DW      0
                        DB      53, 31, 63, 35
                        DB      27

InstrumentVELToggle     DW      17
                        DB      54, 32
                        DW      4, 130h
                        DB      2
                        DW      30, 19, 4, 4

InstrumentVELBeg        DW      13
                        DB      54, 33
                        DW      0, 132h
                        DD      0
                        DW      18, 20, 4, 4

InstrumentVELEnd        DW      13
                        DB      54, 34
                        DW      0, 133h
                        DD      0
                        DW      19, 21, 4, 4

InstrumentVELText       DW      1
                        DB      40, 32
                        DB      20h
                        DB      "Envelope Loop", 13
                        DB      "   Loop Begin", 13
                        DB      0FFh, 5, " Loop End", 0

InstrumentVESLBox       DW      0
                        DB      53, 36, 63, 40
                        DB      27

InstrumentVESLText      DW      1
                        DB      40, 37
                        DB      20h
                        DB      " Sustain Loop", 13
                        DB      "SusLoop Begin", 13
                        DB      "  SusLoop End", 0

InstrumentVESLToggle    DW      17
                        DB      54, 37
                        DW      4, 130h
                        DB      4
                        DW      20, 22, 4, 4

InstrumentVESLBeg       DW      13
                        DB      54, 38
                        DW      0, 134h
                        DD      0
                        DW      21, 23, 4, 4

InstrumentVESLEnd       DW      13
                        DB      54, 39
                        DW      0, 135h
                        DD      0
                        DW      22, 26, 4, 4

InstrumentEnvelopeBox   DW      0
                        DB      31, 17, 77, 26
                        DB      27

InstrumentGlobalVolumeBox DW    0
                        DB      53, 41, 71, 44
                        DB      27

InstrumentGlobalVolumeText DW   1
                        DB      39, 42
                        DB      20h
                        DB      " Global Volume", 13
                        DB      0FFh, 7, " Fadeout", 13
                        DB      13
                        DB      13
                        DB      "Volume Swing %", 0

InstrumentRandomVolBox  DW      0
                        DB      53, 45, 71, 47
                        DB      27

InstrumentRandomVolBar  DW      14
                        DB      54, 46
                        DW      0, 100
                        DW      6, 1Ah
                        DW      27, 0FFFFh, 4, 4
                        DW      0FFFFh, 0FFFFh
                        DW      16

InstrumentVolume2       DW      9
                        DB      54, 42
                        DW      0, 128
                        DW      6, 18h
                        DW      23, 27, 4, 4
                        DW      0FFFFh, 0FFFFh

InstrumentFadeOut2      DW      14
                        DB      54, 43
                        DW      0, 256
                        DW      6, 14h
                        DW      26, 29, 4, 4
                        DW      0FFFFh, 0FFFFh
                        DW      16

InstrumentEnvelope      DW      15
                        DD      DWord Ptr I_DrawEnvelope
                        DD      DWord Ptr I_PreEnvelope
                        DD      DWord Ptr I_PostEnvelope

VInstrumentGeneralButton DW      2
                        DW      0FFFFh, 10, 4, 6
                        DW      0, 0, 0
                        DW      6
                        DD      I_GetInstrumentScreen
                        DW      0
                        DD      I_SelectScreen
                        DB      31, 12, 41, 14
                        DB      8, 0
                        DB      " General", 0

VInstrumentVolumeButton  DW      2
                        DW      0FFFFh, 10, 5, 7
                        DW      0, 0, 0
                        DW      6
                        DD      I_GetInstrumentScreen
                        DW      1
                        DD      I_SelectScreen
                        DB      43, 12, 53, 14
                        DB      8, 0
                        DB      " Volume", 0

VInstrumentPanningButton DW      2
                        DW      0FFFFh, 10, 6, 8
                        DW      0, 0, 0
                        DW      6
                        DD      I_GetInstrumentScreen
                        DW      2
                        DD      I_SelectScreen
                        DB      55, 12, 65, 14
                        DB      8, 0
                        DB      " Panning", 0

VInstrumentPitchButton   DW      2
                        DW      0FFFFh, 10, 7, 4
                        DW      0, 0, 0
                        DW      6
                        DD      I_GetInstrumentScreen
                        DW      3
                        DD      I_SelectScreen
                        DB      67, 12, 77, 14
                        DB      8, 0
                        DB      "  Pitch", 0

O1_InstrumentListPanning DW     4
                        DW      IdleInstrumentList
                        DW      InstrumentGlobalKeyList
                        DW      FullScreenBox  ; 0
                        DW      ScreenHeader   ; 1
                        DW      InstrumentListHeader   ; 2
                        DW      InstrumentNameBox      ; 3
                        DW      InstrumentWindow       ; 4
                        DW      VInstrumentGeneralButton ; 5
                        DW      VInstrumentVolumeButton ; 6
                        DW      VInstrumentPanningButton ; 7
                        DW      VInstrumentPitchButton  ; 8
                        DW      InstrumentEnvelopeBox   ; 9
                        DW      InstrumentEnvelope     ; 10
                        DW      InstrumentVEBox        ; 11
                        DW      InstrumentVELBox       ; 12
                        DW      InstrumentVESLBox      ; 13
                        DW      InstrumentPanText      ; 14
                        DW      InstrumentVELText      ; 15
                        DW      InstrumentVESLText     ; 16
                        DW      InstrumentPanToggle    ; 17
                        DW      InstrumentPanLToggle   ; 18
                        DW      InstrumentPanLBeg      ; 19
                        DW      InstrumentPanLEnd      ; 20
                        DW      InstrumentPanSLToggle  ; 21
                        DW      InstrumentPanSLBeg     ; 22
                        DW      InstrumentPanSLEnd     ; 23
                        DW      InstrumentDefaultPanBox ; 24
                        DW      InstrumentDefaultPanText ; 25
                        DW      InstrumentDefaultPanToggle ; 26
                        DW      InstrumentDefaultPanValue ; 27
                        DW      InstrumentPitchPanCenter  ; 28
                        DW      InstrumentPitchPanSeparation ; 29
                        DW      InstrumentPanSwing     ; 30
                        DW      InstrumentPanBoxFiller
                        DW      InstrumentPanCToggle   ; 32
                        DW      FillHeader
                        DW      SetHelpContext7
                        DW      0

InstrumentPanBoxFiller  DW      1
                        DB      54, 44
                        DB      2
                        DB      0FFh, 9, 09Ah, 0

InstrumentPanText       DW      1
                        DB      37, 28
                        DB      20h
                        DB      "Panning Envelope", 13
                        DB      "           Carry", 0

InstrumentPanToggle     DW      17
                        DB      54, 28
                        DW      4, 182h
                        DB      1
                        DW      10, 32, 4, 4

InstrumentPanCToggle    DW      17
                        DB      54, 29
                        DW      4, 182h
                        DB      8
                        DW      17, 18, 4, 4

InstrumentPanLToggle    DW      17
                        DB      54, 32
                        DW      4, 182h
                        DB      2
                        DW      32, 19, 4, 4

InstrumentPanLBeg       DW      13
                        DB      54, 33
                        DW      0, 184h
                        DD      0
                        DW      18, 20, 4, 4

InstrumentPanLEnd       DW      13
                        DB      54, 34
                        DW      0, 185h
                        DD      0
                        DW      19, 21, 4, 4

InstrumentPanSLToggle   DW      17
                        DB      54, 37
                        DW      4, 182h
                        DB      4
                        DW      20, 22, 4, 4

InstrumentPanSLBeg      DW      13
                        DB      54, 38
                        DW      0, 186h
                        DD      0
                        DW      21, 23, 4, 4

InstrumentPanSLEnd      DW      13
                        DB      54, 39
                        DW      0, 187h
                        DD      0
                        DW      22, 26, 4, 4

InstrumentDefaultPanBox DW      0
                        DB      53, 41, 63, 48
                        DB      27

InstrumentDefaultPanText DW     1
                        DB      33, 42
                        DB      20h
                        DB      0FFh, 9, " Default Pan", 13
                        DB      0FFh, 11,  " Pan Value", 13, 13
                        DB      0FFh, 4, " Pitch-Pan Center", 13
                        DB      "Pitch-Pan Separation", 13
                        DB      0FFh, 11, " Pan swing", 0

InstrumentDefaultPanToggle DW   17
                        DB      54, 42
                        DW      4, 19h
                        DB      80h
                        DW      23, 27, 4, 4

InstrumentDefaultPanValue DW    9
                        DB      54, 43
                        DW      0, 64
                        DW      6, 19h
                        DW      26, 28, 4, 4
                        DW      0FFFFh, 0FFFFh

InstrumentPitchPanCenter DW     15
                        DD      DWord Ptr I_DrawPitchPanCenter
                        DD      DWord Ptr I_PrePitchPanCenter
                        DD      DWord Ptr I_PostPitchPanCenter

InstrumentPitchPanSeparation DW 9
                        DB      54, 46
                        DW      -32, 32
                        DW      6, 16h
                        DW      28, 30, 4, 4
                        DW      0FFFFh, 0FFFFh

InstrumentPanSwing      DW      9
                        DB      54, 47
                        DW      0, 64
                        DW      6, 1Bh
                        DW      29, 0FFFFh, 4, 4
                        DW      0FFFFh, 0FFFFh

O1_InstrumentListPitch  DW      4
                        DW      IdleInstrumentList
                        DW      InstrumentGlobalKeyList
                        DW      FullScreenBox  ; 0
                        DW      ScreenHeader   ; 1
                        DW      InstrumentListHeader   ; 2
                        DW      InstrumentNameBox      ; 3
                        DW      InstrumentWindow       ; 4
                        DW      VInstrumentGeneralButton ; 5
                        DW      VInstrumentVolumeButton ; 6
                        DW      VInstrumentPanningButton ; 7
                        DW      VInstrumentPitchButton  ; 8
                        DW      InstrumentEnvelopeBox   ; 9
                        DW      InstrumentEnvelope     ; 10
                        DW      InstrumentVEBox        ; 11
                        DW      InstrumentVELBox       ; 12
                        DW      InstrumentVESLBox      ; 13
                        DW      InstrumentPitchText    ; 14
                        DW      InstrumentVELText      ; 15
                        DW      InstrumentVESLText     ; 16
                        DW      InstrumentPitchToggle  ; 17
                        DW      InstrumentPitchLToggle ; 18
                        DW      InstrumentPitchLBeg    ; 19
                        DW      InstrumentPitchLEnd     ; 20
                        DW      InstrumentPitchSLToggle ; 21
                        DW      InstrumentPitchSLBeg    ; 22
                        DW      InstrumentPitchSLEnd    ; 23
                        DW      InstrumentMIDIBox1     ; 24
                        DW      InstrumentMIDIChannel  ; 25
                        DW      InstrumentMIDIProgram  ; 26
                        DW      InstrumentMIDIBank1    ; 27
                        DW      InstrumentMIDIBank2    ; 28
                        DW      InstrumentPitchCToggle ; 29
%IF  FILTERENVELOPES
                        DW      InstrumentFilterCutoff ; 30
                        DW      InstrumentFilterResonance ; 31
%ENDIF 
                        DW      InstrumentMIDIText
                        DW      FillHeader
                        DW      SetHelpContext7
                        DW      0

InstrumentMIDIText      DW      1
                        DB      36, 42
                        DB      20h

%IF  FILTERENVELOPES
                        DB      "Default Cutoff", 13
                        DB      "Default Resonance", 13
%ENDIF 
                        DB      "MIDI Channel", 13
                        DB      "MIDI Program", 13
                        DB      "MIDI Bank Low", 13
                        DB      "MIDI Bank High", 0

InstrumentPitchText     DW      1
                        DB      35, 28
                        DB      20h
                        DB      "Frequency Envelope", 13
                        DB      "             Carry", 0

InstrumentPitchToggle   DW      17
                        DB      54, 28
                        DW      4, 1D4h
                        DB      1
                        DW      10, 29, 4, 4

InstrumentPitchCToggle  DW      17
                        DB      54, 29
                        DW      4, 1D4h
                        DB      8
                        DW      17, 18, 4, 4

InstrumentPitchLToggle  DW      17
                        DB      54, 32
                        DW      4, 1D4h
                        DB      2
                        DW      29, 19, 4, 4

InstrumentPitchLBeg     DW      13
                        DB      54, 33
                        DW      0, 1D6h
                        DD      0
                        DW      18, 20, 4, 4

InstrumentPitchLEnd     DW      13
                        DB      54, 34
                        DW      0, 1D7h
                        DD      0
                        DW      19, 21, 4, 4

InstrumentPitchSLToggle DW      17
                        DB      54, 37
                        DW      4, 1D4h
                        DB      4
                        DW      20, 22, 4, 4

InstrumentPitchSLBeg    DW      13
                        DB      54, 38
                        DW      0, 1D8h
                        DD      0
                        DW      21, 23, 4, 4

InstrumentPitchSLEnd    DW      13
                        DB      54, 39
                        DW      0, 1D9h
                        DD      0
%IF  FILTERENVELOPES
                        DW      22, 30, 4, 4
%ELSE
                        DW      22, 25, 4, 4
%ENDIF 

InstrumentMIDIChannel   DW      14
%IF  FILTERENVELOPES
                        DB      54, 44
%ELSE
                        DB      54, 42
%ENDIF 
                        DW      0, 17
                        DW      6, 3Ch
%IF  FILTERENVELOPES
                        DW      30, 26, 4, 4
%ELSE
                        DW      23, 26, 4, 4
%ENDIF 

                        DW      0FFFFh, 0FFFFh
                        DW      16

InstrumentFilterCutoff  DW      14
                        DB      54, 42
                        DW      0, 127
                        DW      6, 3Ah
                        DW      23, 31, 4, 4
                        DW      0FFFFh, 0FFFFh
                        DW      16

InstrumentFilterResonance DW      14
                        DB      54, 43
                        DW      0, 127
                        DW      6, 3Bh
                        DW      30, 25, 4, 4
                        DW      0FFFFh, 0FFFFh
                        DW      16

InstrumentMIDIProgram   DW      14
%IF  FILTERENVELOPES
                        DB      54, 45
%ELSE
                        DB      54, 43
%ENDIF 
                        DW      -1, 127
                        DW      6, 3Dh
                        DW      25, 27, 4, 4
                        DW      0FFFFh, 0FFFFh
                        DW      16

InstrumentMIDIBank1     DW      14
%IF  FILTERENVELOPES
                        DB      54, 46
%ELSE
                        DB      54, 44
%ENDIF 
                        DW      -1, 127
                        DW      6, 3Eh
                        DW      26, 28, 4, 4
                        DW      0FFFFh, 0FFFFh
                        DW      16

InstrumentMIDIBank2     DW      14
%IF  FILTERENVELOPES
                        DB      54, 47
%ELSE
                        DB      54, 45
%ENDIF 
                        DW      -1, 127
                        DW      6, 3Fh
                        DW      27, 0FFFFh, 4, 4
                        DW      0FFFFh, 0FFFFh
                        DW      16

InstrumentListHeader    DW      10
                        DB      "Instrument List (F4)", 0

InstrumentNameBox       DW      0
                        DB      4, 12, 30, 48
                        DB      27

InstrumentTranslateBox  DW      0
                        DB      31, 15, 42, 48
                        DB      27

InstrumentMIDIBox1      DW      0
%IF  FILTERENVELOPES
                        DB      53, 41, 71, 48
%ELSE
                        DB      53, 41, 71, 46
%ENDIF 
                        DB      27

InstrumentWindow        DW      15
                        DD      DWord Ptr I_DrawInstrumentWindow
                        DD      DWord Ptr I_PreInstrumentWindow
                        DD      DWord Ptr I_PostInstrumentWindow

InstrumentNoteWindow    DW      15
                        DD      DWord Ptr I_DrawNoteWindow
                        DD      DWord Ptr I_PreNoteWindow
                        DD      DWord Ptr I_PostNoteWindow

InstrumentGlobalKeyList Label
%IF  ENABLESOLO
                        DB      1
                        DW      '`'
                        DD      DWord Ptr Music_ToggleSoloInstrument
%ENDIF 

                        DB      3               ; Ctrl
                        DW      1C9h
                        DD      DWord Ptr I_SampleUp

                        DB      3               ; Ctrl.
                        DW      1D1h
                        DD      DWord Ptr I_SampleDown

                        DB      0
                        DW      1C9h
                        DD      DWord Ptr I_SampleUp

                        DB      0
                        DW      1D1h
                        DD      DWord Ptr I_SampleDown

                        DB      1
                        DW      '<'
                        DD      DWord Ptr I_DecreasePlayChannel

                        DB      1
                        DW      '>'
                        DD      DWord Ptr I_IncreasePlayChannel

                        DB      1
                        DW      ','
                        DD      DWord Ptr I_DecreasePlayChannel

                        DB      1
                        DW      '.'
                        DD      DWord Ptr I_IncreasePlayChannel

                        DB      1
                        DW      2000h           ; Alt 'D'
                        DD      DWord Ptr I_DeleteInstrument

                        DB      1
                        DW      1300h           ; Alt 'R'
                        DD      DWord Ptr I_ReplaceInstrument

                        DB      1
                        DW      1F00h           ; Alt 'S'
                        DD      DWord Ptr I_SwapInstruments

                        DB      1
                        DW      1800h           ; Alt 'O'
                        DD      DWord Ptr D_SaveInstrument

                        DB      1
                        DW      1900h           ; Alt 'P'
                        DD      DWord Ptr I_CopyInstrument

                        DB      1
                        DW      1600h           ; Alt 'U'
                        DD      DWord Ptr I_UpdateInstrument

                        DB      1               ; Alt 'J'
                        DW      2400h
                        DD      DWord Ptr I_ScaleInstrumentVolumes

                        DB      1
                        DW      2D00h           ; Alt 'X'
                        DD      DWord Ptr I_ExchangeInstruments

                        DB      1
                        DW      3100h           ; Alt 'N'
                        DD      DWord Ptr I_ToggleMultiChannel

                        DB      0
                        DW      139h
                        DD      DWord Ptr I_InstrumentListSpace

                        DB      0
                        DW      039h
                        DD      DWord Ptr I_InstrumentListNoteOff

                        DB      0               ; Enter... to load sample!
                        DW      11Ch
                        DD      DWord Ptr Glbl_LoadInstrument

                        DB      4               ; Always call function
                        DW      0
                        DD      DWord Ptr I_PlayNote

                        DB      5
                        DW      GlobalKeyList

O1_DisplayList          DW      4
                        DW      InfoPageIdleList
                        DW      GlobalKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      FillHeader    ; 2
                        DW      DisplayHeader ; 3
                        DW      DisplayObject ; 4
                        DW      SetHelpContext9
                        DW      0

O1_FullDisplayList      DW      1
                        DW      InfoPageIdleList
                        DW      GlobalKeyList
                        DW      FullScreenBox ; 0
                        DW      DisplayObject ; 1
                        DW      SetHelpContext9
                        DW      0

InfoPageIdleList        Label   DWord
                        DD      DWord Ptr DisplayUpdateScreen
                        DD      0

DisplayHeader           DW      10
                        DB      "Info Page (F5)", 0

DisplayObject           DW      15
                        DD      DWord Ptr DrawDisplayData
                        DD      DWord Ptr F_Nothing
                        DD      DWord Ptr PostDisplayData

O1_ThumbStringList      DW      3
                        DW      IdleFunctionList
                        DW      ESC&ReturnList
                        DW      ThumbBox
                        DW      ThumbInputText
                        DW      ThumbInputBox
                        DW      ThumbInput
                        DW      0

ThumbBox                DW      0
                        DB      29, 24, 50, 28
                        DB      3

ThumbInputText          DW      1
                        DB      32, 26
                        DB      23h
                        DB      "Enter Value", 0

ThumbInputBox           DW      0
                        DB      43, 25, 48, 27
                        DB      27

ThumbInput              DW      16
                        DB      44, 26
                        DW      5, ThumbStringEnter
                        DW      4
                        DD      0               ; No function
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

O1_NewSongList          DW      11
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      NewSongBox             ; 0
                        DW      NewSongText            ; 1
                        DW      NewSongText2           ; 2
                        DW      KeepPatternButton      ; 3
                        DW      ClearPatternButton     ; 4
                        DW      KeepSampleButton       ; 5
                        DW      ClearSampleButton      ; 6
                        DW      KeepInstrumentButton   ; 7
                        DW      ClearInstrumentButton  ; 8
                        DW      KeepOrderListButton    ; 9
                        DW      ClearOrderListButton   ; 10
                        DW      NewSongOKButton        ; 11
                        DW      NewSongCancelButton    ; 12

                        DW      0

NewSongBox              DW      0
                        DB      21, 20, 58, 38
                        DB      3

NewSongText             DW      1
                        DB      36, 21
                        DB      23h
                        DB      "New Song", 0

NewSongText2            DW      1
                        DB      23, 24
                        DB      20h
                        DB      "   Patterns", 13
                        DB      13
                        DB      13
                        DB      0FFh, 4, " Samples", 13
                        DB      13
                        DB      13
                        DB      "Instruments", 13
                        DB      13
                        DB      13
                        DB      " Order List", 0

KeepPatternButton       DW      2
                        DW      0FFFFh, 5, 4, 4
                        DW      2
                        DW      3, 4
                        DW      3                       ; Set var!
                        DW      3, 0
                        DW      0, 0, 0
                        DB      34, 23, 43, 25
                        DB      8
                        DB      0
                        DB      "  Keep", 0

ClearPatternButton      DW      2
                        DW      4, 6, 3, 3
                        DW      2
                        DW      3, 4
                        DW      3
                        DW      3, 1                    ; Clear pattern flag
                        DW      0, 0, 0
                        DB      44, 23, 54, 25
                        DB      8
                        DB      3                       ; Default to down
                        DB      "  Clear", 0

KeepSampleButton        DW      2
                        DW      3, 7, 6, 6
                        DW      2
                        DW      5, 6
                        DW      3                       ; Set var!
                        DW      4, 0
                        DW      0, 0, 0
                        DB      34, 26, 43, 28
                        DB      8
                        DB      0
                        DB      "  Keep", 0

ClearSampleButton       DW      2
                        DW      4, 8, 5, 5
                        DW      2
                        DW      5, 6
                        DW      3
                        DW      4, 1                    ; Clear pattern flag
                        DW      0, 0, 0
                        DB      44, 26, 54, 28
                        DB      8
                        DB      3                       ; Default to down
                        DB      "  Clear", 0

KeepInstrumentButton    DW      2
                        DW      5, 9, 8, 8
                        DW      2
                        DW      7, 8
                        DW      3                       ; Set var!
                        DW      5, 0
                        DW      0, 0, 0
                        DB      34, 29, 43, 31
                        DB      8
                        DB      0
                        DB      "  Keep", 0

ClearInstrumentButton   DW      2
                        DW      6, 10, 7, 7
                        DW      2
                        DW      7, 8
                        DW      3
                        DW      5, 1                    ; Clear pattern flag
                        DW      0, 0, 0
                        DB      44, 29, 54, 31
                        DB      8
                        DB      3                       ; Default to down
                        DB      "  Clear", 0

KeepOrderListButton     DW      2
                        DW      7, 11, 10, 10
                        DW      2
                        DW      9, 10
                        DW      3                       ; Set var!
                        DW      6, 0
                        DW      0, 0, 0
                        DB      34, 32, 43, 34
                        DB      8
                        DB      0
                        DB      "  Keep", 0

ClearOrderListButton    DW      2
                        DW      8, 12, 9, 9
                        DW      2
                        DW      9, 10
                        DW      3
                        DW      6, 1                    ; Clear pattern flag
                        DW      0, 0, 0
                        DB      44, 32, 54, 34
                        DB      8
                        DB      3                       ; Default to down
                        DB      "  Clear", 0

NewSongOKButton         DW      2
                        DW      9, 0FFFFh, 12, 12
                        DW      0                       ; Press.
                        DW      0, 0
                        DW      0                       ; Return value.
                        DW      1                       ; Return OK.
                        DW      0, 0, 0, 0
                        DB      27, 35, 38, 37
                        DB      8
                        DB      0
                        DB      "    OK", 0

NewSongCancelButton     DW      2
                        DW      9, 0FFFFh, 11, 11
                        DW      0
                        DW      0, 0
                        DW      0
                        DW      0
                        DW      0, 0, 0, 0
                        DB      40, 35, 51, 37
                        DB      8
                        DB      0
                        DB      "  Cancel", 0

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

O1_MainMenu             DW      3
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      MainMenuBox1           ; 0
                        DW      MainMenuBox2           ; 1
                        DW      MainMenuText           ; 2
                        DW      MainMenuFile           ; 3
                        DW      MainMenuPlayBack       ; 4
                        DW      MainMenuViewPatterns   ; 5
                        DW      MainMenuViewSamples    ; 6
                        DW      MainMenuViewInstruments; 7
                        DW      MainMenuViewOrderPan   ; 8
                        DW      MainMenuViewVariables  ; 9
                        DW      MainMenuMessage
                        DW      MainMenuHelp           ; 11

                        DW      0

MainMenuBox1            DW      0
                        DB      6, 14, 38, 46
                        DB      3

MainMenuBox2            DW      0
                        DB      7, 15, 37, 45
                        DB      0

MainMenuText            DW      1
                        DB      12, 16
                        DB      23h
                        DB      "Main Menu", 0

MainMenuFile            DW      2
                        DW      0FFFFh, 4, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      2
                        DD      DWord Ptr F_FileMenu
                        DW      0, 0, 0
                        DB      8, 18, 36, 20
                        DB      28
                        DB      0
                        DB      " File Menu...", 0

MainMenuPlayBack        DW      2
                        DW      3, 5, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      2
                        DD      DWord Ptr F_PlayBackMenu
                        DW      0, 0, 0
                        DB      8, 21, 36, 23
                        DB      28
                        DB      0
                        DB      " Playback Menu...", 0

MainMenuViewPatterns    DW      2
                        DW      4, 6, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4                       ; Jump to function
                        DD      DWord Ptr F_ViewPattern
                        DW      0, 0, 0
                        DB      8, 24, 36, 26
                        DB      28
                        DB      0
                        DB      " View Patterns        (F2)", 0

MainMenuViewSamples     DW      2
                        DW      5, 7, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      2
                        DD      DWord Ptr F_SampleMenu
                        DW      0, 0, 0
                        DB      8, 27, 36, 29
                        DB      28
                        DB      0
                        DB      " Sample Menu...", 0

MainMenuViewInstruments DW      2
                        DW      6, 8, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      2
                        DD      DWord Ptr F_InstrumentMenu
                        DW      0, 0, 0
                        DB      8, 30, 36, 32
                        DB      28
                        DB      0
                        DB      " Instrument Menu...", 0

MainMenuViewOrderPan    DW      2
                        DW      7, 9, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_ViewOrderPan
                        DW      0, 0, 0
                        DB      8, 33, 36, 35
                        DB      28
                        DB      0
                        DB      " View Orders/Panning (F11)", 0

MainMenuViewVariables   DW      2
                        DW      8, 10, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_ViewVariables
                        DW      0, 0, 0
                        DB      8, 36, 36, 38
                        DB      28
                        DB      0
                        DB      " View Variables      (F12)", 0

MainMenuMessage         DW      2
                        DW      9, 11, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_MessageEditor
                        DW      0, 0, 0
                        DB      8, 39, 36, 41
                        DB      28
                        DB      0
                        DB      " Message Editor (Shift-F9)", 0

MainMenuHelp            DW      2
                        DW      10, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_Help
                        DW      0, 0, 0
                        DB      8, 42, 36, 44
                        DB      28
                        DB      0
                        DB      " Help!                (F1)", 0

O1_FileMenu             DW      3
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      FileBox1       ; 0
                        DW      FileBox2       ; 1
                        DW      FileMenuText   ; 2
                        DW      FileLoad       ; 3
                        DW      FileNew
                        DW      FileSaveCurrent
                        DW      FileSaveAs
                        DW      FileDOSShell
                        DW      FileQuit
                        DW      0

FileBox1                DW      0
                        DB      25, 16, 54, 39
                        DB      1

FileBox2                DW      0
                        DB      26, 17, 53, 38
                        DB      0

FileMenuText            DW      1
                        DB      30, 18
                        DB      23h
                        DB      "File Menu", 0

FileLoad                DW      2
                        DW      0FFFFh, 4, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_FileLoad
                        DW      0, 0, 0
                        DB      27, 20, 52, 22
                        DB      28
                        DB      0
                        DB      " Load...           (F9)", 0

FileNew                 DW      2
                        DW      3, 5, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_FileNew
                        DW      0, 0, 0
                        DB      27, 23, 52, 25
                        DB      28
                        DB      0
                        DB      " New...        (Ctrl-N)", 0

FileSaveCurrent         DW      2
                        DW      4, 6, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_FileSaveCurrent
                        DW      0, 0, 0
                        DB      27, 26, 52, 28
                        DB      28
                        DB      0
                        DB      " Save Current  (Ctrl-S)", 0

FileSaveAs              DW      2
                        DW      5, 7, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_FileSaveAs
                        DW      0, 0, 0
                        DB      27, 29, 52, 31
                        DB      28
                        DB      0
                        DB      " Save As...       (F10)", 0

FileDOSShell            DW      2
                        DW      6, 8, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_FileDOSShell
                        DW      0, 0, 0
                        DB      27, 32, 52, 34
                        DB      28
                        DB      0
                        DB      " Shell to DOS  (Ctrl-D)", 0

FileQuit                DW      2
                        DW      7, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_FileQuit
                        DW      0, 0, 0
                        DB      27, 35, 52, 37
                        DB      28
                        DB      0
                        DB      " Quit          (Ctrl-Q)", 0

O1_PlayBackMenu         DW      3
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      PlayBackBox1           ; 0
                        DW      PlayBackBox2           ; 1
                        DW      PlayBackText           ; 2
                        DW      PlayBackShowInfoPage   ; 3
                        DW      PlayBackSong           ; 4
                        DW      PlayBackPattern        ; 5
                        DW      PlayBackOrder          ; 6
                        DW      PlayBackMark           ; 7
                        DW      PlayBackStop           ; 8
                        DW      PlayBackReinit         ; 9
                        DW      PlayBackDriverScreen   ; 10
                        DW      PlayBackCalculateLength ; 11
                        DW      0

PlayBackBox1            DW      0
                        DB      25, 16, 59, 48
                        DB      1

PlayBackBox2            DW      0
                        DB      26, 17, 58, 47
                        DB      0

PlayBackText            DW      1
                        DB      31, 18
                        DB      23h
                        DB      "Playback Menu", 0

PlayBackShowInfoPage    DW      2
                        DW      0FFFFh, 4, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_InfoPage
                        DW      0, 0, 0
                        DB      27, 20, 57, 22
                        DB      28
                        DB      0
                        DB      " Show Infopage          (F5)", 0

PlayBackSong            DW      2
                        DW      3, 5, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_PlaySong
                        DW      0, 0, 0
                        DB      27, 23, 57, 25
                        DB      28
                        DB      0
                        DB      " Play Song         (Ctrl-F5)", 0

PlayBackPattern         DW      2
                        DW      4, 6, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_PlayPattern
                        DW      0, 0, 0
                        DB      27, 26, 57, 28
                        DB      28
                        DB      0
                        DB      " Play Pattern           (F6)", 0

PlayBackOrder           DW      2
                        DW      5, 7, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_PlayOrder
                        DW      0, 0, 0
                        DB      27, 29, 57, 31
                        DB      28
                        DB      0
                        DB      " Play from Order  (Shift-F6)", 0

PlayBackMark            DW      2
                        DW      6, 8, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_PlayMark
                        DW      0, 0, 0
                        DB      27, 32, 57, 34
                        DB      28
                        DB      0
                        DB      " Play from Mark/Cursor  (F7)", 0

PlayBackStop            DW      2
                        DW      7, 9, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_Stop
                        DW      0, 0, 0
                        DB      27, 35, 57, 37
                        DB      28
                        DB      0
                        DB      " Stop                   (F8)", 0

PlayBackReinit          DW      2
                        DW      8, 10, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_ReinitSoundCard
                        DW      0, 0, 0
                        DB      27, 38, 57, 40
                        DB      28
                        DB      0
                        DB      " Reinit Soundcard   (Ctrl-I)", 0

PlayBackDriverScreen    DW      2
                        DW      9, 11, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_DriverScreen
                        DW      0, 0, 0
                        DB      27, 41, 57, 43
                        DB      28
                        DB      0
                        DB      " Driver Screen    (Shift-F5)", 0

PlayBackCalculateLength DW      2
                        DW      10, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_CalculateLength
                        DW      0, 0, 0
                        DB      27, 44, 57, 46
                        DB      28
                        DB      0
                        DB      " Calculate Length   (Ctrl-P)", 0


O1_SampleMenu           DW      3
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      SampleBox1           ; 0
                        DW      SampleBox2           ; 1
                        DW      SampleText           ; 2
                        DW      SampleMenuList       ; 3
                        DW      SampleLibrary        ; 4
                        DW      ReloadGravis         ; 5

                        DW      0

SampleBox1              DW      0
                        DB      25, 23, 57, 37
                        DB      1


SampleBox2              DW      0
                        DB      26, 24, 56, 36
                        DB      0

SampleText              DW      1
                        DB      30, 25
                        DB      23h
                        DB      "Sample Menu", 0

SampleMenuList          DW      2
                        DW      0FFFFh, 4, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_SampleList
                        DW      0, 0, 0
                        DB      27, 27, 55, 29
                        DB      28
                        DB      0
                        DB      " Sample List          (F3)", 0

SampleLibrary           DW      2
                        DW      3, 5, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_SampleLibrary
                        DW      0, 0, 0
                        DB      27, 30, 55, 32
                        DB      28
                        DB      0
                        DB      " Sample Library  (Ctrl-F3)", 0

ReloadGravis            DW      2
                        DW      4, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_ReloadGravis
                        DW      0, 0, 0
                        DB      27, 33, 55, 35
                        DB      28
                        DB      0
                        DB      " Reload Soundcard (Ctrl-G)", 0

O1_InstrumentMenu       DW      3
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      InstrumentBox1       ; 0
                        DW      InstrumentBox2       ; 1
                        DW      InstrumentText       ; 2
                        DW      InstrumentMenuList   ; 3
                        DW      InstrumentLibrary    ; 4
                        DW      0

InstrumentBox1          DW      0
                        DB      20, 23, 56, 34
                        DB      1


InstrumentBox2          DW      0
                        DB      21, 24, 55, 33
                        DB      0

InstrumentText          DW      1
                        DB      25, 25
                        DB      23h
                        DB      "Instrument Menu", 0

InstrumentMenuList      DW      2
                        DW      0FFFFh, 4, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_InstrumentList
                        DW      0, 0, 0
                        DB      22, 27, 54, 29
                        DB      28
                        DB      0
                        DB      " Instrument List          (F4)", 0

InstrumentLibrary       DW      2
                        DW      3, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      4
                        DD      DWord Ptr F_InstrumentLibrary
                        DW      0, 0, 0
                        DB      22, 30, 54, 32
                        DB      28
                        DB      0
                        DB      " Instrument Library  (Ctrl-F4)", 0

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

O1_EditSampleName       DW      3
                        DW      IdleFunctionList
                        DW      ESCReturnList
                        DW      EditSampleNameBox       ; 0
                        DW      EditSampleNameText      ; 1
                        DW      EditSampleNameInputBox  ; 2
                        DW      EditSampleNameInput     ;3
                        DW      0

EditSampleNameBox       DW      0
                        DB      23, 25, 56, 31
                        DB      3

EditSampleNameText      DW      1
                        DB      32, 26
                        DB      23h
                        DB      "Edit Sample Name", 0

EditSampleNameInputBox  DW      0
                        DB      26, 28, 53, 30
                        DB      27

EditSampleNameInput     DW      16
                        DB      27, 29
                        DW      0, SampleName
                        DW      26
                        DD      DWord Ptr F_Return1
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

%IF  MEMORYDEBUG

O1_DebugList            DW      5
                        DW      IdleDebugFunctionList
                        DW      DebugKeyList
                        DW      FullScreenBox
                        DW      ScreenHeader
                        DW      DebugBox
                        DW      DebugText
                        DW      DebugInputBox
                        DW      DebugAddressInput
                        DW      DebugInfo
                        DW      FillHeader
                        DW      DebugHeader
                        DW      0


DebugInfo               DW      8
IdleDebugFunctionList   DD      DWord Ptr F_DrawDebug
                        DD      DWord Ptr IdleUpdateInfoLine
                        DD      0

DebugKeyList            Label
                        DB      4
                        DW      0
                        DD      DWord Ptr F_PostDebug

                        DB      0
                        DW      1C8h
                        DD      DWord Ptr F_DebugUp

                        DB      0
                        DW      1D0h
                        DD      DWord Ptr F_DebugDown

                        DB      0
                        DW      1C9h
                        DD      DWord Ptr F_DebugPgUp

                        DB      0
                        DW      1D1h
                        DD      DWord Ptr F_DebugPgDn

                        DB      5
                        DW      GlobalKeyList


DebugBox                DW      0
                        DB      1, 14, 78, 45
                        DB      27

DebugText               DW      1
                        DB      4, 47
                        DB      20h
                        DB      "Address", 0

DebugInputBox           DW      0
                        DB      11, 46, 30, 48
                        DB      25

DebugAddressInput       DW      16
                        DB      12, 47
                        DW      5, AddressInput
                        DW      18
                        DD      DWord Ptr F_DebugStringInput
                        DW      0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

DebugHeader             DW      10
                        DB      "Debug", 0

%ENDIF 

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

O1_ConfigurePaletteList DW      53
                        DW      IdleFunctionList
                        DW      GlobalKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      FillHeader    ; 2
                        DW      ConfigurePaletteHeader ; 3
                        DW      SetHelpContext10
                        DW      PaletteColourBorder1
                        DW      PaletteColourBorder2
                        DW      PaletteColourBorder3
                        DW      PaletteColourBorder4
                        DW      PaletteColourBorder5
                        DW      PaletteColourBorder6   ; 10
                        DW      PaletteColourBorder7
                        DW      PaletteColourBorder8
                        DW      PaletteColourBorder9
                        DW      PaletteColourBorder10
                        DW      PaletteColourBorder11
                        DW      PaletteColourBorder12
                        DW      PaletteColourBorder13
                        DW      PaletteColourBorder14
                        DW      PaletteColourBorder15
                        DW      PaletteColourBorder16  ; 20
                        DW      PaletteColourBox1
                        DW      PaletteColourBox2
                        DW      PaletteColourBox3
                        DW      PaletteColourBox4
                        DW      PaletteColourBox5
                        DW      PaletteColourBox6
                        DW      PaletteColourBox7
                        DW      PaletteColourBox8
                        DW      PaletteColourBox9
                        DW      PaletteColourBox10     ; 30
                        DW      PaletteColourBox11
                        DW      PaletteColourBox12
                        DW      PaletteColourBox13
                        DW      PaletteColourBox14
                        DW      PaletteColourBox15
                        DW      PaletteColourBox16
                        DW      PaletteInputBox1
                        DW      PaletteInputBox2
                        DW      PaletteInputBox3
                        DW      PaletteInputBox4       ; 40
                        DW      PaletteInputBox5
                        DW      PaletteInputBox6
                        DW      PaletteInputBox7
                        DW      PaletteInputBox8
                        DW      PaletteInputBox9
                        DW      PaletteInputBox10
                        DW      PaletteInputBox11
                        DW      PaletteInputBox12
                        DW      PaletteInputBox13
                        DW      PaletteInputBox14      ; 50
                        DW      PaletteInputBox15
                        DW      PaletteInputBox16
                        DW      Colour0RedInput        ; 53
                        DW      Colour0GreenInput
                        DW      Colour0BlueInput
                        DW      Colour1RedInput        ; 56
                        DW      Colour1GreenInput
                        DW      Colour1BlueInput
                        DW      Colour2RedInput
                        DW      Colour2GreenInput      ; 60
                        DW      Colour2BlueInput
                        DW      Colour3RedInput
                        DW      Colour3GreenInput
                        DW      Colour3BlueInput
                        DW      Colour4RedInput
                        DW      Colour4GreenInput
                        DW      Colour4BlueInput
                        DW      Colour5RedInput
                        DW      Colour5GreenInput
                        DW      Colour5BlueInput       ; 70
                        DW      Colour6RedInput
                        DW      Colour6GreenInput
                        DW      Colour6BlueInput
                        DW      Colour7RedInput        ; 74
                        DW      Colour7GreenInput
                        DW      Colour7BlueInput
                        DW      Colour8RedInput
                        DW      Colour8GreenInput
                        DW      Colour8BlueInput
                        DW      Colour9RedInput        ; 80
                        DW      Colour9GreenInput
                        DW      Colour9BlueInput
                        DW      Colour10RedInput
                        DW      Colour10GreenInput
                        DW      Colour10BlueInput
                        DW      Colour11RedInput
                        DW      Colour11GreenInput
                        DW      Colour11BlueInput
                        DW      Colour12RedInput
                        DW      Colour12GreenInput     ; 90
                        DW      Colour12BlueInput
                        DW      Colour13RedInput
                        DW      Colour13GreenInput
                        DW      Colour13BlueInput
                        DW      Colour14RedInput
                        DW      Colour14GreenInput
                        DW      Colour14BlueInput
                        DW      Colour15RedInput
                        DW      Colour15GreenInput
                        DW      Colour15BlueInput      ; 100
                        DW      PredefinedPaletteMsg
                        DW      PredefinedPalette1
                        DW      PredefinedPalette2
                        DW      PredefinedPalette3
                        DW      PredefinedPalette4
                        DW      PredefinedPalette5
                        DW      PredefinedPalette6
                        DW      PredefinedPalette7
                        DW      0

ConfigurePaletteHeader  DW      10
                        DB      "Palette Configuration (Ctrl-F12)", 0

PaletteColourBorder1    DW      0
                        DB      2, 13, 8, 17
                        DB      11

PaletteColourBorder2    DW      0
                        DB      2, 18, 8, 22
                        DB      11

PaletteColourBorder3    DW      0
                        DB      2, 23, 8, 27
                        DB      11

PaletteColourBorder4    DW      0
                        DB      2, 28, 8, 32
                        DB      11

PaletteColourBorder5    DW      0
                        DB      2, 33, 8, 37
                        DB      11

PaletteColourBorder6    DW      0
                        DB      2, 38, 8, 42
                        DB      11

PaletteColourBorder7    DW      0
                        DB      2, 43, 8, 47
                        DB      11

PaletteColourBorder8    DW      0
                        DB      29, 13, 35, 17
                        DB      11

PaletteColourBorder9    DW      0
                        DB      29, 18, 35, 22
                        DB      11

PaletteColourBorder10   DW      0
                        DB      29, 23, 35, 27
                        DB      11

PaletteColourBorder11   DW      0
                        DB      29, 28, 35, 32
                        DB      11

PaletteColourBorder12   DW      0
                        DB      29, 33, 35, 37
                        DB      11

PaletteColourBorder13   DW      0
                        DB      29, 38, 35, 42
                        DB      11

PaletteColourBorder14   DW      0
                        DB      29, 43, 35, 47
                        DB      11

PaletteColourBorder15   DW      0
                        DB      56, 13, 62, 17
                        DB      11

PaletteColourBorder16   DW      0
                        DB      56, 18, 62, 22
                        DB      11

PaletteColourBox1       DW      1
                        DB      3, 14
                        DB      00h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox2       DW      1
                        DB      3, 19
                        DB      10h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox3       DW      1
                        DB      3, 24
                        DB      20h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox4       DW      1
                        DB      3, 29
                        DB      30h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox5       DW      1
                        DB      3, 34
                        DB      40h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox6       DW      1
                        DB      3, 39
                        DB      50h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox7       DW      1
                        DB      3, 44
                        DB      60h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox8       DW      1
                        DB      30, 14
                        DB      70h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox9       DW      1
                        DB      30, 19
                        DB      80h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox10      DW      1
                        DB      30, 24
                        DB      90h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox11      DW      1
                        DB      30, 29
                        DB      0A0h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox12      DW      1
                        DB      30, 34
                        DB      0B0h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox13      DW      1
                        DB      30, 39
                        DB      0C0h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox14      DW      1
                        DB      30, 44
                        DB      0D0h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox15      DW      1
                        DB      57, 14
                        DB      0E0h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteColourBox16      DW      1
                        DB      57, 19
                        DB      0F0h
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 13
                        DB      0FFh, 5, " ", 0

PaletteInputBox1        DW      0
                        DB      9, 13, 19, 17
                        DB      27

PaletteInputBox2        DW      0
                        DB      9, 18, 19, 22
                        DB      27

PaletteInputBox3        DW      0
                        DB      9, 23, 19, 27
                        DB      27

PaletteInputBox4        DW      0
                        DB      9, 28, 19, 32
                        DB      27

PaletteInputBox5        DW      0
                        DB      9, 33, 19, 37
                        DB      27

PaletteInputBox6        DW      0
                        DB      9, 38, 19, 42
                        DB      27

PaletteInputBox7        DW      0
                        DB      9, 43, 19, 47
                        DB      27

PaletteInputBox8        DW      0
                        DB      36, 13, 46, 17
                        DB      27

PaletteInputBox9        DW      0
                        DB      36, 18, 46, 22
                        DB      27

PaletteInputBox10       DW      0
                        DB      36, 23, 46, 27
                        DB      27

PaletteInputBox11       DW      0
                        DB      36, 28, 46, 32
                        DB      27

PaletteInputBox12       DW      0
                        DB      36, 33, 46, 37
                        DB      27

PaletteInputBox13       DW      0
                        DB      36, 38, 46, 42
                        DB      27

PaletteInputBox14       DW      0
                        DB      36, 43, 46, 47
                        DB      27

PaletteInputBox15       DW      0
                        DB      63, 13, 73, 17
                        DB      27

PaletteInputBox16       DW      0
                        DB      63, 18, 73, 22
                        DB      27

Colour0RedInput         DW      9
                        DB      10, 14
                        DW      0, 63
                        DW      7, PaletteDefs
                        DW      0FFFFh, 54, 74, 95, 0FFFFh, 56

Colour0GreenInput       DW      9
                        DB      10, 15
                        DW      0, 63
                        DW      7, PaletteDefs+1
                        DW      53, 55, 75, 96, 0FFFFh, 57

Colour0BlueInput        DW      9
                        DB      10, 16
                        DW      0, 63
                        DW      7, PaletteDefs+2
                        DW      54, 56, 76, 97, 0FFFFh, 58

Colour1RedInput         DW      9
                        DB      10, 19
                        DW      0, 63
                        DW      7, PaletteDefs+3
                        DW      55, 57, 77, 98, 53, 59

Colour1GreenInput       DW      9
                        DB      10, 20
                        DW      0, 63
                        DW      7, PaletteDefs+4
                        DW      56, 58, 78, 99, 54, 60

Colour1BlueInput        DW      9
                        DB      10, 21
                        DW      0, 63
                        DW      7, PaletteDefs+5
                        DW      57, 59, 79, 100, 55, 61

Colour2RedInput         DW      9
                        DB      10, 24
                        DW      0, 63
                        DW      7, PaletteDefs+6
                        DW      58, 60, 80, 0FFFFh, 56, 62

Colour2GreenInput       DW      9
                        DB      10, 25
                        DW      0, 63
                        DW      7, PaletteDefs+7
                        DW      59, 61, 81, 0FFFFh, 57, 63

Colour2BlueInput        DW      9
                        DB      10, 26
                        DW      0, 63
                        DW      7, PaletteDefs+8
                        DW      60, 62, 82, 0FFFFh, 58, 64

Colour3RedInput         DW      9
                        DB      10, 29
                        DW      0, 63
                        DW      7, PaletteDefs+9
                        DW      61, 63, 83, 0FFFFh, 59, 65

Colour3GreenInput       DW      9
                        DB      10, 30
                        DW      0, 63
                        DW      7, PaletteDefs+10
                        DW      62, 64, 84, 0FFFFh, 60, 66

Colour3BlueInput        DW      9
                        DB      10, 31
                        DW      0, 63
                        DW      7, PaletteDefs+11
                        DW      63, 65, 85, 0FFFFh, 61, 67

Colour4RedInput         DW      9
                        DB      10, 34
                        DW      0, 63
                        DW      7, PaletteDefs+12
                        DW      64, 66, 86, 0FFFFh, 62, 68

Colour4GreenInput       DW      9
                        DB      10, 35
                        DW      0, 63
                        DW      7, PaletteDefs+13
                        DW      65, 67, 87, 0FFFFh, 63, 69

Colour4BlueInput        DW      9
                        DB      10, 36
                        DW      0, 63
                        DW      7, PaletteDefs+14
                        DW      66, 68, 88, 0FFFFh, 64, 70

Colour5RedInput         DW      9
                        DB      10, 39
                        DW      0, 63
                        DW      7, PaletteDefs+15
                        DW      67, 69, 89, 0FFFFh, 65, 71

Colour5GreenInput       DW      9
                        DB      10, 40
                        DW      0, 63
                        DW      7, PaletteDefs+16
                        DW      68, 70, 90, 0FFFFh, 66, 72

Colour5BlueInput        DW      9
                        DB      10, 41
                        DW      0, 63
                        DW      7, PaletteDefs+17
                        DW      69, 71, 91, 0FFFFh, 67, 73

Colour6RedInput         DW      9
                        DB      10, 44
                        DW      0, 63
                        DW      7, PaletteDefs+18
                        DW      70, 72, 92, 0FFFFh, 68, 74

Colour6GreenInput       DW      9
                        DB      10, 45
                        DW      0, 63
                        DW      7, PaletteDefs+19
                        DW      71, 73, 93, 0FFFFh, 69, 75

Colour6BlueInput        DW      9
                        DB      10, 46
                        DW      0, 63
                        DW      7, PaletteDefs+20
                        DW      72, 74, 94, 0FFFFh, 70, 76

Colour7RedInput         DW      9
                        DB      37, 14
                        DW      0, 63
                        DW      7, PaletteDefs+21
                        DW      73, 75, 95, 53, 71, 77

Colour7GreenInput       DW      9
                        DB      37, 15
                        DW      0, 63
                        DW      7, PaletteDefs+22
                        DW      74, 76, 96, 54, 72, 78

Colour7BlueInput        DW      9
                        DB      37, 16
                        DW      0, 63
                        DW      7, PaletteDefs+23
                        DW      75, 77, 97, 55, 73, 79

Colour8RedInput         DW      9
                        DB      37, 19
                        DW      0, 63
                        DW      7, PaletteDefs+24
                        DW      76, 78, 98, 56, 74, 80

Colour8GreenInput       DW      9
                        DB      37, 20
                        DW      0, 63
                        DW      7, PaletteDefs+25
                        DW      77, 79, 99, 57, 75, 81

Colour8BlueInput        DW      9
                        DB      37, 21
                        DW      0, 63
                        DW      7, PaletteDefs+26
                        DW      78, 80, 100, 58, 76, 82

Colour9RedInput         DW      9
                        DB      37, 24
                        DW      0, 63
                        DW      7, PaletteDefs+27
                        DW      79, 81, 102, 59, 77, 83

Colour9GreenInput       DW      9
                        DB      37, 25
                        DW      0, 63
                        DW      7, PaletteDefs+28
                        DW      80, 82, 102, 60, 78, 84

Colour9BlueInput        DW      9
                        DB      37, 26
                        DW      0, 63
                        DW      7, PaletteDefs+29
                        DW      81, 83, 102, 61, 79, 85

Colour10RedInput        DW      9
                        DB      37, 29
                        DW      0, 63
                        DW      7, PaletteDefs+30
                        DW      82, 84, 102, 62, 80, 86

Colour10GreenInput      DW      9
                        DB      37, 30
                        DW      0, 63
                        DW      7, PaletteDefs+31
                        DW      83, 85, 102, 63, 81, 87

Colour10BlueInput       DW      9
                        DB      37, 31
                        DW      0, 63
                        DW      7, PaletteDefs+32
                        DW      84, 86, 102, 64, 82, 88

Colour11RedInput        DW      9
                        DB      37, 34
                        DW      0, 63
                        DW      7, PaletteDefs+33
                        DW      85, 87, 102, 65, 83, 89

Colour11GreenInput      DW      9
                        DB      37, 35
                        DW      0, 63
                        DW      7, PaletteDefs+34
                        DW      86, 88, 102, 66, 84, 90

Colour11BlueInput       DW      9
                        DB      37, 36
                        DW      0, 63
                        DW      7, PaletteDefs+35
                        DW      87, 89, 102, 67, 85, 91

Colour12RedInput        DW      9
                        DB      37, 39
                        DW      0, 63
                        DW      7, PaletteDefs+36
                        DW      88, 90, 102, 68, 86, 92

Colour12GreenInput      DW      9
                        DB      37, 40
                        DW      0, 63
                        DW      7, PaletteDefs+37
                        DW      89, 91, 102, 69, 87, 93

Colour12BlueInput       DW      9
                        DB      37, 41
                        DW      0, 63
                        DW      7, PaletteDefs+38
                        DW      90, 92, 102, 70, 88, 94

Colour13RedInput        DW      9
                        DB      37, 44
                        DW      0, 63
                        DW      7, PaletteDefs+39
                        DW      91, 93, 102, 71, 89, 95

Colour13GreenInput      DW      9
                        DB      37, 45
                        DW      0, 63
                        DW      7, PaletteDefs+40
                        DW      92, 94, 102, 72, 90, 96

Colour13BlueInput       DW      9
                        DB      37, 46
                        DW      0, 63
                        DW      7, PaletteDefs+41
                        DW      93, 95, 102, 73, 91, 97

Colour14RedInput        DW      9
                        DB      64, 14
                        DW      0, 63
                        DW      7, PaletteDefs+42
                        DW      94, 96, 53, 74, 92, 98

Colour14GreenInput      DW      9
                        DB      64, 15
                        DW      0, 63
                        DW      7, PaletteDefs+43
                        DW      95, 97, 54, 75, 93, 99

Colour14BlueInput       DW      9
                        DB      64, 16
                        DW      0, 63
                        DW      7, PaletteDefs+44
                        DW      96, 98, 55, 76, 94, 100

Colour15RedInput        DW      9
                        DB      64, 19
                        DW      0, 63
                        DW      7, PaletteDefs+45
                        DW      97, 99, 56, 77, 95, 102

Colour15GreenInput      DW      9
                        DB      64, 20
                        DW      0, 63
                        DW      7, PaletteDefs+46
                        DW      98, 100, 57, 78, 96, 102

Colour15BlueInput       DW      9
                        DB      64, 21
                        DW      0, 63
                        DW      7, PaletteDefs+47
                        DW      99, 102, 58, 79, 97, 102

PredefinedPaletteMsg    DW      1
                        DB      57, 25
                        DB      20h
                        DB      "Predefined Palettes", 0

PredefinedPalette1      DW      2
                        DW      100, 103, 82, 61
                        DW      0
                        DW      0, 0
                        DW      4                       ; Jump to function
                        DD      DWord Ptr S_UsePresetPalette
                        DW      0                       ; First palette
                        DW      0, 0                    ; Unused data
                        DB      55, 27, 77, 29
                        DB      8
                        DB      0
                        DB      "  Light Blue", 0

PredefinedPalette2      DW      2
                        DW      102, 104, 85, 64
                        DW      0
                        DW      0, 0
                        DW      4                       ; Jump to function
                        DD      DWord Ptr S_UsePresetPalette
                        DW      1                       ; First palette
                        DW      0, 0                    ; Unused data
                        DB      55, 30, 77, 32
                        DB      8
                        DB      0
                        DB      "  Gold", 0

PredefinedPalette3      DW      2
                        DW      103, 105, 86, 65
                        DW      0
                        DW      0, 0
                        DW      4                       ; Jump to function
                        DD      DWord Ptr S_UsePresetPalette
                        DW      2                       ; First palette
                        DW      0, 0                    ; Unused data
                        DB      55, 33, 77, 35
                        DB      8
                        DB      0
                        DB      "  Camouflage", 0

PredefinedPalette4      DW      2
                        DW      104, 106, 88, 67
                        DW      0
                        DW      0, 0
                        DW      4                       ; Jump to function
                        DD      DWord Ptr S_UsePresetPalette
                        DW      3
                        DW      0, 0                    ; Unused data
                        DB      55, 36, 77, 38
                        DB      8
                        DB      0
                        DB      "  Midnight Tracking", 0

PredefinedPalette5      DW      2
                        DW      105, 107, 90, 69
                        DW      0
                        DW      0, 0
                        DW      4                       ; Jump to function
                        DD      DWord Ptr S_UsePresetPalette
                        DW      4
                        DW      0, 0                    ; Unused data
                        DB      55, 39, 77, 41
                        DB      8
                        DB      0
                        DB      "  Pine Colours", 0

PredefinedPalette6      DW      2
                        DW      106, 108, 91, 70
                        DW      0
                        DW      0, 0
                        DW      4                       ; Jump to function
                        DD      DWord Ptr S_UsePresetPalette
                        DW      5
                        DW      0, 0                    ; Unused data
                        DB      55, 42, 77, 44
                        DB      8
                        DB      0
                        DB      "  Soundtracker", 0

PredefinedPalette7      DW      2
                        DW      107, 0FFFFh, 94, 73
                        DW      0
                        DW      0, 0
                        DW      4                       ; Jump to function
                        DD      DWord Ptr S_UsePresetPalette
                        DW      6
                        DW      0, 0                    ; Unused data
                        DB      55, 45, 77, 47
                        DB      8
                        DB      0
                        DB      "  Volcanic", 0

O1_LoadInstrumentList   DW      5
                        DW      InstrumentNameLoader   ; Idlekey
                        DW      LoadInstrumentKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      LoadInstrumentHeader   ; 2
                        DW      FillHeader             ; 3
                        DW      LoadInstrumentWindow
                        DW      LoadInstrument         ; 5
                        DW      LoadInstrumentDriveWindow
                        DW      LoadInstrumentDrive
                        DW      SetHelpContext11
                        DW      0

LoadInstrumentDriveWindow DW    0
                        DB      63, 15, 72, 48
                        DB      27

LoadInstrumentDrive     DW      15
                        DD      DWord Ptr D_LIDrawDriveWindow
                        DD      DWord Ptr D_LIPreDriveWindow
                        DD      DWord Ptr D_LIPostDriveWindow

O1_ViewInstrumentLibrary DW     5
                        DW      InstrumentNameLoader   ; Idlekey
                        DW      LoadInstrumentKeyList
                        DW      FullScreenBox ; 0
                        DW      ScreenHeader  ; 1
                        DW      InstrumentLibraryHeader   ; 2
                        DW      FillHeader             ; 3
                        DW      LoadInstrumentWindow
                        DW      ViewInstrument         ; 5
                        DW      LoadInstrumentDriveWindow
                        DW      LoadInstrumentDrive
                        DW      SetHelpContext11
                        DW      0

LoadInstrumentHeader    DW      10
                        DB      "Load Instrument", 0

InstrumentLibraryHeader DW      10
                        DB      "Instrument Library (Ctrl-F4)", 0

LoadInstrumentWindow    DW      0
                        DB      5, 12, 62, 48
                        DB      27

LoadInstrument          DW      15
                        DD      DWord Ptr D_DrawLoadInstrument
                        DD      DWord Ptr D_PreLoadInstrument
                        DD      DWord Ptr D_PostLoadInstrument

ViewInstrument          DW      15
                        DD      DWord Ptr D_DrawLoadInstrument
                        DD      DWord Ptr D_PreLoadInstrument
                        DD      DWord Ptr D_ViewInstrument

InstrumentNameLoader    DD      DWord Ptr D_LoadInstrumentNames
                        DD      DWord Ptr IdleUpdateInfoLine
                        DD      0

O1_UndoList             DW      3
                        DW      IdleFunctionList
                        DW      ESCExitList
                        DW      UndoBox1
                        DW      UndoBox2
                        DW      UndoText
                        DW      UndoSelector
                        DW      0

UndoBox1                DW      0
                        DB      16, 21, 63, 36
                        DB      3 

UndoBox2                DW      0
                        DB      19, 23, 60, 34
                        DB      27

UndoText                DW      1
                        DB      38, 22
                        DB      23h
                        DB      "Undo", 0

UndoSelector            DW      15
                        DD      DWord Ptr PEFunction_DrawUndo
                        DD      DWord Ptr PEFunction_PreUndo
                        DD      DWord Ptr PEFunction_PostUndo

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

O1_MessageList          DW      4
                        DW      IdleFunctionList
                        DW      GlobalKeyList
                        DW      FullScreenBox
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      MessageBox
                        DW      MessageObject
                        DW      MessageHeader
                        DW      SetHelpContext12
                        DW      0

MessageBox              DW      0
                        DB      1, 12, 78, 48
                        DB      27

MessageObject           DW      15
                        DD      DWord Ptr Msg_DrawMessage
                        DD      DWord Ptr Msg_PreMessage
                        DD      DWord Ptr Msg_PostMessage

MessageHeader           DW      10
                        DB      "Message Editor (Shift-F9)", 0

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

O1_MIDIOutputScreen     DW      9
                        DW      IdleFunctionList
                        DW      MIDIOutKeyList
                        DW      FullScreenBox          ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      MIDIOutputHeader
                        DW      MIDIOutputMainConfigText
                        DW      MIDIOutputSFxConfigText
                        DW      MIDIOutputMainConfigBox
                        DW      MIDIOutputSFxConfigBox
                        DW      MIDIOutputZxxConfigBox ; 8
                        DW      MIDIStartInput         ; 9
                        DW      MIDIStopInput          ; 10
                        DW      MIDITickInput          ; 11
                        DW      MIDINoteOnInput        ; 12
                        DW      MIDINoteOffInput       ; 13
                        DW      MIDIChangeVolumeInput  ; 14
                        DW      MIDIChangePanInput     ; 15
                        DW      MIDIBankSelectInput    ; 16
                        DW      MIDIProgramChangeInput ; 17
                        DW      MIDISF0Input
                        DW      MIDISF1Input
                        DW      MIDISF2Input
                        DW      MIDISF3Input
                        DW      MIDISF4Input
                        DW      MIDISF5Input
                        DW      MIDISF6Input
                        DW      MIDISF7Input
                        DW      MIDISF8Input
                        DW      MIDISF9Input
                        DW      MIDISFAInput
                        DW      MIDISFBInput
                        DW      MIDISFCInput
                        DW      MIDISFDInput
                        DW      MIDISFEInput
                        DW      MIDISFFInput           ; 33
                        DW      MIDIZ1Input
                        DW      MIDIZ2Input
                        DW      MIDIZ3Input
                        DW      MIDIZ4Input
                        DW      MIDIZ5Input
                        DW      MIDIZ6Input
                        DW      MIDIZ7Input
                        DW      MIDIZxxNumbering
                        DW      0

MIDIOutputHeader        DW      10
                        DB      "MIDI Output Configuration", 0

MIDIZxxNumbering        DW      8
                        DD      DWord Ptr F_ShowMIDIZxxInput

MIDIOutKeyList          DB      0
                        DW      1C8h
                        DD      DWord Ptr F_MIDI_Up

                        DB      0
                        DW      1D0h
                        DD      DWord Ptr F_MIDI_Down

                        DB      0
                        DW      1C9h
                        DD      DWord Ptr F_MIDI_PgUp

                        DB      0
                        DW      1D1h
                        DD      DWord Ptr F_MIDI_PgDn

                        DB      5
                        DW      GlobalKeyChain

MIDIOutputMainConfigText DW     1
                        DB      2, 13
                        DB      20h
                        DB      0FFh, 4, " MIDI Start", 13
                        DB      0FFh, 5, " MIDI Stop", 13
                        DB      0FFh, 5, " MIDI Tick", 13
                        DB      0FFh, 7, " Note On", 13
                        DB      0FFh, 6, " Note Off", 13
                        DB      " Change Volume", 13
                        DB      0FFh, 4, " Change Pan", 13
                        DB      "   Bank Select", 13
                        DB      "Program Change", 13
                        DB      13
                        DB      13
                        DB      "   Macro", 13
                        DB      "   Setup", 0

MIDIOutputSFxConfigText DW      1
                        DB      13, 24
                        DB      20h
                        DB      "SF0", 13
                        DB      "SF1", 13
                        DB      "SF2", 13
                        DB      "SF3", 13
                        DB      "SF4", 13
                        DB      "SF5", 13
                        DB      "SF6", 13
                        DB      "SF7", 13
                        DB      "SF8", 13
                        DB      "SF9", 13
                        DB      "SFA", 13
                        DB      "SFB", 13
                        DB      "SFC", 13
                        DB      "SFD", 13
                        DB      "SFE", 13
                        DB      "SFF", 0

MIDIOutputMainConfigBox DW      0
                        DB      16, 12, 60, 22
                        DB      27

MIDIOutputSFxConfigBox  DW      0
                        DB      16, 23, 60, 40
                        DB      27

MIDIOutputZxxConfigBox  DW      0
                        DB      16, 41, 60, 49
                        DB      27


MIDIStartInput          DW      16
                        DB      17, 13
                        DW      7, 0
                        DW      32
                        DD      0
                        DW      9, 10, 0FFFFh, 0FFFFh

MIDIStopInput           DW      16
                        DB      17, 14
                        DW      7, 20h
                        DW      32
                        DD      0
                        DW      9, 11, 0FFFFh, 0FFFFh

MIDITickInput           DW      16
                        DB      17, 15
                        DW      7, 40h
                        DW      32
                        DD      0
                        DW      10, 12, 0FFFFh, 0FFFFh

MIDINoteOnInput         DW      16
                        DB      17, 16
                        DW      7, 60h
                        DW      32
                        DD      0
                        DW      11, 13, 0FFFFh, 0FFFFh

MIDINoteOffInput        DW      16
                        DB      17, 17
                        DW      7, 80h
                        DW      32
                        DD      0
                        DW      12, 14, 0FFFFh, 0FFFFh

MIDIChangeVolumeInput   DW      16
                        DB      17, 18
                        DW      7, 0A0h
                        DW      32
                        DD      0
                        DW      13, 15, 0FFFFh, 0FFFFh

MIDIChangePanInput      DW      16
                        DB      17, 19
                        DW      7, 0C0h
                        DW      32
                        DD      0
                        DW      14, 16, 0FFFFh, 0FFFFh

MIDIBankSelectInput     DW      16
                        DB      17, 20
                        DW      7, 0E0h
                        DW      32
                        DD      0
                        DW      15, 17, 0FFFFh, 0FFFFh

MIDIProgramChangeInput  DW      16
                        DB      17, 21
                        DW      7, 100h
                        DW      32
                        DD      0
                        DW      16, 18, 0FFFFh, 0FFFFh

MIDISF0Input            DW      16
                        DB      17, 24
                        DW      7, 120h
                        DW      32
                        DD      0
                        DW      17, 19, 0FFFFh, 0FFFFh

MIDISF1Input            DW      16
                        DB      17, 25
                        DW      7, 140h
                        DW      32
                        DD      0
                        DW      18, 20, 0FFFFh, 0FFFFh

MIDISF2Input            DW      16
                        DB      17, 26
                        DW      7, 160h
                        DW      32
                        DD      0
                        DW      19, 21, 0FFFFh, 0FFFFh

MIDISF3Input            DW      16
                        DB      17, 27
                        DW      7, 180h
                        DW      32
                        DD      0
                        DW      20, 22, 0FFFFh, 0FFFFh

MIDISF4Input            DW      16
                        DB      17, 28
                        DW      7, 1A0h
                        DW      32
                        DD      0
                        DW      21, 23, 0FFFFh, 0FFFFh

MIDISF5Input            DW      16
                        DB      17, 29
                        DW      7, 1C0h
                        DW      32
                        DD      0
                        DW      22, 24, 0FFFFh, 0FFFFh

MIDISF6Input            DW      16
                        DB      17, 30
                        DW      7, 1E0h
                        DW      32
                        DD      0
                        DW      23, 25, 0FFFFh, 0FFFFh

MIDISF7Input            DW      16
                        DB      17, 31
                        DW      7, 200h
                        DW      32
                        DD      0
                        DW      24, 26, 0FFFFh, 0FFFFh

MIDISF8Input            DW      16
                        DB      17, 32
                        DW      7, 220h
                        DW      32
                        DD      0
                        DW      25, 27, 0FFFFh, 0FFFFh

MIDISF9Input            DW      16
                        DB      17, 33
                        DW      7, 240h
                        DW      32
                        DD      0
                        DW      26, 28, 0FFFFh, 0FFFFh

MIDISFAInput            DW      16
                        DB      17, 34
                        DW      7, 260h
                        DW      32
                        DD      0
                        DW      27, 29, 0FFFFh, 0FFFFh

MIDISFBInput            DW      16
                        DB      17, 35
                        DW      7, 280h
                        DW      32
                        DD      0
                        DW      28, 30, 0FFFFh, 0FFFFh

MIDISFCInput            DW      16
                        DB      17, 36
                        DW      7, 2A0h
                        DW      32
                        DD      0
                        DW      29, 31, 0FFFFh, 0FFFFh

MIDISFDInput            DW      16
                        DB      17, 37
                        DW      7, 2C0h
                        DW      32
                        DD      0
                        DW      30, 32, 0FFFFh, 0FFFFh

MIDISFEInput            DW      16
                        DB      17, 38
                        DW      7, 2E0h
                        DW      32
                        DD      0
                        DW      31, 33, 0FFFFh, 0FFFFh

MIDISFFInput            DW      16
                        DB      17, 39
                        DW      7, 300h
                        DW      32
                        DD      0
                        DW      32, 34, 0FFFFh, 0FFFFh

MIDIZ1Input             DW      16
                        DB      17, 42
                        DW      7, 8320h
                        DW      32
                        DD      0
                        DW      0FFFFh, 35, 0FFFFh, 0FFFFh

MIDIZ2Input             DW      16
                        DB      17, 43
                        DW      7, 8340h
                        DW      32
                        DD      0
                        DW      34, 36, 0FFFFh, 0FFFFh

MIDIZ3Input             DW      16
                        DB      17, 44
                        DW      7, 8360h
                        DW      32
                        DD      0
                        DW      35, 37, 0FFFFh, 0FFFFh

MIDIZ4Input             DW      16
                        DB      17, 45
                        DW      7, 8380h
                        DW      32
                        DD      0
                        DW      36, 38, 0FFFFh, 0FFFFh

MIDIZ5Input             DW      16
                        DB      17, 46
                        DW      7, 83A0h
                        DW      32
                        DD      0
                        DW      37, 39, 0FFFFh, 0FFFFh

MIDIZ6Input             DW      16
                        DB      17, 47
                        DW      7, 83C0h
                        DW      32
                        DD      0
                        DW      38, 40, 0FFFFh, 0FFFFh

MIDIZ7Input             DW      16
                        DB      17, 48
                        DW      7, 83E0h
                        DW      32
                        DD      0
                        DW      39, 0FFFFh, 0FFFFh, 0FFFFh

O1_MIDIScreen           DW      7
                        DW      MIDIIdleList
                        DW      GlobalKeyList
                        DW      FullScreenBox          ; 0
                        DW      ScreenHeader
                        DW      FillHeader
                        DW      MIDIHeader
                        DW      ShowMIDIInput
                        DW      MIDIOptionsBox         ; 5
                        DW      MIDIOptions            ; 6
                        DW      ProgramChangeToggle    ; 7
                        DW      Program1Toggle         ; 8
                        DW      RecordNoteOffToggle    ; 9
                        DW      RecordVelocityToggle   ; 10
                        DW      RecordAfterTouchToggle ; 11
                        DW      MIDITranslateBox       ; 12
                        DW      MIDIAmplificationTB    ; 13
                        DW      MIDICentralNoteTB      ; 14
                        DW      MIDIOutputButton       ; 15
                        DW      MIDISaveConfigButton   ; 16
                        DW      MIDINoteOffCut         ; 17
                        DW      MIDIPitchBox           ; 18
                        DW      MIDIPitchToggle        ; 19
                        DW      MIDIPWDInput           ; 20
                        DW      MIDIEmbedBox
                        DW      MIDIEmbedToggle
                        DW      SetHelpContext13
                        DW      0

MIDIHeader              DW      10
                        DB      "MIDI Screen (Shift-F1)", 0

MIDIPitchToggle         DW      17
                        DB      25, 27
                        DW      2
                        DW      2Ch             ; of 'Flags'
                        DB      64
                        DW      14, 20, 0FFFFh, 0FFFFh

MIDIEmbedToggle         DW      17
                        DB      25, 31
                        DW      2
                        DW      2Ch             ; of 'Flags'
                        DB      128
                        DW      20, 15, 0FFFFh, 0FFFFh

MIDIPWDInput            DW      14
                        DB      25, 28
                        DW      0, 32
                        DW      3, 35h
                        DW      19, 22, 0FFFFh, 0FFFFh
                        DW      0FFFFh, 0FFFFh          ; PgUp/PgDn
                        DW      25

MIDIOutputButton        DW      2
                        DW      22, 16, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      1
                        DD      DWord Ptr O1_MIDIOutputScreen
                        DW      0, 0, 0
                        DB      2, 34, 32, 36
                        DB      8
                        DB      0
                        DB      "  MIDI Output Configuration", 0

MIDISaveConfigButton    DW      2
                        DW      15, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      0
                        DW      0, 0
                        DW      2
                        DD      DWord Ptr Music_SaveMIDIConfig
                        DW      0, 0, 0
                        DB      2, 37, 32, 39
                        DB      8
                        DB      0
                        DB      "  Save Output Configuration", 0

ShowMIDIInput           DW      8
MIDIIdleList            DD      DWord Ptr K_ShowMIDIInput
                        DD      DWord Ptr IdleUpdateInfoLine
                        DD      0

MIDIOptionsBox          DW      0
                        DB      24, 14, 30, 21
                        DB      27

MIDITranslateBox        DW      0
                        DB      24, 22, 51, 25
                        DB      27

MIDIPitchBox            DW      0
                        DB      24, 26, 51, 29
                        DB      27

MIDIEmbedBox            DW      0
                        DB      24, 30, 51, 32
                        DB      27

MIDIOptions             DW      1
                        DB      7, 15
                        DB      20h
                        DB      0FFh, 4, " Tick quantize", 13
                        DB      "   Base Program 1", 13
                        DB      "  Record Note-Off", 13
                        DB      "  Record Velocity", 13
                        DB      "Record Aftertouch", 13
                        DB      0FFh, 5, " Cut note off", 13
                        DB      13
                        DB      13
                        DB      0FFh, 4, " Amplification", 13
                        DB      "   C-5 Note-value", 13
                        DB      13
                        DB      13
                        DB      "Output MIDI pitch", 13
                        DB      "Pitch wheel depth", 13
                        DB      13
                        DB      13
                        DB      "  Embed MIDI data", 0

ProgramChangeToggle     DW      17
                        DB      25, 15
                        DW      1, CentraliseCursor
                        DB      8
                        DW      0FFFFh, 8, 0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

Program1Toggle          DW      17
                        DB      25, 16
                        DW      1, CentraliseCursor
                        DB      16
                        DW      7, 9, 0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

RecordNoteOffToggle     DW      17
                        DB      25, 17
                        DW      1, CentraliseCursor
                        DB      32
                        DW      8, 10, 0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

RecordVelocityToggle    DW      17
                        DB      25, 18
                        DW      1, CentraliseCursor
                        DB      64
                        DW      9, 11, 0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

RecordAfterTouchToggle  DW      17
                        DB      25, 19
                        DW      1, CentraliseCursor
                        DB      128
                        DW      10, 17, 0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

MIDINoteOffCut          DW      17
                        DB      25, 20
                        DW      1, Flags
                        DB      2
                        DW      11, 13, 0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

MIDIAmplificationTB     DW      9
                        DB      25, 23
                        DW      0, 200
                        DW      1, MIDIAmplification
                        DW      17, 14, 0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

MIDICentralNoteTB       DW      14
                        DB      25, 24
                        DW      0, 127
                        DW      1, MIDICentralNote
                        DW      13, 19, 0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh
                        DW      25

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

%IF  TIMERSCREEN

O1_TimerList            DW      5
                        DW      InfoPageIdleList
                        DW      GlobalKeyList
                        DW      FullScreenBox  ; 0
                        DW      ScreenHeader   ; 1
                        DW      FillHeader     ; 2
                        DW      TimerHeader
                        DW      TimerText      ; 4
                        DW      DrawTimer
                        DW      Divider
                        DW      SetHelpContext0
                        DW      0

TimerHeader             DW      10
                        DB      "Time Information", 0

TimerText               DW      1
                        DB      2, 13
                        DB      20h
                        DB      0FFh, 4, " Module time:", 13
                        DB      "Current session:", 13
                        DB      13
                        DB      0FFh, 5, " Total time:", 0

DrawTimer               DW      15
                        DD      DWord Ptr D_DrawTimer
                        DD      DWord Ptr F_Nothing
                        DD      DWord Ptr D_PostTimerList

Divider                 DW      1
                        DB      1, 18
                        DB      20h
                        DB      0FFh, 78, 09Ah, 0

%ENDIF 

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

O1_StereoSampleList     DW      2
                        DW      IdleFunctionList
                        DW      LRKeyList
                        DW      StereoSampleBox        ; 0
                        DW      StereoSampleText
                        DW      StereoButtonLeft       ; 2
                        DW      StereoButtonRight      ; 3
                        DW      0

LRKeyList               DB      8
                        DW      'L'
                        DD      DWord Ptr F_Return64

                        DB      8
                        DW      'R'
                        DD      DWord Ptr F_Return192

                        DB      0FFh

StereoSampleBox         DW      0
                        DB      26, 22, 54, 29
                        DB      3

StereoSampleText        DW      1
                        DB      30, 24
                        DB      20h
                        DB      "Loading Stereo Sample", 0

StereoButtonLeft        DW      2
                        DW      0FFFFh, 0FFFFh, 3, 3
                        DW      0
                        DW      0, 0    ; Unused
                        DW      0      ; Return
                        DW      64
                        DW      0, 0, 0, 0 ; Unused
                        DB      30, 26, 39, 28
                        DB      8
                        DB      0
                        DB      "  Left", 0

StereoButtonRight       DW      2
                        DW      0FFFFh, 0FFFFh, 2, 2
                        DW      0
                        DW      0, 0    ; Unused
                        DW      0       ; Return
                        DW      64+128
                        DW      0, 0, 0, 0 ; Unused
                        DB      40, 26, 50, 28
                        DB      8
                        DB      0
                        DB      "  Right", 0

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

O1_ShowTime             DW      2
                        DW      0
                        DW      ESCReturnList
                        DW      NBMBox
                        DW      ShowTime
                        DW      OKButton
                        DW      SongLengthText
                        DW      0

SongLengthText          DW      1
                        DB      27, 27
                        DB      20h
                        DB      "Total song time: ", 0

ShowTime                DW      8
                        DD      Music_ShowTime

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

%IF  SPECTRUMANALYSER
O1_FourierDisplay       DW      0
;                        DW      FourierIdleList
                        DW      InfoPageIdleList
                        DW      FourierKeyList
                        DW      FourierDisplay
                        DW      0

;FourierIdleList         DD      DWord Ptr Fourier_IdleList
;                        DD      0

FourierKeyList          DB      1
                        DW      '-'
                        DD      DWord Ptr DisplayMinus

                        DB      1
                        DW      '+'
                        DD      DWord Ptr DisplayPlus

                        DB      0
                        DW      13Fh
                        DD      DWord Ptr Glbl_Ctrl_F5

                        DB      1
                        DW      'p'
                        DD      DWord Ptr Fourier_ChangePalette

                        DB      5
                        DW      PlayCommandChain

FourierDisplay  DW      15
                DD      DWord Ptr Fourier_PreDrawScreen
                DD      DWord Ptr Fourier_DrawScreen
                DD      DWord Ptr Fourier_PostFunction

%ENDIF 

;陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�

EndS
