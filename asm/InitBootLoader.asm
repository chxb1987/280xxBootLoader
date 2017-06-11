;;###########################################################################
;;
;; FILE:    InitBootLoader.asm
;;
;; TITLE:   Boot Rom Initialization and Exit routines.
;;
;; Functions:
;;
;;     _InitBootLoader
;;     _ExitBoot
;;
;; Notes:
;;
;;###########################################################################
;; Shlomi Dar
;;###########################################################################

    .global _ExitBoot
    .global _InitBootLoader
    .def _InitBootLoader
    .ref _LoaderBoot



    .sect ".InitBoot"

;-----------------------------------------------
; _InitBootLoader
;-----------------------------------------------
;-----------------------------------------------
; This function performs the initial boot routine
; for the boot ROM.
;
; This module performs the following actions:
;
;     1) Initalizes the stack pointer
;     2) Sets the device for C28x operating mode
;     3) Calls the main boot functions
;     4) Calls an exit routine
;-----------------------------------------------


_InitBootLoader:

; Initalize the stack pointer.

__stack:    .usect ".stack",0
    MOV SP, #__stack ; Initalize the stack pointer

; Initalize the device for running in C28x mode.

    C28OBJ       ; Select C28x object mode
    C28ADDR      ; Select C27x/C28x addressing
    C28MAP       ; Set blocks M0/M1 for C28x mode
    CLRC PAGE0   ; Always use stack addressing mode
    MOVW DP,#0   ; Initialize DP to point to the low 64 K
    CLRC OVM

; Set PM shift of 0

    SPM 0

; Decide which boot mode to use
    LCR  _LoaderBoot

; Cleanup and exit.  At this point the EntryAddr
; is located in the ACC register
    BF  _ExitBoot,UNC


