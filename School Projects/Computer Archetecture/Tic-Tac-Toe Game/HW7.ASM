;=================================
;Author: Ndububeze Echefu
;=================================

format PE console
include 'win32ax.inc'

;=======================================
section '.code' code readable executable
;=======================================
start:
        cinvoke printf, "Welcome to x86 Assembly Tic-Tac-Toe!"
        cinvoke printf, "%cYou will be X's and the computer will be O's.", 10
        cinvoke printf, "%cThe board is laid out like this, with numbers representing each space: %c", 10, 10

        call printPurple
        cinvoke printf, "%c 1 | 2 | 3 %c", 10, 10
        cinvoke printf, "---|---|---"
        cinvoke printf, "%c 4 | 5 | 6 %c", 10, 10
        cinvoke printf, "---|---|---"
        cinvoke printf, "%c 7 | 8 | 9 %c", 10, 10

        call printDefault
        cinvoke printf, "%cPress any key to start", 10


        ;introduction music
        invoke Beep, 660, 300
        invoke Beep, 733, 300
        invoke Beep, 825, 300
        invoke Beep, 880, 500

        cinvoke time, 0         ;seed RNG
        cinvoke srand, EAX

        invoke getch
gameLoop:
        call printBoard
        call printDefault
        cinvoke printf, "%cYour move (1-9)? ", 10
        cinvoke scanf, "%d", Square
        call placeX
        call checkXWin
        call checkForDraw
        call computerMove
        call checkOWin
        jmp gameLoop

printBoard:
        call printCLS
        call printPurple
        cinvoke printf, "%c %1.1s | %1.1s | %1.1s %c", 10, S1, S2, S3, 10
        cinvoke printf, "---|---|---"
        cinvoke printf, "%c %1.1s | %1.1s | %1.1s %c", 10, S4, S5, S6, 10
        cinvoke printf, "---|---|---"
        cinvoke printf, "%c %1.1s | %1.1s | %1.1s %c", 10, S7, S8, S9, 10
        ret

;=============call placeX============================================
placeX:
;-----------ALGORITHM----------------------------
        call verifyRange
        call checkPlace
        call drawX
        ret
;------------------------------------------------

;------------------CONTENTS------------------------------------
verifyRange:            ;Is the user input in range?
      cmp [Square], 1
      jl  rangeError
      cmp [Square],9
      jg  rangeError
      ret

                rangeError:
                        call printRed
                        cinvoke printf, "%cOut of range. Try again.", 10
                        ;error jingle
                        invoke Beep, 880, 100
                        invoke Beep, 660, 100
                        invoke Beep, 880, 100

                        invoke Sleep, 2000
                        jmp gameLoop


checkPlace:             ;Is that particular spot open?
           cmp [Square], 1
           je checkS1
           cmp [Square], 2
           je checkS2
           cmp [Square], 3
           je checkS3
           cmp [Square], 4
           je checkS4
           cmp [Square], 5
           je checkS5
           cmp [Square], 6
           je checkS6
           cmp [Square], 7
           je checkS7
           cmp [Square], 8
           je checkS8
           cmp [Square], 9
           je checkS9

checkS1:
                         cmp [S1], 'X'
                         je placeError
                         cmp [S1], 'O'
                         je placeError
                         ret

checkS2:
                         cmp [S2], 'X'
                         je placeError
                         cmp [S2], 'O'
                         je placeError
                         ret

checkS3:
                         cmp [S3], 'X'
                         je placeError
                         cmp [S3], 'O'
                         je placeError
                         ret

checkS4:
                         cmp [S4], 'X'
                         je placeError
                         cmp [S4], 'O'
                         je placeError
                         ret

checkS5:
                         cmp [S5], 'X'
                         je placeError
                         cmp [S5], 'O'
                         je placeError
                         ret

checkS6:
                         cmp [S6], 'X'
                         je placeError
                         cmp [S6], 'O'
                         je placeError
                         ret

checkS7:
                         cmp [S7], 'X'
                         je placeError
                         cmp [S7], 'O'
                         je placeError
                         ret

checkS8:
                         cmp [S8], 'X'
                         je placeError
                         cmp [S8], 'O'
                         je placeError
                         ret

checkS9:
                         cmp [S9], 'X'
                         je placeError
                         cmp [S9], 'O'
                         je placeError
                         ret



placeError:
            call printRed
            cinvoke printf, "%cSpot already taken. Try again.", 10

            ;error jingle
            invoke Beep, 880, 100
            invoke Beep, 660, 100
            invoke Beep, 880, 100

            invoke Sleep, 2000
            jmp gameLoop

drawX:
            mov EAX, [Square]
            mov [S1+EAX-1], 'X'
            invoke Beep, 880, 500
            ret
;========================================================================


;=====================call checkXWin=======================================

checkXWin:
        checkTopRowX:
                cmp [S1], 'X'
                jne checkMiddleRowX
                cmp [S2], 'X'
                jne checkMiddleRowX
                cmp [S3], 'X'
                je playerWins
        checkMiddleRowX:
                cmp [S4], 'X'
                jne checkBottomRowX
                cmp [S5], 'X'
                jne checkBottomRowX
                cmp [S6], 'X'
                je playerWins
       checkBottomRowX:
                cmp [S7], 'X'
                jne checkColumn1X
                cmp [S8], 'X'
                jne checkColumn1X
                cmp [S9], 'X'
                je playerWins
        checkColumn1X:
                cmp [S1], 'X'
                jne checkColumn2X
                cmp [S4], 'X'
                jne checkColumn2X
                cmp [S7], 'X'
                je playerWins
        checkColumn2X:
                cmp [S2], 'X'
                jne checkColumn3X
                cmp [S5], 'X'
                jne checkColumn3X
                cmp [S8], 'X'
                je playerWins
        checkColumn3X:
                cmp [S3], 'X'
                jne checkDiag1X
                cmp [S6], 'X'
                jne checkDiag1X
                cmp [S9], 'X'
                je playerWins
        checkDiag1X:
                cmp [S1], 'X'
                jne checkDiag2X
                cmp [S5], 'X'
                jne checkDiag2X
                cmp [S9], 'X'
                je playerWins
        checkDiag2X:
                cmp [S3], 'X'
                jne returnLoop
                cmp [S5], 'X'
                jne returnLoop
                cmp [S7], 'X'
                je playerWins
                ret

computerMove:
        ;Check if computer can win
;=====================ROWS============================
;-------------------Top Row---------------------------
        computerWinsTopRowS1:  ; _ O O
                cmp [S1], ' '
                jne computerWinsTopRowS2
                cmp [S2], 'O'
                jne computerWinsTopRowS2
                cmp [S3], 'O'
                jne computerWinsTopRowS2
                mov [S1], 'O'
                jmp computerWins
        computerWinsTopRowS2:  ; O _ O
                cmp [S1], 'O'
                jne computerWinsTopRowS3
                cmp [S2], ' '
                jne computerWinsTopRowS3
                cmp [S3], 'O'
                jne computerWinsTopRowS3
                mov [S2], 'O'
                jmp computerWins
        computerWinsTopRowS3:  ; O O _
                cmp [S1], 'O'
                jne computerWinsMiddleRowS1
                cmp [S2], 'O'
                jne computerWinsMiddleRowS1
                cmp [S3], ' '
                jne computerWinsMiddleRowS1
                mov [S3], 'O'
                jmp computerWins
;-------------------------------------------------------

;----------------------Middle Row------------------------
        computerWinsMiddleRowS1:  ; _ O O
                cmp [S4], ' '
                jne computerWinsMiddleRowS2
                cmp [S5], 'O'
                jne computerWinsMiddleRowS2
                cmp [S6], 'O'
                jne computerWinsMiddleRowS2
                mov [S4], 'O'
                jmp computerWins
        computerWinsMiddleRowS2:  ; O _ O
                cmp [S4], 'O'
                jne computerWinsMiddleRowS3
                cmp [S5], ' '
                jne computerWinsMiddleRowS3
                cmp [S6], 'O'
                jne computerWinsMiddleRowS3
                mov [S5], 'O'
                jmp computerWins
        computerWinsMiddleRowS3:  ; O O _
                cmp [S4], 'O'
                jne computerWinsBottomRowS1
                cmp [S5], 'O'
                jne computerWinsBottomRowS1
                cmp [S6], ' '
                jne computerWinsBottomRowS1
                mov [S6], 'O'
                jmp computerWins
;--------------------------------------------------------

;----------------------Bottom Row------------------------
        computerWinsBottomRowS1:  ; _ O O
                cmp [S7], ' '
                jne computerWinsBottomRowS2
                cmp [S8], 'O'
                jne computerWinsBottomRowS2
                cmp [S9], 'O'
                jne computerWinsBottomRowS2
                mov [S7], 'O'
                jmp computerWins
        computerWinsBottomRowS2:  ; O _ O
                cmp [S7], 'O'
                jne computerWinsBottomRowS3
                cmp [S8], ' '
                jne computerWinsBottomRowS3
                cmp [S9], 'O'
                jne computerWinsBottomRowS3
                mov [S8], 'O'
                jmp computerWins
        computerWinsBottomRowS3:  ; O O _
                cmp [S7], 'O'
                jne computerWinsFirstColumnS1
                cmp [S8], 'O'
                jne computerWinsFirstColumnS1
                cmp [S9], ' '
                jne computerWinsFirstColumnS1
                mov [S9], 'O'
                jmp computerWins
;--------------------------------------------------------

;====================COLUMNS==============================
;---------------------Left Column-------------------------
        computerWinsFirstColumnS1:   ; _, S4, S7
                cmp [S1], ' '
                jne computerWinsFirstColumnS4
                cmp [S4], 'O'
                jne computerWinsFirstColumnS4
                cmp [S7], 'O'
                jne computerWinsFirstColumnS4
                mov [S1], 'O'
                jmp computerWins
        computerWinsFirstColumnS4:   ; S1, _, S7
                cmp [S1], 'O'
                jne computerWinsFirstColumnS7
                cmp [S4], ' '
                jne computerWinsFirstColumnS7
                cmp [S7], 'O'
                jne computerWinsFirstColumnS7
                mov [S4], 'O'
                jmp computerWins
        computerWinsFirstColumnS7:   ; S1, S4, _
                cmp [S1], 'O'
                jne computerWinsSecondColumnS2
                cmp [S4], 'O'
                jne computerWinsSecondColumnS2
                cmp [S7], ' '
                jne computerWinsSecondColumnS2
                mov [S7], 'O'
                jmp computerWins
;--------------------------------------------------------

;--------------------Middle Column------------------------
        computerWinsSecondColumnS2:   ; _, S5, S8
                cmp [S2], ' '
                jne computerWinsSecondColumnS5
                cmp [S5], 'O'
                jne computerWinsSecondColumnS5
                cmp [S8], 'O'
                jne computerWinsSecondColumnS5
                mov [S2], 'O'
                jmp computerWins
        computerWinsSecondColumnS5:   ; S2, _, S8
                cmp [S2], 'O'
                jne computerWinsSecondColumnS8
                cmp [S5], ' '
                jne computerWinsSecondColumnS8
                cmp [S8], 'O'
                jne computerWinsSecondColumnS8
                mov [S5], 'O'
                jmp computerWins
        computerWinsSecondColumnS8:   ; S2, S5, _
                cmp [S2], 'O'
                jne computerWinsThirdColumnS3
                cmp [S5], 'O'
                jne computerWinsThirdColumnS3
                cmp [S8], ' '
                jne computerWinsThirdColumnS3
                mov [S8], 'O'
                jmp computerWins
;--------------------------------------------------------

;--------------------Right Column-------------------------
        computerWinsThirdColumnS3:   ; _, S6, S9
                cmp [S3], ' '
                jne computerWinsThirdColumnS6
                cmp [S6], 'O'
                jne computerWinsThirdColumnS6
                cmp [S9], 'O'
                jne computerWinsThirdColumnS6
                mov [S3], 'O'
                jmp computerWins
        computerWinsThirdColumnS6:   ; S3, _, S9
                cmp [S3], 'O'
                jne computerWinsThirdColumnS9
                cmp [S6], ' '
                jne computerWinsThirdColumnS9
                cmp [S9], 'O'
                jne computerWinsThirdColumnS9
                mov [S6], 'O'
                jmp computerWins
        computerWinsThirdColumnS9:   ; S3, S6, _
                cmp [S3], 'O'
                jne computerWinsDiagonalOneS1
                cmp [S6], 'O'
                jne computerWinsDiagonalOneS1
                cmp [S9], ' '
                jne computerWinsDiagonalOneS1
                mov [S9], 'O'
                jmp computerWins
;--------------------------------------------------------

;====================DIAGONALS==============================
;----------------Top-Left to Bottom-Right-------------------
        computerWinsDiagonalOneS1:   ; _, S5, S9
                cmp [S1], ' '
                jne computerWinsDiagonalOneS5
                cmp [S5], 'O'
                jne computerWinsDiagonalOneS5
                cmp [S9], 'O'
                jne computerWinsDiagonalOneS5
                mov [S1], 'O'
                jmp computerWins
        computerWinsDiagonalOneS5:   ; S1, _, S9
                cmp [S1], 'O'
                jne computerWinsDiagonalOneS9
                cmp [S5], ' '
                jne computerWinsDiagonalOneS9
                cmp [S9], 'O'
                jne computerWinsDiagonalOneS9
                mov [S5], 'O'
                jmp computerWins
        computerWinsDiagonalOneS9:   ; S1, S5, _
                cmp [S1], 'O'
                jne computerWinsDiagonalTwoS3
                cmp [S5], 'O'
                jne computerWinsDiagonalTwoS3
                cmp [S9], ' '
                jne computerWinsDiagonalTwoS3
                mov [S9], 'O'
                jmp computerWins
;--------------------------------------------------------

;----------------Top-Right to Bottom-Left-------------------
        computerWinsDiagonalTwoS3:   ; _, S5, S7
                cmp [S3], ' '
                jne computerWinsDiagonalTwoS5
                cmp [S5], 'O'
                jne computerWinsDiagonalTwoS5
                cmp [S7], 'O'
                jne computerWinsDiagonalTwoS5
                mov [S3], 'O'
                jmp computerWins
        computerWinsDiagonalTwoS5:   ; S3, _, S7
                cmp [S3], 'O'
                jne computerWinsDiagonalTwoS7
                cmp [S5], ' '
                jne computerWinsDiagonalTwoS7
                cmp [S7], 'O'
                jne computerWinsDiagonalTwoS7
                mov [S5], 'O'
                jmp computerWins
        computerWinsDiagonalTwoS7:   ; S3, S5, _
                cmp [S3], 'O'
                jne computerBlocksS1Row
                cmp [S5], 'O'
                jne computerBlocksS1Row
                cmp [S7], ' '
                jne computerBlocksS1Row
                mov [S7], 'O'
                jmp computerWins
;--------------------------------------------------------


        ;check if computer needs to block (OPTIONAL)
;------------Block Rows-------------------------------
        ;------------Block Top Row------------------
        computerBlocksS1Row:     ; _ X X
             cmp [S1], ' '
             jne computerBlocksS2Row
             cmp [S2], 'X'
             jne computerBlocksS2Row
             cmp [S3], 'X'
             jne computerBlocksS2Row
             mov [S1], 'O'
             ret
        computerBlocksS2Row:     ; X _ X
             cmp [S1], 'X'
             jne computerBlocksS3Row
             cmp [S2], ' '
             jne computerBlocksS3Row
             cmp [S3], 'X'
             jne computerBlocksS3Row
             mov [S2], 'O'
             ret
        computerBlocksS3Row:     ; X X _
             cmp [S1], 'X'
             jne computerBlocksMiddleRowS4
             cmp [S2], 'X'
             jne computerBlocksMiddleRowS4
             cmp [S3], ' '
             jne computerBlocksMiddleRowS4
             mov [S3], 'O'
             ret
        ;-------------------------------------------

        ;------------Block Middle Row----------------------
        computerBlocksMiddleRowS4:     ; _ X X
             cmp [S4], ' '
             jne computerBlocksMiddleRowS5
             cmp [S5], 'X'
             jne computerBlocksMiddleRowS5
             cmp [S6], 'X'
             jne computerBlocksMiddleRowS5
             mov [S4], 'O'
             ret
        computerBlocksMiddleRowS5:     ; X _ X
             cmp [S4], 'X'
             jne computerBlocksMiddleRowS6
             cmp [S5], ' '
             jne computerBlocksMiddleRowS6
             cmp [S6], 'X'
             jne computerBlocksMiddleRowS6
             mov [S5], 'O'
             ret
        computerBlocksMiddleRowS6:     ; X X _
             cmp [S4], 'X'
             jne computerBlocksBottomRowS7
             cmp [S5], 'X'
             jne computerBlocksBottomRowS7
             cmp [S6], ' '
             jne computerBlocksBottomRowS7
             mov [S6], 'O'
             ret
        ;-------------------------------------------

        ;------------Block Bottom Row----------------------
        computerBlocksBottomRowS7:     ; _ X X
             cmp [S7], ' '
             jne computerBlocksBottomRowS8
             cmp [S8], 'X'
             jne computerBlocksBottomRowS8
             cmp [S9], 'X'
             jne computerBlocksBottomRowS8
             mov [S7], 'O'
             ret
        computerBlocksBottomRowS8:     ; X _ X
             cmp [S7], 'X'
             jne computerBlocksBottomRowS9
             cmp [S8], ' '
             jne computerBlocksBottomRowS9
             cmp [S9], 'X'
             jne computerBlocksBottomRowS9
             mov [S8], 'O'
             ret
        computerBlocksBottomRowS9:     ; X X _
             cmp [S7], 'X'
             jne computerBlocksFirstColumnS1
             cmp [S8], 'X'
             jne computerBlocksFirstColumnS1
             cmp [S9], ' '
             jne computerBlocksFirstColumnS1
             mov [S9], 'O'
             ret
        ;-------------------------------------------

;--------------Block Columns------------------------
        ;------------Block Left Column----------------------
        computerBlocksFirstColumnS1:     ; _ X X
             cmp [S1], ' '
             jne computerBlocksFirstColumnS4
             cmp [S4], 'X'
             jne computerBlocksFirstColumnS4
             cmp [S7], 'X'
             jne computerBlocksFirstColumnS4
             mov [S1], 'O'
             ret
        computerBlocksFirstColumnS4:     ; X _ X
             cmp [S1], 'X'
             jne computerBlocksFirstColumnS7
             cmp [S4], ' '
             jne computerBlocksFirstColumnS7
             cmp [S7], 'X'
             jne computerBlocksFirstColumnS7
             mov [S4], 'O'
             ret
        computerBlocksFirstColumnS7:     ; X X _
             cmp [S1], 'X'
             jne computerBlocksSecondColumnS2
             cmp [S4], 'X'
             jne computerBlocksSecondColumnS2
             cmp [S7], ' '
             jne computerBlocksSecondColumnS2
             mov [S7], 'O'
             ret
        ;-------------------------------------------

        ;------------Block Middle Column----------------------
        computerBlocksSecondColumnS2:     ; _ X X
             cmp [S2], ' '
             jne computerBlocksSecondColumnS5
             cmp [S5], 'X'
             jne computerBlocksSecondColumnS5
             cmp [S8], 'X'
             jne computerBlocksSecondColumnS5
             mov [S2], 'O'
             ret
        computerBlocksSecondColumnS5:     ; X _ X
             cmp [S2], 'X'
             jne computerBlocksSecondColumnS8
             cmp [S5], ' '
             jne computerBlocksSecondColumnS8
             cmp [S8], 'X'
             jne computerBlocksSecondColumnS8
             mov [S5], 'O'
             ret
        computerBlocksSecondColumnS8:     ; X X _
             cmp [S2], 'X'
             jne computerBlocksThirdColumnS3
             cmp [S5], 'X'
             jne computerBlocksThirdColumnS3
             cmp [S8], ' '
             jne computerBlocksThirdColumnS3
             mov [S8], 'O'
             ret
        ;-------------------------------------------

        ;------------Block Right Column----------------------
        computerBlocksThirdColumnS3:     ; _ X X
             cmp [S3], ' '
             jne computerBlocksThirdColumnS6
             cmp [S6], 'X'
             jne computerBlocksThirdColumnS6
             cmp [S9], 'X'
             jne computerBlocksThirdColumnS6
             mov [S3], 'O'
             ret
        computerBlocksThirdColumnS6:     ; X _ X
             cmp [S3], 'X'
             jne computerBlocksThirdColumnS9
             cmp [S6], ' '
             jne computerBlocksThirdColumnS9
             cmp [S9], 'X'
             jne computerBlocksThirdColumnS9
             mov [S6], 'O'
             ret
        computerBlocksThirdColumnS9:     ; X X _
             cmp [S3], 'X'
             jne computerBlocksDiagonalOneS1
             cmp [S6], 'X'
             jne computerBlocksDiagonalOneS1
             cmp [S9], ' '
             jne computerBlocksDiagonalOneS1
             mov [S9], 'O'
             ret
        ;-------------------------------------------

;------------Block Diagonals-----------------------------
        ;------------Block Diagonal (Top-Left to Bottom-Right)------
        computerBlocksDiagonalOneS1:     ; _ X X
             cmp [S1], ' '
             jne computerBlocksDiagonalOneS5
             cmp [S5], 'X'
             jne computerBlocksDiagonalOneS5
             cmp [S9], 'X'
             jne computerBlocksDiagonalOneS5
             mov [S1], 'O'
             ret
        computerBlocksDiagonalOneS5:     ; X _ X
             cmp [S1], 'X'
             jne computerBlocksDiagonalOneS9
             cmp [S5], ' '
             jne computerBlocksDiagonalOneS9
             cmp [S9], 'X'
             jne computerBlocksDiagonalOneS9
             mov [S5], 'O'
             ret
        computerBlocksDiagonalOneS9:     ; X X _
             cmp [S1], 'X'
             jne computerBlocksDiagonalTwoS3
             cmp [S5], 'X'
             jne computerBlocksDiagonalTwoS3
             cmp [S9], ' '
             jne computerBlocksDiagonalTwoS3
             mov [S9], 'O'
             ret
        ;-------------------------------------------

        ;------------Block Diagonal (Top-Right to Bottom-Left)------
        computerBlocksDiagonalTwoS3:     ; _ X X
             cmp [S3], ' '
             jne computerBlocksDiagonalTwoS5
             cmp [S5], 'X'
             jne computerBlocksDiagonalTwoS5
             cmp [S7], 'X'
             jne computerBlocksDiagonalTwoS5
             mov [S3], 'O'
             ret
        computerBlocksDiagonalTwoS5:     ; X _ X
             cmp [S3], 'X'
             jne computerBlocksDiagonalTwoS7
             cmp [S5], ' '
             jne computerBlocksDiagonalTwoS7
             cmp [S7], 'X'
             jne computerBlocksDiagonalTwoS7
             mov [S5], 'O'
             ret
        computerBlocksDiagonalTwoS7:     ; X X _
             cmp [S3], 'X'
             jne randomMove
             cmp [S5], 'X'
             jne randomMove
             cmp [S7], ' '
             jne randomMove
             mov [S7], 'O'
             ret
        ;-------------------------------------------


       randomMove:
           cinvoke rand         ;random int put into EAX
           cdq
           mov EBX, 9
           idiv EBX             ;divides by 9 and puts remainder in EDX
           cmp [S1+EDX], ' '
           jne randomMove
           mov [S1+EDX], 'O'
           ret

checkOWin:
        checkTopRowO:
                cmp [S1], 'O'
                jne checkMiddleRowO
                cmp [S2], 'O'
                jne checkMiddleRowO
                cmp [S3], 'O'
                je computerWins
        checkMiddleRowO:
                cmp [S4], 'O'
                jne checkBottomRowO
                cmp [S5], 'O'
                jne checkBottomRowO
                cmp [S6], 'O'
                je computerWins
        checkBottomRowO:
                cmp [S7], 'O'
                jne checkColumn1O
                cmp [S8], 'O'
                jne checkColumn1O
                cmp [S9], 'O'
                je computerWins
        checkColumn1O:
                cmp [S1], 'O'
                jne checkColumn2O
                cmp [S4], 'O'
                jne checkColumn2O
                cmp [S7], 'O'
                je computerWins
        checkColumn2O:
                cmp [S2], 'O'
                jne checkColumn3O
                cmp [S5], 'O'
                jne checkColumn3O
                cmp [S8], 'O'
                je computerWins
        checkColumn3O:
                cmp [S3], 'O'
                jne checkDiag1O
                cmp [S6], 'O'
                jne checkDiag1O
                cmp [S9], 'O'
                je computerWins
        checkDiag1O:
                cmp [S1], 'O'
                jne checkDiag2O
                cmp [S5], 'O'
                jne checkDiag2O
                cmp [S9], 'O'
                je computerWins
        checkDiag2O:
                cmp [S3], 'O'
                jne returnLoop
                cmp [S5], 'O'
                jne returnLoop
                cmp [S7], 'O'
                je computerWins
                ret

checkForDraw:   ;all 9 squares are filled
        mov ECX, -1
    drawLoop:
        inc ECX
        cmp ECX, 9
        je drawGame
        cmp [S1+ECX], ' '
        jne drawLoop
        ret

drawGame:
        call printBoard
        call printYellow
        cinvoke printf, "%cNobody wins! XD%c", 10, 10

        ;ehh, music
        invoke Beep, 660, 200
        invoke Beep, 825, 200
        invoke Beep, 733, 200
        invoke Beep, 660, 400

        invoke getch
        cinvoke exit, 0

playerWins:
        call printBoard
        call printGreen
        cinvoke printf, "%cYou Win! :D%c", 10, 10

        ;fanfare beep music!
        invoke Beep, 660, 300
        invoke Beep, 733, 300
        invoke Beep, 825, 300
        invoke Beep, 880, 500

        invoke getch
        cinvoke exit, 0

computerWins:
        call printBoard
        call printBlue
        cinvoke printf, "%cComputer wins! D:%c", 10, 10

        ;womp womp music
        invoke Beep, 880, 300
        invoke Beep, 825, 300
        invoke Beep, 733, 300
        invoke Beep, 660, 500

        invoke getch
        cinvoke exit, 0


;===================PALLETE SECTION=====================
printCLS:
        cinvoke printf, "%c[2J%c[1;1H", 27, 27
        ret

printRed:
        cinvoke printf, "%c[31;1m",27
        ret

printPurple:
        cinvoke printf, "%c[35;1m",27
        ret

printDefault:
        cinvoke printf, "%c[0m",27
        ret

printYellow:
        cinvoke printf, "%c[33;1m",27
        ret

printGreen:
        cinvoke printf, "%c[32;1m",27
        ret

printBlue:
        cinvoke printf, "%c[34;1m",27
        ret
;=======================================================

;===============RETURN LOOP======================
returnLoop:
        ret
;===============================================


;======================================
section '.data' data readable writeable
;======================================
Square  dd      0
S1      db      ' '
S2      db      ' '
S3      db      ' '
S4      db      ' '
S5      db      ' '
S6      db      ' '
S7      db      ' '
S8      db      ' '
S9      db      ' '

;=====================================
section '.idata' import data readable
;=====================================
library msvcrt, 'msvcrt.dll', kernel32, 'kernel32.dll'
import msvcrt, printf, 'printf', scanf, 'scanf', getch, '_getch', rand, 'rand', srand, 'srand', time, 'time', exit, 'exit'
import kernel32, Beep, 'Beep', Sleep, 'Sleep'