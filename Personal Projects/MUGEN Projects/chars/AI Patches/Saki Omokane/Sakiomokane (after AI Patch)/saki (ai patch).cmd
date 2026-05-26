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

; GUARD (start)
[Statedef 120]
type = U   ;Leave state type unchanged
physics = U;Leave physics unchanged

[State 120]
Type=CtrlSet
Trigger1=var(57)>0
value=0

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(57)=0
trigger1 = command = "holddown"
trigger2 = var(57)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(57)=0
trigger1 = command!= "holddown"
trigger2 = var(57) > 0
trigger2 = p2statetype = A
trigger2 = abs(P2BodyDist X)=3
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = command!= "holdback"
trigger1 = var(57)=0
trigger2 =!inguarddist
value = 140

;---------------------------------------------------------------------------
; Stand guard (guarding)
[Statedef 130]
type    = S
physics = S

[State 120]
Type=CtrlSet
Trigger1=var(57)>0
value=0

[State 130, 1]
type = ChangeAnim
trigger1 = Anim!= 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
trigger1 = var(57)=0
trigger2 = var(57)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = var(57)=0
trigger1 = command!= "holdback"
trigger2 =!inguarddist
value = 140

;---------------------------------------------------------------------------
; Crouch guard (guarding)
[Statedef 131]
type    = C
physics = C

[State 120]
Type=CtrlSet
Trigger1=var(57)>0
value=0

[State 131, 1]
type = ChangeAnim
trigger1 = Anim!= 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command!= "holddown"
trigger1 = var(57)=0
trigger2 = var(57) > 0
trigger2 = p2statetype = A
trigger2 = abs(P2BodyDist X)=3
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = var(57)=0
trigger1 = command!= "holdback"
trigger2 =!inguarddist
value = 140

;---------------------------------------------------------------------------
; Air guard (guarding)
[Statedef 132]
type    = A
physics = N

[State 120]
Type=CtrlSet
Trigger1=var(57)>0
value=0

[State 132, 1]
type = ChangeAnim
trigger1 = Anim!= 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback" || (var(57)>0)
trigger1 = inguarddist
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = var(57)=0
trigger1 = command!= "holdback"
trigger2 =!inguarddist
value = 140


;---------------------------------------------------------------------------
; Stand guard hit (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(StateType=C)

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(57)=0
trigger1 = command = "holddown"
trigger2 = var(57)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(57)=0
trigger1 = command!= "holddown"
trigger2 = var(57) > 0
trigger2 = p2statetype = A
trigger2 = abs(P2BodyDist X)=3
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; Stand guard hit (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
trigger1 = var(57)=0
value = 1

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(57)=0
trigger1 = command = "holddown"
trigger2 = var(57)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(57)=0
trigger1 = command!= "holddown"
trigger2 = var(57) > 0
trigger2 = p2statetype = A
trigger2 = abs(P2BodyDist X)=3
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl =!var(57)

;---------------------------------------------------------------------------
; Crouch guard hit (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(StateType=C)

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(57)=0
trigger1 = command = "holddown"
trigger2 = var(57)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(57)=0
trigger1 = command!= "holddown"
trigger2 = var(57) > 0
trigger2 = p2statetype = A
trigger2 = abs(P2BodyDist X)=3
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Crouch guard hit (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
trigger1 = var(57)=0
value = 1

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(57)=0
trigger1 = command = "holddown"
trigger2 = var(57)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(57)=0
trigger1 = command!= "holddown"
trigger2 = var(57) > 0
trigger2 = p2statetype = A
trigger2 = abs(P2BodyDist X)=3
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl =!var(57)

;---------------------------------------------------------------------------
; Air guard hit (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Air guard hit (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
trigger1 = var(57)=0
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback" || var(57)>0
trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;-|-AI Activitation-|-------------------------------------------------------------------
[Statedef -1]

[State -1, AI ON]  ; Turn the AI on when
Type = VarSet
TriggerAll = var(57) < 1 ; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 57
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(57)>0  ; it is on and
Trigger1=RoundState=3 && (stateno = 195 || lose) ; the player taunted OR lost
Trigger2=!IsHelper  ; OR if we are a player, but
Trigger2=AILevel=0  ; the computer is not in control
v=57
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)= ifelse(AILevel = 1, 8, ifelse(AILevel = 2, 16, ifelse(AILevel = 3, 32, ifelse(AILevel = 4, 63, ifelse(AILevel = 5, 125, ifelse(AILevel = 6, 250, ifelse(AILevel = 7, 500, 1000)))))))


[State -1]; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(57)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard
;------------------[AI Commons]---------------------------------------------

[State -1, Throw]
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = (Ctrl) && (p2statetype != L) && (statetype = S) && random<var(50) && (p2movetype != H)
trigger1 = (p2bodydist X <= 10) && (p2bodydist y = [-60,60]) 
value = 800

[State -1, Jump]
type = ChangeState
triggerall = roundstate = 2 && (var(57) != 0)
triggerall = statetype != A && random<var(50)
trigger1 = (p2bodydist x <= 35) && (p2movetype = H) && (p2statetype = A) || (p2movetype !=H) && (p2statetype = A)
trigger1 = ctrl
trigger2 = (stateno = 260) && movehit
value = 40

[State -1, Super Jump]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
;REQUIREMENTS
trigger1 = (stateno = 420) && movehit
value = 421

[State -1, Salute]
type = ChangeState
triggerAll=(roundState=3) && (var(57) !=0) 
triggerall = (win) && (stateno != 195) && (prevstateno != 195)
trigger1=(statetype = s) && (ctrl)
value = 195

[State -1, Run Forward]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<var(50)
triggerall = (numproj = 0)
;REQUIREMENTS
trigger1 = (stateno !=[100,106])
trigger1 = ctrl
trigger1 = enemynear, time >= 46
value = 100
;-----------------[AI Defense]----------------------------------------------
[State -1, Stand Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = (Ctrl) && (p2movetype = A) && random<var(50)
trigger1 = (statetype = S) && inguarddist
value = 130

[State -1, Crouch Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = (Ctrl) && (p2movetype = A) && random<var(50)
trigger1 = (statetype = C) && inguarddist
value = 131

[State -1, Air Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = (Ctrl) && (p2movetype = A) && random<var(50)
trigger1 = (statetype = A) && inguarddist
value = 132

[State -1, Guard Push Stand]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = random<var(50)
triggerall = (statetype = S) && inguarddist
;REQUIREMENTS
trigger1 = ctrl
trigger1 = (stateno = [150,153]) && movecontact
value = 160

[State -1, Guard Push Crouch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = random<var(50)
triggerall = (statetype = C) && inguarddist
;REQUIREMENTS
trigger1 = ctrl
trigger1 = (stateno = [151,153]) && movecontact
value = 161

[State -1, Guard Push Air]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = random<var(50)
triggerall = (statetype = A) && inguarddist
;REQUIREMENTS
trigger1 = ctrl
trigger1 = (stateno = [154,155]) && movecontact
value = 162

[State -1, Counter Strike]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
triggerall = (power >=1000)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = ((stateno = [154,155]) && movecontact) && time >= 120
value = 910

[State -1, Gunner Counter (weak)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time <= 28
trigger1 = P2StateNo!=[120,155]
trigger1 = numproj = 0
trigger1 = inguarddist
trigger1 = p2movetype = A
value = 1600

[State -1, Gunner Counter (medium)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time <= 28
trigger1 = P2StateNo!=[120,155]
trigger1 = numproj = 0
trigger1 = inguarddist
trigger1 = p2movetype = A
value = 1610

[State -1, Gunner Counter (strong)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time <= 28
trigger1 = P2StateNo!=[120,155]
trigger1 = numproj = 0
trigger1 = inguarddist
trigger1 = p2movetype = A
value = 1620
;-----------------[AI Normals]----------------------------------------------
[State -1, Light Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<var(50)
triggerall = (p2bodydist x <= 45) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 4
trigger1 = P2StateNo!=[120,155]
value = 200

[State -1, Medium Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<var(50)
triggerall = (p2bodydist x <= 55) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<var(50)/4
trigger3 = (stateno = 230) && movehit && random<var(50)/4
trigger4 = (stateno = 400) && movehit && random<var(50)/4
trigger5 = (stateno = 430) && movehit && random<var(50)/4
value = 210 

[State -1, Heavy Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<var(50)
trigger1 = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,210]) && movehit && random<var(50)/8
trigger3 = (stateno = [230,240]) && movehit && random<var(50)/8
trigger4 = (stateno = [400,410]) && movehit && random<var(50)/8
trigger5 = (stateno = [430,440]) && movehit && random<var(50)/8
value = 220

[State -1, Light Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<var(50)
triggerall = (p2bodydist x <= 25) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<var(50)/2
trigger3 = (stateno = 400) && movehit && random<var(50)/2
value = 230

[State -1, Medium Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<var(50)
triggerall = (p2bodydist x <= 75) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 10
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,210]) && movehit && random<var(50)/6
trigger3 = (stateno = 230) && movehit && random<var(50)/6
trigger4 = (stateno = [400,410]) && movehit && random<var(50)/6
trigger5 = (stateno = 430) && movehit && random<var(50)/6
value = 240

[State -1, Strong Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<var(50)
triggerall = (p2bodydist x <= 90) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 11
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,220]) && movehit && random<var(50)/8
trigger3 = (stateno = [230,240]) && movehit && random<var(50)/8
trigger4 = (stateno = [400,420]) && movehit && random<var(50)/8
trigger5 = (stateno = [430,440]) && movehit && random<var(50)/8
value = 250

[State -1, Launcher]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 37) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 18
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,210]) && movehit && random<var(50)/8
trigger3 = (stateno = [230,240]) && movehit && random<var(50)/8
trigger4 = (stateno = [400,410]) && movehit && random<var(50)/8
trigger5 = (stateno = [430,440]) && movehit && random<var(50)/8
value = 260

[State -1, Gun Tackle]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<var(50)
triggerall = (p2bodydist x <= 41) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,210]) && movehit && random<var(50)/8
trigger3 = (stateno = [230,240]) && movehit && random<var(50)/8
trigger4 = (stateno = [400,410]) && movehit && random<var(50)/8
trigger5 = (stateno = [430,440]) && movehit && random<var(50)/8
value = 270

[State -1, Crouch Light Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype =C) && random<var(50)
triggerall = (p2bodydist x <= 50) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 4
trigger1 = P2StateNo!=[120,155]
value = 400

[State -1, Crouch Medium Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = C) && random<var(50)
triggerall = (p2bodydist x <= 40) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<var(50)/4
trigger3 = (stateno = 230) && movehit && random<var(50)/4
trigger4 = (stateno = 400) && movehit && random<var(50)/4
trigger5 = (stateno = 430) && movehit && random<var(50)/4
value = 410


[State -1, Crouch Strong Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = C) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,210]) && movehit && random<var(50)/8
trigger3 = (stateno = [230,240]) && movehit && random<var(50)/8
trigger4 = (stateno = [400,410]) && movehit && random<var(50)/8
trigger5 = (stateno = [430,440]) && movehit && random<var(50)/8
value = 420

[State -1, Crouch Light Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype =C) && random<var(50)
triggerall = (p2bodydist x <= 50) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 5
trigger1 = P2StateNo!= 131 && P2StateNo!= 132
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<var(50)/2
trigger3 = (stateno = 400) && movehit && random<var(50)/2
value = 430

[State -1, Crouch Medium Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype =C) && random<var(50)
triggerall = (p2bodydist x <= 85) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 8
trigger1 = P2StateNo!= 131 && P2StateNo!= 132
;OPTIONAL
trigger2 = (stateno = [200,210]) && movehit && random<var(50)/6
trigger3 = (stateno = 230) && movehit && random<var(50)/6
trigger4 = (stateno = [400,410]) && movehit && random<var(50)/6
trigger5 = (stateno = 430) && movehit && random<var(50)/6
value = 440

[State -1, Crouch Strong Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype =C) && random<var(50)
triggerall = (p2bodydist x <= 105) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9
trigger1 = P2StateNo!= 131 && P2StateNo!= 132
;OPTIONAL
trigger2 = (stateno = [200,220]) && movehit && random<var(50)/7
trigger3 = (stateno = [230,240]) && movehit && random<var(50)/7
trigger4 = (stateno = [400,420]) && movehit && random<var(50)/7
trigger5 = (stateno = [430,440]) && movehit && random<var(50)/7
value = 450

[State -1, Air Light Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist x <= 30) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 4
trigger1 = P2StateNo!= 130 && P2StateNo!= 132
value = 600

[State -1, Air Medium Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist x <= 50) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9
trigger1 = P2StateNo!= 130 && P2StateNo!= 132
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<var(50)/3
trigger3 = (stateno = 630) && movehit && random<var(50)/3
trigger4 = (stateno = 635) && movehit && random<var(50)/3
value = 610

[State -1, Air Heavy Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist x <= 100) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<var(50)/4
trigger3 = (stateno = 610) && movehit && random<var(50)/4
trigger4 = (stateno = 630) && movehit && random<var(50)/4
trigger5 = (stateno = 640) && movehit && random<var(50)/4
value = 620

[State -1, Air Light Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist x <= 45) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 11
trigger1 = P2StateNo!= 130 && P2StateNo!= 132
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<var(50)
value = 630

[State -1, Air Medium Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist x <= 45) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 10
trigger1 = P2StateNo!= 130 && P2StateNo!= 132
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<var(50)/4
trigger3 = (stateno = 610) && movehit && random<var(50)/4
trigger4 = (stateno = 630) && movehit && random<var(50)/4
trigger5 = (stateno = 635) && movehit && random<var(50)/4
value = 640

[State -1, Air Strong Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist x <= 40) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12
trigger1 = P2StateNo!= 130 && P2StateNo!= 132
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<var(50)/5
trigger3 = (stateno = 610) && movehit && random<var(50)/5
trigger4 = (stateno = 630) && movehit && random<var(50)/5
trigger5 = (stateno = 635) && movehit && random<var(50)/5
trigger6 = (stateno = 640) && movehit && random<var(50)/5
value = 650
;-------------[AI Specials]-------------------------------------------------
[State -1, Experimental Positron Cannon (weak)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = var(4) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 23
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1000

[State -1, Experimental Positron Cannon (medium)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = var(4) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 23
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1010

[State -1, Experimental Positron Cannon (strong)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = var(4) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 23
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1020

[State -1, Air Experimental Positron Cannon (weak)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist y = [0,60])
triggerall = p2statetype != L
triggerall = var(4) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1050

[State -1, Air Experimental Positron Cannon (medium)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist y = [0,60])
triggerall = p2statetype != L
triggerall = var(4) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1060

[State -1, Air Experimental Positron Cannon (strong)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist y = [0,60])
triggerall = p2statetype != L
triggerall = var(4) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1070

[State -1, Load Special Ammo (Hyper Fast Bullet)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = var(4) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 33
value = 1200

[State -1, Load Special Ammo (Electric Field)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = var(4) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 33
value = 1205

[State -1, Load Special Ammo (Overpowered Positron Shock)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = var(4) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 33
;OPTIONAL
value = 1210

[State -1, Hyper Fast Bullet]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = var(4) = 1
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1250

[State -1, Air Hyper Fast Bullet]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist y = [0,60])
triggerall = p2statetype != L
triggerall = var(4) = 1
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1255

[State -1, Electric Field]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = var(4) = 2
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1260

[State -1, Air Electric Field]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist y = [0,60])
triggerall = p2statetype != L
triggerall = var(4) = 2
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1265

[State -1, Overpowered Positron Shock]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = var(4) = 3
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1270

[State -1, Air Overpowered Positron Shock]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist y = [0,60])
triggerall = p2statetype != L
triggerall = var(4) = 3
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1275

[State -1, Hand Grenade (weak)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 110) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = numhelper(13000) = 0
triggerall = numhelper(13001) = 0
triggerall = numhelper(13002) = 0
triggerall = numhelper(13005) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1300

[State -1, Hand Grenade (medium)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 160) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
triggerall = numhelper(13000) = 0
triggerall = numhelper(13001) = 0
triggerall = numhelper(13002) = 0
triggerall = numhelper(13005) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1310

[State -1, Hand Grenade (strong)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 143) && (p2bodydist y = [-160,60])
triggerall = p2statetype != L
triggerall = numhelper(13000) = 0
triggerall = numhelper(13001) = 0
triggerall = numhelper(13002) = 0
triggerall = numhelper(13005) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1320

[State -1, Air Hand Grenade (weak)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist x <= 95) && (p2bodydist y >= 60)
triggerall = p2statetype != L
triggerall = numhelper(13050) = 0
triggerall = numhelper(13051) = 0
triggerall = numhelper(13060) = 0
triggerall = numhelper(13070) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1350

[State -1, Air Hand Grenade (medium)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist x <= 135) && (p2bodydist y >= 60)
triggerall = p2statetype != L
triggerall = numhelper(13050) = 0
triggerall = numhelper(13051) = 0
triggerall = numhelper(13060) = 0
triggerall = numhelper(13070) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1360

[State -1, Air Hand Grenade (strong)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype = A) && random<var(50)
triggerall = (p2bodydist x <= 180) && (p2bodydist y >= 60)
triggerall = p2statetype != L
triggerall = numhelper(13050) = 0
triggerall = numhelper(13051) = 0
triggerall = numhelper(13060) = 0
triggerall = numhelper(13070) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1370

[State -1, Plasma Sphere (weak)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 105) && (p2bodydist y = [-135,0])
triggerall = p2statetype != L
triggerall = numhelper(14000) = 0
triggerall = numhelper(14010) = 0
triggerall = numhelper(14020) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 18
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1400

[State -1, Plasma Sphere (medium)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 135) && (p2bodydist y = [-160,0])
triggerall = p2statetype != L
triggerall = numhelper(14000) = 0
triggerall = numhelper(14010) = 0
triggerall = numhelper(14020) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 20
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1410

[State -1, Plasma Sphere (strong)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000 && NumHelper(1001) = 0
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 105) && (p2bodydist y = [-200,0])
triggerall = p2statetype != L
triggerall = numhelper(14000) = 0
triggerall = numhelper(14010) = 0
triggerall = numhelper(14020) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 20
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = [200,499]
trigger2 = movehit && random<var(50)/12
value = 1420

[State -1, Shoulder Charge (weak)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 162) && (p2bodydist y = [-60,0])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1500

[State -1, Shoulder Charge Followup (weak)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = P2StateNo!=[120,155]
trigger1 = (stateno = 1500) && movehit && random<var(50)
value = 1510

[State -1, Shoulder Charge (medium)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 179) && (p2bodydist y = [-60,0])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1502

[State -1, Shoulder Charge Followup (medium)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = P2StateNo!=[120,155]
trigger1 = (stateno = 1502) && movehit && random<var(50)
value = 1515

[State -1, Shoulder Charge (strong)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
triggerall = (p2bodydist x <= 162) && (p2bodydist y = [-60,0])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movehit && random<var(50)/18
value = 1503

[State -1, Shoulder Charge Followup (strong)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<var(50)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = P2StateNo!=[120,155]
trigger1 = (stateno = 1503) && movehit && random<var(50)
value = 1520
;--------------[AI Hypers]--------------------------------------------------
[State -1, Positron Storm]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall =  power >= 1000
triggerall = (Statetype = S) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 10
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movehit && random<var(50)/12
trigger2 = stateno != 460
trigger3 = (stateno = [1300,1320]) || (stateno = [1400,1420])
trigger4 = (stateno = [1500,1520])
trigger4 = movehit && random<var(50)/9
trigger5 = stateno = 220
value = 4000

[State -1, Positron Storm (anti-air)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall =  power >= 1000
triggerall = (Statetype = S) && random<var(50)
triggerall = (p2bodydist y <= -60)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 10
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movehit && random<var(50)/12
trigger2 = stateno != 460
trigger3 = (stateno = [1300,1320]) || (stateno = [1400,1420])
trigger4 = (stateno = [1500,1520])
trigger4 = movehit && random<var(50)/9
trigger5 = stateno = 220
value = 4010

[State -1, Gunner Power]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall =  power >= 1000
triggerall = (Statetype = S) && random<var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 10
trigger1 = P2StateNo!=[120,155]
trigger1 = numproj = 0
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movehit && random<var(50)/12
trigger2 = stateno != 460
trigger3 = (stateno = [1300,1320]) || (stateno = [1400,1420])
trigger4 = (stateno = [1500,1520])
trigger4 = movehit && random<var(50)/9
trigger5 = stateno = 220
value = 4100

[State -1, Satellite Heat Assault]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(57) != 0)
triggerall =  power >= 1000
triggerall = (Statetype = S) && random<var(50)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 4
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movehit && random<var(50)/12
trigger2 = stateno != 460
trigger3 = (stateno = [1300,1320]) || (stateno = [1400,1420])
trigger4 = (stateno = [1500,1520])
trigger4 = movehit && random<var(50)/9
trigger5 = stateno = 220
value = 4200

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

;--------------------------------------------------------------------------------
[State -1, ƒNƒŠƒbƒvƒ{[ƒh]
type = DisplayToClipboard
trigger1 = 1
text = "Cancel=%d, Throw=%d, Button=%d, Body-Distance X=%d,Y=%d \n"
params = var(1),var(2),var(5),floor(P2BodyDist X),floor(P2BodyDist Y)

[State -1, ƒNƒŠƒbƒvƒ{[ƒhi’Ç‰Áê—pj]
type = AppendToClipboard
trigger1 = 1
text = "Position X=%d,Y=%d, Velocity X=%f,Y=%f, Hit=%d \n"
params = floor(Pos X),floor(Pos Y),(Vel X),(Vel Y),(MoveHit)