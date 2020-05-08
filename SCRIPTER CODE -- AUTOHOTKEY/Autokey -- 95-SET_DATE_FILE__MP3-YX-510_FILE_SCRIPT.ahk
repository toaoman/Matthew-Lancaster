;  =============================================================
;# __ C:\SCRIPTER\SCRIPTER CODE -- AUTOHOTKEY\Autokey -- 94-ALL_LOWER_THAN_NORMAL_PROCCES_PRIORITY_RESTORE.ahk
;# __ 
;# __ Autokey -- 94-ALL LOWER THAN NORMAL PROCCES PRIORITY RESTORE.ahk
;# __ 
;# BY __ Matt.Lan@Btinternet.com
;# __ 
;# Sun 26-Apr-2020 19:17:03
;# Sun 26-Apr-2020 23:58:00 -- 4 HOUR 40 MINUTE
;# __ 
;  =============================================================

; -------------------------------------------------------------------
; WORK TIME
; -------------------------------------------------------------------
; SESSION 2 DAY 1
; Sun 26-Apr-2020 11:22:41
; Sun 26-Apr-2020 11:05:46 -- 12 HOUR 56 MINUTE
; -------------------------------------------------------------------
; SESSION 2 DAY 1
; Sun 26-Apr-2020 19:17:03
; Sun 26-Apr-2020 23:58:00 -- 4 HOUR 40 MINUTE
; -------------------------------------------------------------------
; -------------------------------------------------------------------
; TO CREATE EFFORT FOR NEW MP3 UNIT
; -------------------------------------------------------------------
; 
; -------------------------------------------------------------------

; -------------------------------------------------------------------
; SESSION 001
; -------------------------------------------------------------------
; -------------------------------------------------------------------
; -------------------------------------------------------------------

; ------------------------------------------------------------------
; Location SOURCE
;---------------------------------------------------------------------
; ---------------------
; Matthew-Lancaster/Autokey -- 94-ALL_LOWER_THAN_NORMAL_PROCCES_PRIORITY_RESTORE.ahk
; ---------------------
; https://github.com/Matthew-Lancaster/Matthew-Lancaster/blob/master/SCRIPTER%20CODE%20--%20AUTOHOTKEY/Autokey%20--%2094-ALL_LOW_PROCCES_PRIORITY_TO_NORMAL.ahk 
; ---------------------
; HTTPS://TINYURL.COM/SRZ69YL
; ---------------------

; -------------------------------------------------------------------
; -------------------------------------------------------------------
; CREDIT TO 
; -------------------------------------------------------------------
; -------------------------------------------------------------------

; -------------------------------------------------------------------
; -------------------------------------------------------------------
; CREDIT TO **** AUTOHOTKEYS **** HELP PAGE -- SEARCH WORD -- Process
; -------------------------------------------------------------------
; -------------------------------------------------------------------

; -------------------------------------------------------------------
; -------------------------------------------------------------------
; MAIN CREDIT MY OPERATION
; A MASSIVE EFFORT HARD WORK FIND READY MADE LEARN SCRIPT 
; LIKE HERE
; -------------------------------------------------------------------
; -------------------------------------------------------------------

#Warn
#NoEnv
#SingleInstance Force


RENAME_EXTENSION_SET_GO_EVERY_TIME=
O_LEN_STRING_HOLD_HWND=
RENAME_FILTER_EXTENSION_CASE_EXCLUDE=
RENAME_FILTER_EXTENSION_CASE_INCLUDE=
RENAME_EXTENSION_QUIET_WITH_AUDIO=
RENAME_EXTENSION_SET_DONE_QUIET=


GOSUB SUB_SET_DATE_UNIT
; GOSUB TIMER_RENAME_FILE_EXTENSION_CASE_UPPER_OR_LOWER


; IFEXIST, J:\M\01 SOUND EFFECT & TECHNO SAMPLES_REKETEKESS\BBC Micro.wav
; {
	; ; ---------------------------------------------------------------
	; ; How to prevent creation of "System Volume Information" folder in Windows 10 for USB flash drives? - Super User 
	; ; https://superuser.com/questions/1199823/how-to-prevent-creation-of-system-volume-information-folder-in-windows-10-for
	; ; ---------------------------------------------------------------
	; ; IDEA DELETE \SYSTEM VOLUME INFO FOLDER
	; ; AS PLAYER FIND FILE AN REPORT NOT RECOGNITION
	; ; USE IO-BIT-UNLOCKER
	; ; WHEN DELETE CREATE FILE REPLACE
	; ; ---------------------------------------------------------------
	
	; IF TRUE=FALSE
	; {
		; FileSetAttrib, -RHS, J:\System Volume Information\* ,1 ,1

		; FileDelete, J:\System Volume Information\WPSettings.dat
		; FileRemoveDir, J:\System Volume Information
		
			; Loop, J:\System Volume Information\*, ,1 
		; {
			; FileDelete, A_LoopFileFullPath
			; MSGBOX % A_LoopFileFullPath
		; }
		; FileRemoveDir, J:\System Volume Information,1
		; FileRecycle "J:\System Volume Information"
		; DirDelete "J:\System Volume Information", 1
	; }
; }

; IFEXIST, I:\M\01 SOUND EFFECT & TECHNO SAMPLES_REKETEKESS\BBC Micro.wav
; {
	; IF TRUE=FALSE
	; {
		; FileSetAttrib, -RHS, I:\System Volume Information\* ,1 ,1
		
		; ; ERROR: File ownership cannot be applied on insecure file systems;
		; ; there is no support for ACLs.
		; ; run, %comspec% /k takeown /r /f "I:\System Volume Information", , max
		
		; Loop, I:\System Volume Information\*, ,1 
		; {
			; FileDelete, A_LoopFileFullPath
			; MSGBOX % A_LoopFileFullPath
		; }
		; FileRemoveDir, I:\System Volume Information,1
		
	; }
	
	
; }
	
RETURN





SUB_SET_DATE_UNIT:

	WORK_DO_COUNT=0
	
	; ---------------------------------------------------------------
	; LET SWITCH WITH AH BEGIN
	; ---------------------------------------------------------------
	
	; "F:\MP3-YX-510_02_TS\M"
	; F:\MP3-YX-510_02_TS\M
	; F:\MP3-YX-510_02_TS_VIDEO\V2_4
	
	DT1=DateSerial(2000,1,1)+TIMESERIAL(1,0,0)

	SUBST_1_DATE:= SubStr(A_LoopReadLine, 1, 8)
	SUBST_1_DATE_Y:= 2000
	SUBST_1_DATE_M:= 01
	SUBST_1_DATE_D:= 01
	
	TS=% SUBST_1_DATE_Y . SUBST_1_DATE_M . SUBST_1_DATE_D . 01 . 00 . 00
	
	
	
	Loop, Files, F:\MP3-YX-510_02_TS\M\*.* , R
    {
		SplitPath, A_LoopFileFullPath, OutFILENAME, OutDir, OutExtension, OutNameNoExt, OutDrive
		FILENAME = %OutDir%\%OutFILENAME%

		IF INSTR(".MP3 .WAV .MP4",OutExtension)
		{
			FileSetTime, %TS% , %FILENAME% , M
			FileGetTime, TS_2, %FILENAME%, M
			TS+= 1, Days
			; IF Mod(A_INDEX, 1000)=0 
				; TOOLTIP % TS "`n" TS_2 "`n" FILENAME,100,100
		}
	}
	Loop, Files, F:\MP3-YX-510_02_TS\V\*.* , R
    {
		SplitPath, A_LoopFileFullPath, OutFILENAME, OutDir, OutExtension, OutNameNoExt, OutDrive
		FILENAME = F:\MP3-YX-510_02_TS_VIDEO\V2_4\%OutFILENAME%

		MSGBOX % OutFILENAME
		
		IF INSTR(.MP3 .WAV .MP4 .WMV .AVI,OutExtension)
		{
			MSGBOX % FILENAME
			FileSetTime, %TS% , %FILENAME% , M
			FileGetTime, TS_2, %FILENAME%, M
			TS+= 1, Days
			IF Mod(A_INDEX, 1000)=0 
				TOOLTIP % TS "`n" TS_2 "`n" FILENAME,100,100
		}
	}

	RETURN
	
	Loop,read,C:\SCRIPTER\SCRIPTER CODE -- VBS\VBS 68-FILE LOCATOR -- SCRIPT - MP3-YX-510_FILE_SCRIPT.TXT
	{
		
		SUBST_2_FILENAME:= SubStr(A_LoopReadLine, 13)

		; LOWER DATE NOT ABLE SET BELOW 1600 YEAR
		; HIGHER DATE NOT ABLE SET ABOVE 1600 YEAR

		SUBST_1_DATE:= SubStr(A_LoopReadLine, 1, 8)
		SUBST_1_DATE_Y:= SubStr(A_LoopReadLine, 1, 4)
		SUBST_1_DATE_M:= SubStr(A_LoopReadLine, 5,2)
		SUBST_1_DATE_D:= SubStr(A_LoopReadLine, 7,2)

		; SUBST_1_DATE:= StrReplace(SUBST_1_DATE,"/","")

		; FormatTime, TS, %SUBST_1_DATE%, YYYYMMDD
		; FormatTime, TimeString, 20050423220133, dddd MMMM d, yyyy hh:mm:ss tt
		
		; SUBST_1_DATE_Y+=-6000
		
 		TS=% SUBST_1_DATE_Y . SUBST_1_DATE_M . SUBST_1_DATE_D . 01 . 00 . 00
		; FormatTime, TS, TS, YYYYMMDD

		; IF Mod(A_INDEX, 10)=0 
			; TOOLTIP % SUBST_1_DATE "`n" TS "`n" SUBST_2_FILENAME,100,100
		WORK_DO_COUNT+=1
		
		; IFEXIST, %SUBST_2_FILENAME%
		FileSetTime, %TS% , %SUBST_2_FILENAME% , M
		; -----------------------------------------------------------
		; HARD WORK UNABLE SET DATE ON MEDIA CARD
		; SO EXTRA COPY HARD-DRIVE
		; -----------------------------------------------------------
		
		; IFEXIST, %SUBST_2_FILENAME%
		FileGetTime, TS_2, %SUBST_2_FILENAME%, M

		IF Mod(A_INDEX, 1000)=0 
			TOOLTIP % SUBST_1_DATE "`n" TS "`n" TS_2 "`n" SUBST_2_FILENAME,100,100
		
	}

	IF WORK_DO_COUNT
		; MSGBOX, 4096,, % "CHANGE DATE COUNTER =`n" WORK_DO_COUNT
	
RETURN





TIMER_RENAME_FILE_EXTENSION_CASE_UPPER_OR_LOWER:

	WORK_DO_COUNT=0
	
	; ---------------------------------------------------------------
	; LET SWITCH WITH AH BEGIN
	; ---------------------------------------------------------------
	
	; "F:\MP3-YX-510_02_TS\M"
	
	Loop,read,C:\SCRIPTER\SCRIPTER CODE -- VBS\VBS 68-FILE LOCATOR -- SCRIPT - MP3-YX-510_FILE_SCRIPT.TXT
	{
		
		SUBST_2_FILENAME:= SubStr(A_LoopReadLine, 13)

		; LOWER DATE NOT ABLE SET BELOW 1600 YEAR
		; HIGHER DATE NOT ABLE SET ABOVE 1600 YEAR

		SUBST_1_DATE:= SubStr(A_LoopReadLine, 1, 8)
		SUBST_1_DATE_Y:= SubStr(A_LoopReadLine, 1, 4)
		SUBST_1_DATE_M:= SubStr(A_LoopReadLine, 5,2)
		SUBST_1_DATE_D:= SubStr(A_LoopReadLine, 7,2)

		; SUBST_1_DATE:= StrReplace(SUBST_1_DATE,"/","")

		; FormatTime, TS, %SUBST_1_DATE%, YYYYMMDD
		; FormatTime, TimeString, 20050423220133, dddd MMMM d, yyyy hh:mm:ss tt
		
		; SUBST_1_DATE_Y+=-6000
		
 		TS=% SUBST_1_DATE_Y . SUBST_1_DATE_M . SUBST_1_DATE_D . 01 . 00 . 00
		; FormatTime, TS, TS, YYYYMMDD

		; IF Mod(A_INDEX, 10)=0 
			; TOOLTIP % SUBST_1_DATE "`n" TS "`n" SUBST_2_FILENAME,100,100
		WORK_DO_COUNT+=1
		
		; IFEXIST, %SUBST_2_FILENAME%
		FileSetTime, %TS% , %SUBST_2_FILENAME% , M
		; -----------------------------------------------------------
		; HARD WORK UNABLE SET DATE ON MEDIA CARD
		; SO EXTRA COPY HARD-DRIVE
		; -----------------------------------------------------------
		
		; IFEXIST, %SUBST_2_FILENAME%
		FileGetTime, TS_2, %SUBST_2_FILENAME%, M

		IF Mod(A_INDEX, 1000)=0 
			TOOLTIP % SUBST_1_DATE "`n" TS "`n" TS_2 "`n" SUBST_2_FILENAME,100,100
		
	}

	IF WORK_DO_COUNT
		; MSGBOX, 4096,, % "CHANGE DATE COUNTER =`n" WORK_DO_COUNT
	
RETURN
