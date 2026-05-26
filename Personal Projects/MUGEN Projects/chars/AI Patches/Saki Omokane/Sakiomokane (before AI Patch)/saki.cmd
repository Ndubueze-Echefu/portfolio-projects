;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------



;---[cpu ai]----------------------------------------------------------------------
[command]
name = "cpu1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "cpu11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "cpu12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "cpu2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "cpu13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "cpu14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "cpu3"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu15"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu16"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "cpu17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "cpu18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "cpu5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "cpu19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "cpu20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "cpu6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "cpu21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "cpu22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "cpu7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "cpu23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "cpu24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "cpu8"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu25"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu26"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "cpu27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "cpu28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "cpu10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "cpu29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "cpu30"
command = s, s, s, s, s, s, s, s
time = 1



; Satellite Heat Assault
[command]
name = "qcb_xy"
command = ~D, DB, B, x+y

[command]
name = "qcb_xy"
command = ~D, DB, B, x+z

[command]
name = "qcb_xy"
command = ~D, DB, B, y+z

; Gunner Rush (angled)
[command]
name = "qcf_ab"
command = ~D, DF, F, a+b

[command]
name = "qcf_ab"
command = ~D, DF, F, a+c

[command]
name = "qcf_ab"
command = ~D, DF, F, b+c

; Positron Storm (angled)
[command]
name = "dp_xy"
command = ~F, D, DF, x+y

[command]
name = "dp_xy"
command =  ~F, D, DF, x+z

[command]
name = "dp_xy"
command =  ~F, D, DF, y+z

; Positron Storm (horizontal)
[command]
name = "qcf_xy"
command = ~D, DF, F, x+y

[command]
name = "qcf_xy"
command = ~D, DF, F, x+z

[command]
name = "qcf_xy"
command = ~D, DF, F, y+z
;-| Special Motions |------------------------------------------------------
[command]
name = "bdp_a"
command = ~B, D, DB, a
time = 15

[command]
name = "bdp_b"
command = ~B, D, DB, b
time = 15

[command]
name = "bdp_c"
command = ~B, D, DB, c
time = 15

[command]
name = "qcf_a"
command = ~D, DF, F, a
time = 15

[command]
name = "qcf_b"
command = ~D, DF, F, b
time = 15

[command]
name = "qcf_c"
command = ~D, DF, F, c
time = 15

[command]
name = "qcb_x"
command = ~D, DB, B, x
time = 15

[command]
name = "qcb_y"
command = ~D, DB, B, y
time = 15

[command]
name = "qcb_z"
command = ~D, DB, B, z
time = 15

[command]
name = "dp_x"
command = ~F, D, DF, x

[command]
name = "dp_y"
command = ~F, D, DF, y

[command]
name = "dp_z"
command = ~F, D, DF, z

[command]
name = "dd_x"
command = ~D, D, x

[command]
name = "dd_y"
command = ~D, D, y

[command]
name = "dd_z"
command = ~D, D, z

[command]
name = "qcf_x"
command = ~D, DF, F, x
time = 15

[command]
name = "qcf_y"
command = ~D, DF, F, y
time = 15

[command]
name = "qcf_z"
command = ~D, DF, F, z
time = 15
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| PartnerChange |------------

[command]
name = "counter"
command = /F, x+a
time = 8

[command]
name = "counter"
command = /F, y+b
time = 8

[command]
name = "counter"
command = /F, z+c
time = 8

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = b+c
time = 8

[command]
name = "abc"
command = a+b
time = 8

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "release_z"
command = ~z
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[command]
name = "holddownback"
command = /$DB
time = 1

[command]
name = "holddownfwd"
command = /$DF
time = 1

[command]
name = "holdupback"
command = /$UB
time = 1

[command]
name = "holdupfwd"
command = /$UF
time = 1

[command]
name = "holddownforward"
command = /$DF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]





;------------------------------------
;ai stand guard
;------------------------------------
[state -1]
type = changestate
triggerall = var(57) = 1  && p2bodydist x < 70
triggerall = statetype != a
triggerall = var(7) = 0
triggerall = p2statetype != c
triggerall = p2movetype = a
trigger1 = ctrl = 1
trigger2 = enemy, numhelper >= 1
trigger2 = ctrl = 1
trigger2 = enemynear, movetype = a
trigger3 = enemy, numproj >= 1
trigger3 = ctrl = 1
trigger3 = enemynear, movetype = a
value = 130

[state -1]
type = changestate
triggerall = var(57) = 1  && p2bodydist x < 70
triggerall = statetype != a
triggerall = var(7) = 1
trigger1 = enemy, numhelper >= 1
trigger1 = ctrl = 1
trigger1 = enemynear, movetype = a
trigger2 = enemy, numproj >= 1
trigger2 = ctrl = 1
trigger2 = enemynear, movetype = a
value = 130

;land block------------------------------------------------
[state -1]
type = changestate
triggerall = var(57) = 1
triggerall = stateno = 52 = 1
triggerall = p2movetype = a
;trigger1 = ctrl = 1
trigger1 = enemy, numhelper >= 1
;trigger1 = ctrl = 1
trigger1 = enemynear, movetype = a
trigger3 = enemy, numproj >= 1
;trigger3 = ctrl = 1
trigger3 = enemynear, movetype = a
value = 130
;------------------------------------
;ai stand to crouch guard
;------------------------------------
[state -1]
type = changestate
triggerall = var(57) = 1 && p2bodydist x < 70
triggerall = statetype != a
triggerall = p2statetype = c
triggerall = p2movetype = a
trigger1 = stateno = 150
value = 152

;------------------------------------
;ai crouching guard
;------------------------------------
[state -1,]
type = changestate
triggerall = var(57) = 1 && p2bodydist x < 70
triggerall = statetype != a
triggerall = p2statetype = c
triggerall = p2movetype = a
trigger1 = ctrl = 1
value = 131
;------------------------------------
;ai crouch to stand guard
;------------------------------------
[state -1, c-to-s guard]
type = changestate
triggerall = var(57) = 1 && p2bodydist x < 70
triggerall = statetype != a
triggerall = p2statetype != c
triggerall = p2movetype = a
trigger1 = stateno = 152
value = 150

;------------------------------------
;ai aerial guard
;------------------------------------
[state -1, air guard]
type = changestate
triggerall = var(57) = 1 && p2bodydist x > 0
triggerall = var(7) = 0
triggerall = statetype = a
triggerall = p2movetype = a
trigger1 = ctrl = 1
trigger2 = enemy, numhelper >= 1
trigger2 = ctrl = 1
trigger2 = enemynear, movetype = a
trigger3 = enemy, numproj >= 1
trigger3 = ctrl = 1
trigger3 = enemynear, movetype = a
value = 132

[state -1, air guard]
type = changestate
triggerall = var(57) = 1
triggerall = var(7) = 1
triggerall = statetype = a
trigger1 = enemy, numhelper >= 1
trigger1 = ctrl = 1
trigger1 = enemynear, movetype = a
trigger2 = enemy, numproj >= 1
trigger2 = ctrl = 1
trigger2 = enemynear, movetype = a
value = 132
;---------------------------------------------------------------------------
;ai misc
;---------------------------------------------------------------------------

[state -1]
type = changestate
triggerall = random < 100
triggerall = var(57) = 1
triggerall = stateno != 40
triggerall = statetype != a
trigger1 = (p2movetype = a) && (p2statetype != a) && (enemy, numhelper >= 1)
trigger1 = ctrl = 1
trigger2 = (p2movetype = a) && (p2statetype != a) && (enemy, numproj >= 1)
trigger2 = ctrl = 1
value = 40

[state -1]
type = varset
trigger1 = var(57) = 1
trigger1 = (p2movetype = a) && (p2statetype != a) && (enemy, numproj >= 1)
trigger1 = ctrl = 1
v = 3
value = 1


[state -1]
type = varset
var(57) = 1
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"

; stand still--if you win, stop moving!!!
[state -1]
type = changestate
value = 0
triggerall = var(57) = 1
triggerall = roundstate = 3
trigger1 = statetype != a
trigger1 = ctrl

;ground combo 1
[state -1,1]
type = changestate
value = 200
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != a
triggerall = ctrl = 1
trigger1 = p2bodydist x = [0,25]
trigger1 = random < 500
trigger2 = stateno = 100
trigger2 = p2bodydist x = [0,25]
trigger2 = random < 500

[state -1,1]
type = changestate
value = 230
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != a
triggerall = ctrl = 1
trigger1 = p2bodydist x = [0,20]
trigger1 = random < 200
trigger2 = stateno = 100
trigger2 = p2bodydist x = [0,20]
trigger2 = random < 200

[state -1,2]
type = changestate
value = 210
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != a
trigger1 = stateno = 230
trigger1 = movecontact
trigger1 = p2bodydist x < 50
trigger2 = p2bodydist x = [0,40]
trigger2 = random < 500 && enemynear, statetype = l
trigger2 = ctrl

;aircombo

[state -1,41]
type = changestate
value = 600
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = a
triggerall = p2bodydist x = [0,40]
trigger1 = ctrl = 1
trigger1 = p2bodydist y = [-20,10]
trigger1 = stateno = 50

[state -1]
type = changestate
value = 630
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact

[state -1]
type = changestate
value = 610
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact


[state -1]
type = changestate
value = 640
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 610 ;|| stateno = 610
trigger1 = movecontact


[state -1]
type = changestate
value = 650
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 640
trigger1 = movecontact
trigger1 = random < 500

[state -1]
type = changestate
value = 620
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 640
trigger1 = movecontact
trigger1 = random < 500









;===========================================================================
;Satellite Heat Assault
[state -1, go]
type = changestate
value = 4200
triggerall = command = "qcb_xy"
triggerall = power >= 1000 
triggerall = statetype !=a 
triggerall = !winko
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = stateno != 460
trigger3 = (stateno = [1300,1320]) || (stateno = [1400,1420])
trigger4 = (stateno = [1500,1520])
trigger4 = movecontact
trigger5 = stateno = 220

;Gunner Power
[state -1, go]
type = changestate
value = 4100
triggerall = command = "qcf_ab"
triggerall = power >= 1000 
triggerall = statetype != a 
triggerall = !winko
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = stateno != 460
trigger3 = (stateno = [1300,1320]) || (stateno = [1400,1420])
trigger4 = (stateno = [1500,1520])
trigger4 = movecontact
trigger5 = stateno = 220

;Positron Storm (anti-air)
[state -1, go]
type = changestate
value = 4010
triggerall = command = "dp_xy"
triggerall = power >= 1000 
triggerall = statetype !=a 
triggerall = !winko
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = stateno != 460
trigger3 = (stateno = [1300,1320]) || (stateno = [1400,1420])
trigger4 = (stateno = [1500,1520])
trigger4 = movecontact
trigger5 = stateno = 220

;Positron Storm (horizontal)
[state -1, go]
type = changestate
value = 4000
triggerall = command = "qcf_xy"
triggerall = power >= 1000 
triggerall = statetype !=a 
triggerall = !winko
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = stateno != 460
trigger3 = (stateno = [1300,1320]) || (stateno = [1400,1420])
trigger4 = (stateno = [1500,1520])
trigger4 = movecontact
trigger5 = stateno = 220
;-------------------------------------------------
;Gunner Counter
[state -1, steal]
type = changestate
value = 1600
triggerall = command = "bdp_a"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, steal]
type = changestate
value = 1610
triggerall = command = "bdp_b"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, steal]
type = changestate
value = 1620
triggerall = command = "bdp_c"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
;-------------------------------------------------
;Shoulder Charge
[state -1, steal]
type = changestate
value = 1500
triggerall = command = "qcf_a"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, steal]
type = changestate
value = 1502
triggerall = command = "qcf_b"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, steal]
type = changestate
value = 1503
triggerall = command = "qcf_c"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
;---------------------------------------------------------------------------
;Plasma Sphere weak
[state -1, a2]
type = changestate
value = 1400
triggerall = command = "dp_x"
triggerall = statetype != a
triggerall = numhelper(14000) = 0
triggerall = numhelper(14010) = 0
triggerall = numhelper(14020) = 0
trigger1 = ctrl
trigger2 = stateno = [200,429]
trigger2 = movecontact


;Plasma Sphere medium
[state -1, a2]
type = changestate
value = 1410
triggerall = command = "dp_y"
triggerall = statetype != a
triggerall = numhelper(14000) = 0
triggerall = numhelper(14010) = 0
triggerall = numhelper(14020) = 0
trigger1 = ctrl
trigger2 = stateno = [200,429]
trigger2 = movecontact

;Plasma Sphere medium
[state -1, a2]
type = changestate
value = 1420
triggerall = command = "dp_z"
triggerall = statetype != a
triggerall = numhelper(14000) = 0
triggerall = numhelper(14010) = 0
triggerall = numhelper(14020) = 0
trigger1 = ctrl
trigger2 = stateno = [200,429]
trigger2 = movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;air Hand Grenade
[state -1, a2]
type = changestate
value = 1350
triggerall = command = "qcb_x"
triggerall = statetype = a
triggerall = numhelper(13050) = 0
triggerall = numhelper(13051) = 0
triggerall = numhelper(13060) = 0
triggerall = numhelper(13070) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1360
triggerall = command = "qcb_y"
triggerall = statetype = a
triggerall = numhelper(13050) = 0
triggerall = numhelper(13051) = 0
triggerall = numhelper(13060) = 0
triggerall = numhelper(13070) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1370
triggerall = command = "qcb_z"
triggerall = statetype = a
triggerall = numhelper(13050) = 0
triggerall = numhelper(13051) = 0
triggerall = numhelper(13060) = 0
triggerall = numhelper(13070) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
;---------------------------------------------------------------------------
;Hand Grenade (strong)
[state -1, a2]
type = changestate
value = 1320
triggerall = command = "qcb_z"
triggerall = statetype != a
triggerall = numhelper(13000) = 0
triggerall = numhelper(13001) = 0
triggerall = numhelper(13002) = 0
triggerall = numhelper(13005) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Hand Grenaden (medium)
[state -1, a2]
type = changestate
value = 1310
triggerall = command = "qcb_y"
triggerall = statetype != a
triggerall = numhelper(13000) = 0
triggerall = numhelper(13001) = 0
triggerall = numhelper(13002) = 0
triggerall = numhelper(13005) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Hand Grenade (weak)
[state -1, a2]
type = changestate
value = 1300
triggerall = command = "qcb_x"
triggerall = statetype != a
triggerall = numhelper(13000) = 0
triggerall = numhelper(13001) = 0
triggerall = numhelper(13002) = 0
triggerall = numhelper(13005) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;air Special ammo shot - Overpowered Positron Shock
[state -1, a2]
type = changestate
value = 1275
triggerall = command = "qcf_x" && var(4) = 3
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1275
triggerall = command = "qcf_y" && var(4) = 3
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1275
triggerall = command = "qcf_z" && var(4) = 3
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special ammo shot - Overpowered Positron Shock
[state -1, a2]
type = changestate
value = 1270
triggerall = command = "qcf_x" && var(4) = 3
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1270
triggerall = command = "qcf_y" && var(4) = 3
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1270
triggerall = command = "qcf_z" && var(4) = 3
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;air Special ammo shot - Electric Field
[state -1, a2]
type = changestate
value = 1265
triggerall = command = "qcf_x" && var(4) = 2
triggerall = statetype = a
triggerall = numhelper(12010) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1265
triggerall = command = "qcf_y" && var(4) = 2
triggerall = statetype = a
triggerall = numhelper(12010) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1265
triggerall = command = "qcf_z" && var(4) = 2
triggerall = statetype = a
triggerall = numhelper(12010) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special ammo shot - Electric Field
[state -1, a2]
type = changestate
value = 1260
triggerall = command = "qcf_x" && var(4) = 2
triggerall = numhelper(12010) = 0
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1260
triggerall = command = "qcf_y" && var(4) = 2
triggerall = numhelper(12010) = 0
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1260
triggerall = command = "qcf_z" && var(4) = 2
triggerall = numhelper(12010) = 0
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;air Special ammo shot - hyper fast bullet
[state -1, a2]
type = changestate
value = 1255
triggerall = command = "qcf_x" && var(4) = 1
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1255
triggerall = command = "qcf_y" && var(4) = 1
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1255
triggerall = command = "qcf_z" && var(4) = 1
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Special ammo shot - hyper fast bullet
[state -1, a2]
type = changestate
value = 1250
triggerall = command = "qcf_x" && var(4) = 1
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1250
triggerall = command = "qcf_y" && var(4) = 1
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

[state -1, a2]
type = changestate
value = 1250
triggerall = command = "qcf_z" && var(4) = 1
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;Load special ammo (hyper fast bullet)
[state -1,z]
type = changestate
value = 1200
triggerall = command = "dd_x" && var(4) = 0
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = stateno = [200,450]

;Load special ammo (electric field)
[state -1,z]
type = changestate
value = 1205
triggerall = command = "dd_z" && var(4) = 0
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = stateno = [200,450]

;Load special ammo (Overpowered Positron Shock) - MVC attack
[state -1,z]
type = changestate
value = 1210
triggerall = command = "dd_y" && var(4) = 0
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = stateno = [200,450]

;---------------------------------------------------------------------------
;air Experimental positron cannon (weak)
[state -1, a2]
type = changestate
value = 1050
triggerall = command = "qcf_x" && var(4) = 0
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;air Experimental positron cannon (medium)
[state -1, a2]
type = changestate
value = 1060
triggerall = command = "qcf_y" && var(4) = 0
triggerall = statetype = a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;air Experimental positron cannon (strong)
[state -1, a2]
type = changestate
value = 1070
triggerall = command = "qcf_z" && var(4) = 0
triggerall = statetype = a
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])

;---------------------------------------------------------------------------
;Experimental positron cannon (strong)
[state -1, a2]
type = changestate
value = 1020
triggerall = command = "qcf_z" && var(4) = 0
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Experimental positron cannon (medium)
[state -1, a2]
type = changestate
value = 1010
triggerall = command = "qcf_y" && var(4) = 0
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact
;---------------------------------------------------------------------------
;Experimental positron cannon (weak)
[state -1, a2]
type = changestate
value = 1000
triggerall = command = "qcf_x" && var(4) = 0
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact


;---------------------------------------------------------------------------
;personal space-----------------------------------------------
;counter strike 1
[state -1, counter]
type = changestate
value = 910
triggerall = (command = "counter") && (power >= 1000)
trigger1 = stateno = [150,153]


[state -1, guard push]
type = changestate
value = 160
triggerall = command = "guardpush"
triggerall = statetype = S
trigger1 = stateno = [150,153] ;the guard state numbers

[state -1, guard push]
type = changestate
value = 162
triggerall = command = "guardpush"
triggerall = statetype = A
trigger1 = stateno = [154,155] ;the guard state numbers

[state -1, guard push]
type = changestate
value = 161
triggerall = command = "guardpush"
triggerall = statetype = C
trigger1 = stateno = [151,153] ;the guard state numbers




;--------------------------------------------------------------
;Throw 1
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "y") || (command = "z")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;--------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 810
triggerall = (command = "b") || (command = "c")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Run Fwd
[state -1, run Fwd]
type = changestate
value = 100
trigger1 = command = "FF"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl

;---------------------------------------------------------------------------
;run back
[state -1, run back]
type = changestate
value = 105
trigger1 = command = "BB"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl

;===========================================================================
;jump strong kick
[state -1]
type = changestate
value = 40
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [230,270]
trigger2 = time < 1
;---------------------------------------------------------------------------
;taunt
;â€™Â§â€Â­
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;stand light punch
[state -1]
type = changestate
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
;---------------------------------------------------------------------------
;stand medium punch
[state -1]
type = changestate
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;stand strong punch
[state -1]
type = changestate
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------
;stand light kick
[state -1]
type = changestate
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
;standing medium kick
[state -1]
type = changestate
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,420]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------
;launcher
[state -1]
type = changestate
value = 260
triggerall = command = "c"
triggerall = command = "holddownfwd"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------
;gun tackle
[state -1]
type = changestate
value = 270
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact


;---------------------------------------------------------------------------
;crouching light punch
[state -1, crouching light punch]
type = changestate
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
;---------------------------------------------------------------------------
;crouching medium punch
[state -1, crouching medium punch]
type = changestate
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;crouching strong punch
[state -1, crouching strong punch]
type = changestate
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------
;crouching light kick
[state -1, crouching light kick]
type = changestate
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
;---------------------------------------------------------------------------
;crouching medium kick
[state -1, crouching medium kick]
type = changestate
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;crouching strong kick
[state -1, crouching strong kick]
type = changestate
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,420]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
;---------------------------------------------------------------------------

;jump light punch
[state -1]
type = changestate
value = 600
triggerall = command = "x"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl

;---------------------------------------------------------------------------
;jump medium punch
[state -1]
type = changestate
value = 610
triggerall = command = "y"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 635) && movecontact

;---------------------------------------------------------------------------
;jump strong punch
[state -1]
type = changestate
value = 620
triggerall = command = "z"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
;---------------------------------------------------------------------------
;jump light kick
[state -1]
type = changestate
value = 630
triggerall = command = "a"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
;---------------------------------------------------------------------------
;jump medium kick
[state -1]
type = changestate
value = 640
triggerall = command = "b"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 635) && movecontact
;---------------------------------------------------------------------------
;jump strong kick
[state -1]
type = changestate
value = 650
triggerall = command = "c"
triggerall= movetype != H
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 635) && movecontact
trigger6 = (stateno = 640) && movecontact

[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
