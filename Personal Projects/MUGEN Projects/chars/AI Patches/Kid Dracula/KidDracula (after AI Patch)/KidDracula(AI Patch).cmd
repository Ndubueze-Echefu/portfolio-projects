; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[command]
name = "RockPaperScissors"
command = D, DF, F, a+b
time = 15

[command]
name = "Jump&Pop"
command = D, DF, F, x+y
time = 15

[command]
name = "Parodius"
command = D, DF, F, c+z
time = 15

[command]
name = "VampireSoccer"
command = D, DB, B, a+b
time = 15

[command]
name = "TeleghoulForce"
command = D, DB, B, x+y
time = 15

[command]
name = "WAHNTHAC"
command = D, DB, B, c+z
time = 15

;-| Special Motions |------------------------------------------------------
[Command]
name = "RollFwd"
command = B, F
time = 10

[Command]
name = "RollBack"
command = F, B
time = 10

[Command]
name = "SuperJump"
command = ~D, U
time = 10

[command]
name = "SpinKick"
command = D, DF, F, a
time = 15

[command]
name = "Fireball"
command = D, DF, F, b
time = 15

[command]
name = "HomingProjectile"
command = D, DF, F, c
time = 15

[command]
name = "Bat"
command = D, DF, F, x
time = 15

[command]
name = "Iceball"
command = D, DF, F, y
time = 15

[command]
name = "Exploder"
command = D, DF, F, z
time = 15

[command]
name = "RandomHelpers"
command = D, DB, B, a
time = 15

[command]
name = "RandomHelpers"
command = D, DB, B, b
time = 15

[command]
name = "RandomHelpers"
command = D, DB, B, c
time = 15

[command]
name = "RandomHelpers"
command = D, DB, B, x
time = 15

[command]
name = "RandomHelpers"
command = D, DB, B, y
time = 15

[command]
name = "RandomHelpers"
command = D, DB, B, z
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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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
Trigger1=var(59)>0
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
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command!= "holddown"
trigger2 = Var(59) > 0
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
trigger1 = var(59)=0
trigger2 =!inguarddist
value = 140

;---------------------------------------------------------------------------
; Stand guard (guarding)
[Statedef 130]
type    = S
physics = S

[State 120]
Type=CtrlSet
Trigger1=var(59)>0
value=0

[State 130, 1]
type = ChangeAnim
trigger1 = Anim!= 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
trigger1 = var(59)=0
trigger2 = var(59)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = var(59)=0
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
Trigger1=var(59)>0
value=0

[State 131, 1]
type = ChangeAnim
trigger1 = Anim!= 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command!= "holddown"
trigger1 = var(59)=0
trigger2 = Var(59) > 0
trigger2 = p2statetype = A
trigger2 = abs(P2BodyDist X)=3
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = var(59)=0
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
Trigger1=var(59)>0
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
trigger1 = command = "holdback" || (var(59)>0)
trigger1 = inguarddist
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = var(59)=0
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
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command!= "holddown"
trigger2 = Var(59) > 0
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
trigger1 = var(59)=0
value = 1

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command!= "holddown"
trigger2 = Var(59) > 0
trigger2 = p2statetype = A
trigger2 = abs(P2BodyDist X)=3
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl =!var(59)

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
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command!= "holddown"
trigger2 = Var(59) > 0
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
trigger1 = var(59)=0
value = 1

[State 120, Hi to Lo]
type = StateTypeSet
triggerall = statetype = S
trigger1 = var(59)=0
trigger1 = command = "holddown"
trigger2 = var(59)>0
trigger2 = (abs(P2Dist X)>120) || (P2MoveType=H) || (P2StateType=C)
trigger2 = P2StateType!=A
trigger2 = AILevel>=3
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
triggerall = statetype = C
trigger1 = var(59)=0
trigger1 = command!= "holddown"
trigger2 = Var(59) > 0
trigger2 = p2statetype = A
trigger2 = abs(P2BodyDist X)=3
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl =!var(59)

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
trigger1 = var(59)=0
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
trigger1 = command = "holdback" || var(59)>0
trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52
;-----------------------------------------------------------------------------------------------------------------------------------
[Statedef -1]

[State -1, AI ON]  ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1 ; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0  ; it is on and
Trigger1=RoundState=3 && (stateno = 195 || lose) ; the player taunted OR lost
Trigger2=!IsHelper  ; OR if we are a player, but
Trigger2=AILevel=0  ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)= ifelse(AILevel = 1, 8, ifelse(AILevel = 2, 16, ifelse(AILevel = 3, 32, ifelse(AILevel = 4, 63, ifelse(AILevel = 5, 125, ifelse(AILevel = 6, 250, ifelse(AILevel = 7, 500, 1000)))))))


[State -1]; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

;-|-AI Setup (Props to Poyochan)-|-------------------------------------------------------------------
[State -1, Simul/Tag] 
Type = varset
triggerall = !ishelper
trigger1 = numenemy = 1
var(57) = 0
ignorehitpause = 1

[State -1, Simul/Tag]
Type = varset
triggerall = !ishelper
trigger1 = numenemy = 2
trigger1 = enemynear(0),alive
trigger1 = enemynear(1),alive
var(57) = IfElse(((Abs(Pos X - EnemyNear(0),Pos X)) < (Abs(Pos X - EnemyNear(1),Pos X))),0,1)
ignorehitpause = 1

[State -1, Simul/Tag]
Type = varset
triggerall = !ishelper
trigger1 = numenemy = 2
trigger1 = !enemynear(0),Alive || !enemynear(1),Alive
var(57) = IfElse(EnemyNear(0),Alive,0,1)
ignorehitpause = 1

[State -1, P2Bodydist X]
type = Null
triggerall = !ishelper
triggerall = 1||fvar(23):=facing*(enemynear(var(57)),pos x-(pos x+facing*(cond(statetype = A, const(size.air.front),const(size.ground.front)))))
trigger1 = enemynear(var(57)),facing != facing && fvar(23)>=0 || enemynear(var(57)),facing = facing && fvar(23)<0
trigger1 = 1||fvar(23):=(fvar(23)-cond(enemynear(var(57)),statetype = A, enemynear(var(57)),const(size.air.front), enemynear(var(57)),const(size.ground.front)))
trigger2 = 1||fvar(23):=(fvar(23)-cond(enemynear(var(57)),statetype = A, enemynear(var(57)),const(size.air.back), enemynear(var(57)),const(size.ground.back)))
ignorehitpause = 1

[State -1, P2Bodydist Y]
type = Null
triggerall = !ishelper
trigger1 = 1||fvar(24):=enemynear(var(57)),pos y-pos y
ignorehitpause = 1

;Remember: fvar(23) is x distance, while fvar(24) is y distance
;------------------[AI Commons]---------------------------------------------

[State -1, AI Throw]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2statetype != L) && (statetype = S) && random<=var(50) && (p2movetype != H)
trigger1 = (fvar(23) <= 9) && (fvar(24) = [-60,60]) 
trigger1 = enemynear, time >= 10
value = 800

[State -1, AI Jump]
type = ChangeState
triggerall = roundstate = 2 && (var(59) != 0)
triggerall = statetype != A && random<=var(50)
trigger1 = (fvar(23) <= 35) && (p2movetype = H) && (p2statetype = A) || (p2movetype !=H) && (p2statetype = A)
trigger1 = ctrl
value = 40

[State -1, AI Super Jump]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
;REQUIREMENTS
trigger1 = (stateno = 220) && movehit && random<=var(50)
trigger2 = (stateno = 420) && movehit && random<=var(50)
value = 7000

[state -1, AI Taunt: 😜]
type = ChangeState
triggerAll=(roundState=3) && (var(59) !=0)
triggerall = (win) && (stateno != 195) && (prevstateno != 195)
trigger1=(statetype = s) && (ctrl)
value = 195
;-----------------[AI Defense]----------------------------------------------
[State -1, AI Stand Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && random<var(50)
trigger1 = (statetype = S) && inguarddist
value = 130

[State -1, AI Crouch Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && random<var(50)
trigger1 = (statetype = C) && inguarddist
value = 131

[State -1, AI Air Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && random<var(50)
trigger1 = (statetype = A) && inguarddist
value = 132

[State -1, AI Dodge Forward]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (fvar(23) >= 167)
triggerall = (Ctrl) && (p2movetype = A) && random<var(50) && (statetype != A)
trigger1 =  inguarddist
trigger2 = (stateno = [130,131]) && time >= 180
value = 700

[State -1, AI Dodge Backwards]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (numproj = 0)
triggerall = (Ctrl) && (p2movetype = A) && random<var(50) && (statetype != A)
trigger1 =  inguarddist
trigger2 = (stateno = [130,131]) && time >= 180
value = 710

[State -1, AI Teleghoul Force (Counter Move)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (Power >= 2000)
triggerall = (Ctrl) && (p2movetype = A) && random<var(50) && (statetype != A)
triggerall = (numproj = 0) && (numhelper = 0)
trigger1 =  inguarddist
trigger2 = (stateno = [130,131])
value = 3400
;-----------------[AI Normals]----------------------------------------------
[State -1, AI Stand Light Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
triggerall = (fvar(23) = [0,25]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 6 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
value = 200

[State -1, AI Stand Medium Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
triggerall = (fvar(23) = [0,45]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 6 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/4
trigger3 = (stateno = 230) && movehit && random<=var(50)/4
trigger4 = (stateno = 400) && movehit && random<=var(50)/4
trigger5 = (stateno = 430) && movehit && random<=var(50)/4
value = 210

[State -1, AI Stand Strong Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
trigger1 = (fvar(23) = [0,45]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 6 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/4
trigger3 = (stateno = 230) && movehit && random<=var(50)/4
trigger4 = (stateno = 400) && movehit && random<=var(50)/4
trigger5 = (stateno = 430) && movehit && random<=var(50)/4
value = 220

[State -1, AI Stand Light Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
triggerall = (fvar(23) = [0,20]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 6 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)
value = 230

[State -1, AI Stand Medium Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
triggerall = (fvar(23) = [0,27]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/6
trigger3 = (stateno = 210) && movehit && random<=var(50)/6
trigger4 = (stateno = 230) && movehit && random<=var(50)/6
trigger5 = (stateno = 400) && movehit && random<=var(50)/6
trigger6 = (stateno = 410) && movehit && random<=var(50)/6
trigger7 = (stateno = 430) && movehit && random<=var(50)/6
value = 240

[State -1, AI Stand Heavy Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
triggerall = (fvar(23) = [0,75]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/8
trigger3 = (stateno = 210) && movehit && random<=var(50)/8
trigger4 = (stateno = 230) && movehit && random<=var(50)/8
trigger5 = (stateno = 240) && movehit && random<=var(50)/8
trigger6 = (stateno = 400) && movehit && random<=var(50)/8
trigger7 = (stateno = 410) && movehit && random<=var(50)/8
trigger8 = (stateno = 430) && movehit && random<=var(50)/8
trigger9 = (stateno = 440) && movehit && random<=var(50)/8
value = 250

[State -1, AI Crouch Light Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype =C) && random<=var(50)
triggerall = (fvar(23) = [0,24]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 4 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 ;Start Guarding
trigger1 = P2StateNo!= 131 && P2StateNo!= 152 && P2StateNo!= 153 ;Crouch Guarding
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/2
trigger3 = (stateno = 230) && movehit && random<=var(50)/2
value = 400

[State -1, AI Crouch Medium Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = C) && random<=var(50)
triggerall = (fvar(23) = [0,35]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 ;Start Guarding
trigger1 = P2StateNo!= 131 && P2StateNo!= 152 && P2StateNo!= 153 ;Crouch Guarding
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/4
trigger3 = (stateno = 230) && movehit && random<=var(50)/4
trigger4 = (stateno = 400) && movehit && random<=var(50)/4
trigger5 = (stateno = 430) && movehit && random<=var(50)/4
value = 410

[State -1, AI Crouch Heavy Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = C) && random<=var(50)
triggerall = (fvar(23) = [0,30]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/8
trigger3 = (stateno = 210) && movehit && random<=var(50)/8
trigger4 = (stateno = 230) && movehit && random<=var(50)/8
trigger5 = (stateno = 240) && movehit && random<=var(50)/8
trigger6 = (stateno = 400) && movehit && random<=var(50)/8
trigger7 = (stateno = 410) && movehit && random<=var(50)/8
trigger8 = (stateno = 430) && movehit && random<=var(50)/8
trigger9 = (stateno = 440) && movehit && random<=var(50)/8
value = 420

[State -1, AI Crouch Light Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = C) && random<=var(50)
triggerall = (fvar(23) = [0,25]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 8 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 ;Start Guarding
trigger1 = P2StateNo!= 131 && P2StateNo!= 152 && P2StateNo!= 153 ;Crouch Guarding
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/3
trigger3 = (stateno = 230) && movehit && random<=var(50)/3
trigger4 = (stateno = 400) && movehit && random<=var(50)/3
value = 430

[State -1, AI Crouch Medium Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = C) && random<=var(50)
triggerall = (fvar(23) = [0,35]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 ;Start Guarding
trigger1 = P2StateNo!= 131 && P2StateNo!= 152 && P2StateNo!= 153 ;Crouch Guarding
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/8
trigger3 = (stateno = 210) && movehit && random<=var(50)/8
trigger4 = (stateno = 220) && movehit && random<=var(50)/8
trigger5 = (stateno = 230) && movehit && random<=var(50)/8
trigger6 = (stateno = 240) && movehit && random<=var(50)/8
trigger7 = (stateno = 400) && movehit && random<=var(50)/8
trigger8 = (stateno = 410) && movehit && random<=var(50)/8
trigger9 = (stateno = 430) && movehit && random<=var(50)/8
value = 440

[State -1, AI Crouch Heavy Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = C) && random<=var(50)
triggerall = (fvar(23) = [0,30]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 20 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 ;Start Guarding
trigger1 = P2StateNo!= 131 && P2StateNo!= 152 && P2StateNo!= 153 ;Crouch Guarding
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/8
trigger3 = (stateno = 210) && movehit && random<=var(50)/8
trigger4 = (stateno = 230) && movehit && random<=var(50)/8
trigger5 = (stateno = 240) && movehit && random<=var(50)/8
trigger6 = (stateno = 400) && movehit && random<=var(50)/8
trigger7 = (stateno = 410) && movehit && random<=var(50)/8
trigger8 = (stateno = 430) && movehit && random<=var(50)/8
trigger9 = (stateno = 440) && movehit && random<=var(50)/8
value = 450

[State -1, AI Air Light Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (fvar(23) = [0,25]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 6 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = (stateno = 7000) && movehit && random<=var(50)
value = 600

[State -1, AI Air Medium Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (fvar(23) = [0,15]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/4
trigger3 = (stateno = 630) && movehit && random<=var(50)/4
trigger4 = (stateno = 660) && movehit && random<=var(50)/4
trigger5 = (stateno = 7000) && movehit && random<=var(50)/4
value = 610

[State -1, AI Air Heavy Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (fvar(23) = [0,45]) && (fvar(24) = [-96,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/5
trigger3 = (stateno = 610) && movehit && random<=var(50)/5
trigger4 = (stateno = 630) && movehit && random<=var(50)/5
trigger5 = (stateno = 640) && movehit && random<=var(50)/5
trigger6 = (stateno = 7000) && movehit && random<=var(50)/5
value = 620

[State -1, AI Air Light Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (fvar(23) = [0,25]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 6 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/2
trigger3 = (stateno = 7000) && movehit && random<=var(50)/2
value = 630

[State -1, AI Air Medium Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (fvar(23) = [0,20]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/4
trigger3 = (stateno = 610) && movehit && random<=var(50)/4
trigger4 = (stateno = 630) && movehit && random<=var(50)/4
trigger5 = (stateno = 7000) && movehit && random<=var(50)/4
value = 640

[State -1, AI Air Heavy Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (abs(enemynear, pos x - pos x) <= ((enemynear, pos y - pos y) * 0.54)) && (fvar(24) >= 10)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 10 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/6
trigger3 = (stateno = 610) && movehit && random<=var(50)/6
trigger4 = (stateno = 620) && movehit && random<=var(50)/6
trigger5 = (stateno = 630) && movehit && random<=var(50)/6
trigger6 = (stateno = 640) && movehit && random<=var(50)/6
trigger7 = (stateno = 7000) && movehit && random<=var(50)/6
value = 650
;-------------[AI Specials]-------------------------------------------------
[State -1, AI Umbrella]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random <= var(50)
triggerall = (fvar(23) = [0,150]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
value = 990

[State -1, AI Bat]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random <= var(50)
triggerall = (fvar(23) = [0,260]) && (fvar(24) = [ifelse(fvar(23) <= 130, -110, -60),60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 60 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = ((stateno = [200,250]) || (stateno = [400,450])) && movehit && random <= var(50)/12
value = 1000

[State -1, AI Bat Air]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random <= var(50)
triggerall = (abs(enemynear, pos x - pos x) <= ((enemynear, pos y - pos y) * 1.875))  && (fvar(24) >= 10)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 17 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
value = 1010

[State -1, AI Fireball]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random <= var(50)/3
triggerall = (fvar(24) = [-60,60])
triggerall = p2statetype != L
triggerall = numhelper(1101) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = ((stateno = [200,250]) || (stateno = [400,450])) && movehit && random <= var(50)/12
value = 1100

[State -1, AI Fireball Air]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random <= var(50)/3
triggerall = (fvar(24) = [-60,60])
triggerall = p2statetype != L
triggerall = numhelper(1101) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/7
trigger3 = (stateno = 610) && movehit && random<=var(50)/7
trigger4 = (stateno = 620) && movehit && random<=var(50)/7
trigger5 = (stateno = 630) && movehit && random<=var(50)/7
trigger6 = (stateno = 640) && movehit && random<=var(50)/7
trigger7 = (stateno = 650) && movehit && random<=var(50)/7
trigger8 = (stateno = 7000) && movehit && random<=var(50)/7
value = 1110

[State -1, AI Homing Projectile]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random <= var(50)
triggerall = p2statetype != L
triggerall = numhelper(1201) = 0
triggerall = numhelper(1202) = 0
triggerall = numhelper(1203) = 0
triggerall = numhelper(1204) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 25 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = ((stateno = [200,250]) || (stateno = [400,450])) && movehit && random <= var(50)/12
value = 1200

[State -1, AI Homing Projectile Air]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random <= var(50)
triggerall = p2statetype != L
triggerall = numhelper(1201) = 0
triggerall = numhelper(1202) = 0
triggerall = numhelper(1203) = 0
triggerall = numhelper(1204) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 25 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/7
trigger3 = (stateno = 610) && movehit && random<=var(50)/7
trigger4 = (stateno = 620) && movehit && random<=var(50)/7
trigger5 = (stateno = 630) && movehit && random<=var(50)/7
trigger6 = (stateno = 640) && movehit && random<=var(50)/7
trigger7 = (stateno = 650) && movehit && random<=var(50)/7
trigger8 = (stateno = 7000) && movehit && random<=var(50)/7
value = 1210

[State -1, AI Spin Kick]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random <= var(50)
triggerall = (fvar(23) = [0,260]) && (fvar(24) = [ifelse(fvar(23) <= 130, -85, -60),60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 12 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = ((stateno = [200,250]) || (stateno = [400,450])) && movehit && random <= var(50)/12
value = 1300

[State -1, AI Spin Kick Air]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random <= var(50)
triggerall = (abs(enemynear, pos x - pos x) <= ((enemynear, pos y - pos y) * 1.429))  && (fvar(24) >= 10)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 14 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/7
trigger3 = (stateno = 610) && movehit && random<=var(50)/7
trigger4 = (stateno = 620) && movehit && random<=var(50)/7
trigger5 = (stateno = 630) && movehit && random<=var(50)/7
trigger6 = (stateno = 640) && movehit && random<=var(50)/7
trigger7 = (stateno = 650) && movehit && random<=var(50)/7
trigger8 = (stateno = 7000) && movehit && random<=var(50)/7
value = 1310

[State -1, AI Iceball]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random <= var(50)/3
triggerall = (fvar(24) = [-60,60])
triggerall = p2statetype != L
triggerall = numhelper(1401) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = ((stateno = [200,250]) || (stateno = [400,450])) && movehit && random <= var(50)/12
value = 1400

[State -1, AI Iceball Air]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random <= var(50)/3
triggerall = (fvar(24) = [-60,60])
triggerall = p2statetype != L
triggerall = numhelper(1401) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/7
trigger3 = (stateno = 610) && movehit && random<=var(50)/7
trigger4 = (stateno = 620) && movehit && random<=var(50)/7
trigger5 = (stateno = 630) && movehit && random<=var(50)/7
trigger6 = (stateno = 640) && movehit && random<=var(50)/7
trigger7 = (stateno = 650) && movehit && random<=var(50)/7
trigger8 = (stateno = 7000) && movehit && random<=var(50)/7
value = 1110

[State -1, AI Exploder]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random <= var(50)/3
triggerall = (fvar(24) = [-60,60])
triggerall = p2statetype != L
triggerall = numhelper(1501) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = ((stateno = [200,250]) || (stateno = [400,450])) && movehit && random <= var(50)/12
value = 1500

[State -1, AI Exploder  Air]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random <= var(50)/3
triggerall = (fvar(24) = [-60,60])
triggerall = p2statetype != L
triggerall = numhelper(1501) = 0
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 15 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 600) && movehit && random<=var(50)/7
trigger3 = (stateno = 610) && movehit && random<=var(50)/7
trigger4 = (stateno = 620) && movehit && random<=var(50)/7
trigger5 = (stateno = 630) && movehit && random<=var(50)/7
trigger6 = (stateno = 640) && movehit && random<=var(50)/7
trigger7 = (stateno = 650) && movehit && random<=var(50)/7
trigger8 = (stateno = 7000) && movehit && random<=var(50)/7
value = 1510
;--------------[AI Assists]--------------------------------------------------
[State -1, AI Random Helper]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = !inguarddist && (fvar(23) >= 200)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 82
trigger1 = P2StateNo!=[120,155]
trigger1 = (numhelper(2001) = 0)
value = 2000
;--------------[AI Hypers]--------------------------------------------------
[State -1, AI Rock, Paper, Scissors!]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (fvar(23) = [0,123]) && (fvar(24) = [-60,60])
triggerall = p2statetype != L
triggerall = NumHelper(3001) = 0
triggerall = (power >= 1000)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 10 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno != [3000,3999]
trigger2 = stateno != 800
trigger2 = movehit && random<=var(50)/32
value = 3000

[State -1, AI Jump and Pop (Close Range)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (fvar(23) = [-15,35]) && (fvar(24) = [-100,60])
triggerall = p2statetype != L
triggerall = (power >= 1000)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 11 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno != [3000,3999]
trigger2 = stateno != [800,899]
trigger2 = movehit && random<=var(50)/32
value = 3100

[State -1, AI Jump and Pop (Full Range)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (fvar(23) = [-15,230]) && (fvar(24) = [-190,60])
triggerall = p2statetype != L
triggerall = (power >= 1000)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 11 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno != [3000,3999]
trigger2 = stateno != [800,899]
trigger2 = movehit && random<=var(50)/32
value = 3100

[State -1, AI Parodius]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (fvar(24) = [-60,60])
triggerall = p2statetype != L
triggerall = (power >= 2000)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 4 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno != [3000,3999]
trigger2 = stateno != [800,899]
trigger2 = movehit && random<=var(50)/32
value = 3200

[State -1, AI Vampire Soccer]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (fvar(24) = [-60,60])
triggerall = p2statetype != L
triggerall = NumHelper(3001) = 0
triggerall = NumHelper(3001) = 0
triggerall = (power >= 2000)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 33 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno != [3000,3999]
trigger2 = stateno != [800,899]
trigger2 = movehit && random<=var(50)/32
value = 3300

[State -1, AI What a Horrible Night to Have a Curse!]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (power >= 3000)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= (7) + (((lifemax - life) / lifemax) * 411)
;OPTIONAL
trigger2 = stateno != [3000,3999]
trigger2 = stateno != [800,899]
trigger2 = movehit && random<=var(50)/32
value = 3500
;===========================================================================
;---------------------------------------------------------------------------
;Rock Paper Scissors
[State -1, Rock Paper Scissors]
type = ChangeState
value = 3000
triggerall = numhelper(3001) = 0
triggerall = Power >= 1000
triggerall = command = "RockPaperScissors"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump & Pop
[State -1, Jump & Pop]
type = ChangeState
value = 3100
triggerall = Power >= 1000
triggerall = command = "Jump&Pop"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Parodius
[State -1, Parodius]
type = ChangeState
value = 3200
triggerall = Power >= 2000
triggerall = command = "Parodius"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Vampire Soccer
[State -1, Vampire Soccer]
type = ChangeState
value = 3300
triggerall = numhelper(2001) = 0
triggerall = numhelper(3310) = 0
triggerall = Power >= 2000
triggerall = command = "VampireSoccer"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Teleghoul Force
[State -1, Teleghoul Force]
type = ChangeState
value = 3400
triggerall = Power >= 2000
triggerall = command = "TeleghoulForce"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;---------------------------------------------------------------------------
;What a Horrible Night to Have a Curse
[State -1, What a Horrible Night to Have a Curse]
type = ChangeState
value = 3500
triggerall = Power >= 3000
triggerall = command = "WAHNTHAC"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3999)
trigger2 = movecontact

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [230,299]) || (stateno = [400,419]) || (stateno = [430,499])
trigger2 = movecontact
var(1) = 1

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(2) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,649])
trigger2 = movecontact
var(2) = 1

;---------------------------------------------------------------------------
;Umbrella
[State -1, Umbrella]
type = ChangeState
value = 990
triggerall = (stateno = 100) && command = "a"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Bat
[State -1, Bat]
type = ChangeState
value = 1000
triggerall = command = "Bat"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Bat Air
[State -1, Bat Air]
type = ChangeState
value = 1010
triggerall = command = "Bat"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Fireball
[State -1, Fireball]
type = ChangeState
value = 1100
triggerall = numhelper(1101) = 0
triggerall = command = "Fireball"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Fireball Air
[State -1, Fireball Air]
type = ChangeState
value = 1110
triggerall = numhelper(1101) = 0
triggerall = command = "Fireball"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Homing Projectile
[State -1, Homing Projectile]
type = ChangeState
value = 1200
triggerall = numhelper(1201) = 0
triggerall = numhelper(1202) = 0
triggerall = numhelper(1203) = 0
triggerall = numhelper(1204) = 0
triggerall = command = "HomingProjectile"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Homing Projectile Air
[State -1, Homing Projectile Air]
type = ChangeState
value = 1210
triggerall = numhelper(1201) = 0
triggerall = numhelper(1202) = 0
triggerall = numhelper(1203) = 0
triggerall = numhelper(1204) = 0
triggerall = command = "HomingProjectile"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;Spin Kick
[State -1, Spin Kick]
type = ChangeState
value = 1300
triggerall = command = "SpinKick"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Spin Kick Air
[State -1, Spin Kick Air]
type = ChangeState
value = 1310
triggerall = command = "SpinKick"
trigger1 = (statetype = a) && ctrl
trigger2 = var(2)

;---------------------------------------------------------------------------
;Iceball
[State -1, Iceball]
type = ChangeState
value = 1400
triggerall = numhelper(1401) = 0
triggerall = command = "Iceball"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Iceball Air
[State -1, Iceball Air]
type = ChangeState
value = 1410
triggerall = numhelper(1401) = 0
triggerall = command = "Iceball"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Exploder
[State -1, Exploder]
type = ChangeState
value = 1500
triggerall = numhelper(1501) = 0
triggerall = command = "Exploder"
trigger1 = (statetype = s) && ctrl
trigger2 = var(1)

;---------------------------------------------------------------------------
;Exploder Air
[State -1, Exploder Air]
type = ChangeState
value = 1510
triggerall = numhelper(1501) = 0
triggerall = command = "Exploder"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Random Helpers
[State -1, Random Helpers]
type = ChangeState
value = 2000
triggerall = numhelper(2001) = 0
triggerall = command = "RandomHelpers"
trigger1 = (statetype = s) && ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
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

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 700
triggerall = command = "RollFwd"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Roll Backward
[State -1, Roll Backward]
type = ChangeState
value = 710
triggerall = command = "RollBack"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------------------------------------
;Air Dash Forward
[State -1, Air Dash Forward]
type = ChangeState
value = 720
triggerall = command = "FF"
trigger1 = (statetype = a) && ctrl

;---------------------------------------------------------------------------
;Air Dash Backward
[State -1, Air Dash Backward]
type = ChangeState
value = 730
triggerall = command = "BB"
trigger1 = (statetype = a) && ctrl

;------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
trigger1 = Command = "SuperJump"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 220
trigger2 = (movecontact) && (command = "holdup")

;------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
trigger1 = Command = "SuperJump"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 420
trigger2 = (movecontact) && (command = "holdup")

;===========================================================================
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 240) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 660) && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 660) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact

;----------------------[ LIE DOWN RECOVERY ROLL]----------------------------------
[State -1, Lie Down Forward Recovery Roll]
type = ChangeState
value = 740
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
[State -1, Lie Down Backward Recovery Roll]
type = ChangeState
value = 750
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = stateno = 5120
trigger1 = alive = 1
;---------------------------------------------------------------------------

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