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
[Command]
name = "bmania"
command = ~D, D, D, x+y+z
time = 30

[Command]
name = "puzzlem"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "puzzlem"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "puzzlem"
command = ~D, DB, B, D, DB, B, z
time = 30

[Command]
name = "bubcombo"
command = ~D, DB, B, D, DF, F, x
time = 30

[Command]
name = "bubcombo"
command = ~D, DB, B, D, DF, F, y
time = 30

[Command]
name = "bubcombo"
command = ~D, DB, B, D, DF, F, z
time = 30

[Command]
name = "bustabub"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "bustabub"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "bustabub"
command = ~D, DF, F, D, DF, F, z
time = 30
;-| EX Motions |-----------------------------------------------------------
[Command]
name = "crushex"
command = ~B,F,x+y

[Command]
name = "crushex"
command = ~B,F,y+z

[Command]
name = "crushex"
command = ~B,F,x+z

[Command]
name = "stompex"
command = ~D,DB,B,x+y

[Command]
name = "stompex"
command = ~D,DB,B,y+z

[Command]
name = "stompex"
command = ~D,DB,B,x+z

[Command]
name = "danceex"
command = ~D,DB,B,x+y

[Command]
name = "danceex"
command = ~D,DB,B,y+z

[Command]
name = "danceex"
command = ~D,DB,B,x+z

[Command]
name = "headbuttex"
command = ~F,D,DF,x+y

[Command]
name = "headbuttex"
command = ~F,D,DF,y+z

[Command]
name = "headbuttex"
command = ~F,D,DF,x+z

[Command]
name = "buburpex"
command = ~D,DF,F,x+y

[Command]
name = "buburpex"
command = ~D,DF,F,y+z

[Command]
name = "buburpex"
command = ~D,DF,F,x+z

;-| Special Motions |------------------------------------------------------
[Command]
name = "crush"
command = ~B,F,x

[Command]
name = "crush"
command = ~B,F,y

[Command]
name = "crush"
command = ~B,F,z

[Command]
name = "rainbow"
command = ~D,D,a

[Command]
name = "thunder"
command = ~D,D,z

[Command]
name = "fire"
command = ~D,D,y

[Command]
name = "water"
command = ~D,D,x

[Command]
name = "stomp"
command = ~D,DB,B,x

[Command]
name = "stomp"
command = ~D,DB,B,y

[Command]
name = "stomp"
command = ~D,DB,B,z

[Command]
name = "dance"
command = ~D,DB,B,x

[Command]
name = "dance"
command = ~D,DB,B,y

[Command]
name = "dance"
command = ~D,DB,B,z

[Command]
name = "headbutt"
command = ~F,D,DF,x

[Command]
name = "headbutt"
command = ~F,D,DF,y

[Command]
name = "headbutt"
command = ~F,D,DF,z

[Command]
name = "buburpx"
command = ~D,DF,F,x

[Command]
name = "buburpy"
command = ~D,DF,F,y

[Command]
name = "buburpz"
command = ~D,DF,F,z
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
name = "recovery";Required (do not remove)
command = x+y
time = 1

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

[Command]
name = "holda" ;Required (do not remove)
command = /a
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

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

;=======================[AI TIME!!!]============================================
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
;[State -1, Simul/Tag] 
;Type = varset
;triggerall = !ishelper
;trigger1 = numenemy = 1
;var(57) = 0
;ignorehitpause = 1

;[State -1, Simul/Tag]
;Type = varset
;triggerall = !ishelper
;trigger1 = numenemy = 2
;trigger1 = enemynear(0),alive
;trigger1 = enemynear(1),alive
;var(57) = IfElse(((Abs(Pos X - EnemyNear(0),Pos X)) < (Abs(Pos X - EnemyNear(1),Pos X))),0,1)
;ignorehitpause = 1

;[State -1, Simul/Tag]
;Type = varset
;triggerall = !ishelper
;trigger1 = numenemy = 2
;trigger1 = !enemynear(0),Alive || !enemynear(1),Alive
;var(57) = IfElse(EnemyNear(0),Alive,0,1)
;ignorehitpause = 1

;[State -1, P2Bodydist X]
;type = Null
;triggerall = !ishelper
;triggerall = 1||p2bodydist y:=facing*(enemynear(var(57)),pos x-(pos x+facing*(cond(statetype = A, const(size.air.front),const(size.ground.front)))))
;trigger1 = enemynear(var(57)),facing != facing && fvar(23)>=0 || enemynear(var(57)),facing = facing && fvar(23)<0
;trigger1 = 1||fvar(23):=(fvar(23)-cond(enemynear(var(57)),statetype = A, enemynear(var(57)),const(size.air.front), enemynear(var(57)),const(size.ground.front)))
;trigger2 = 1||fvar(23):=(fvar(23)-cond(enemynear(var(57)),statetype = A, enemynear(var(57)),const(size.air.back), enemynear(var(57)),const(size.ground.back)))
;ignorehitpause = 1

;[State -1, P2Bodydist Y]
;type = Null
;triggerall = !ishelper
;trigger1 = 1||fvar(24):=enemynear(var(57)),pos y-pos y
;ignorehitpause = 1

;Remember: fvar(23) is x distance, while fvar(24) is y distance
;------------------[AI Commons]---------------------------------------------
[State -1, AI Jump]
type = ChangeState
triggerall = roundstate = 2 && (var(59) != 0)
triggerall = statetype != A && random<=var(50)
trigger1 = (p2movetype = H) && (p2statetype = A) || (p2movetype !=H) && (p2statetype = A)
trigger1 = ctrl
;OR if there's bubbles to pop! 👉🫧
trigger2 = (NumHelper(1351) = 1) && (prevstateno != 40)
trigger3 = NumHelper(1352) = 1 && (prevstateno != 40)
trigger4 = NumHelper(1353) = 1 && (prevstateno != 40)
trigger5 = NumHelper(1354) = 1 && (prevstateno != 40)
value = 40


[state -1, AI Taunt: "Meep, meep, meep! 😜"]
type = ChangeState
triggerAll=(roundState=3) && (var(59) !=0)
triggerall = (win) && (stateno != 195) && (prevstateno != 195)
trigger1=(statetype = s) && (ctrl)
value = 195
;-----------------[AI Defense]----------------------------------------------
[State -1, AI Stand Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A)
trigger1 = (statetype = S) && inguarddist
value = 130

[State -1, AI Crouch Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A)
trigger1 = (statetype = C) && inguarddist
value = 131

[State -1, AI Air Guard]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A)
trigger1 = (statetype = A) && inguarddist
value = 132

[State -3, AI Dodge Forward]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && var(50) && (statetype != A)
trigger1 = inguarddist
trigger2 = (stateno = [130,131]) && time >= 180
value = 255

[State -3, AI Dodge Backwards]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && var(50) && (statetype != A)
trigger1 = inguarddist && (numproj = 0)
trigger2 = (stateno = [130,131]) && time >= 180
value = 256
;-----------------[AI Normals]----------------------------------------------
[State -1, AI Stand Weak Attack]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
triggerall = (p2bodydist x = [0,25]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
value = 200

[State -1, AI Stand Medium Attack]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
triggerall = (p2bodydist x = [0,45]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)
value = 210

[State -1, AI Stand Strong Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
trigger1 = (p2bodydist x = [0,46]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 11 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = (stateno = 200) && movehit && random<=var(50)/2
trigger3 = (stateno = 210) && movehit && random<=var(50)/2
value = 220

[State -1, AI Stand Special Attack]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = S) && random<=var(50)
triggerall = (p2bodydist x = [0,86]) && (p2bodydist y = [-75,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
value = 230

[State -1, AI Crouch Light Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype =C) && random<=var(50)
triggerall = (p2bodydist x = [0,25]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 ;Start Guarding
trigger1 = P2StateNo!= 131 && P2StateNo!= 152 && P2StateNo!= 153 ;Crouch Guarding
value = 400

[State -1, AI Crouch Medium Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype =C) && random<=var(50)
triggerall = (p2bodydist x = [0,30]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 ;Start Guarding
trigger1 = P2StateNo!= 131 && P2StateNo!= 152 && P2StateNo!= 153 ;Crouch Guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/2
trigger3 = stateno = 400
trigger3 = movehit && random<=var(50)/2
value = 410

[State -1, AI Crouch Strong Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype =C) && random<=var(50)
triggerall = (p2bodydist x = [0,25]) && (p2bodydist y = [-75,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 10 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 ;Start Guarding
trigger1 = P2StateNo!= 131 && P2StateNo!= 152 && P2StateNo!= 153 ;Crouch Guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/4
trigger3 = stateno = 400
trigger3 = movehit && random<=var(50)/4
trigger4 = stateno = 210
trigger4 = movehit && random<=var(50)/4
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/4
value = 420

[State -1, AI Bubble Mine]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype =C) && random<=var(50)
triggerall = (!inguarddist)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21 || (enemynear, statetype = A && enemynear, movetype = H)
value = 430

[State -1, AI Jumping Light Punch]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,22]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
value = 600

[State -1, AI Jumping Medium Attack]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,30]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)
value = 610

[State -1, AI Jumping Strong Attack]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,15]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/2
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/2
value = 620

[State -1, AI Throw]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2statetype != L) && (statetype = S) && random<=var(50) && (p2movetype != H)
trigger1 = (p2bodydist x <= 40) && (p2bodydist y = [-60,60]) 
trigger1 = enemynear, time >= 1
value = 800
;-------------[AI Specials]-------------------------------------------------
[State -1, AI Bubble Burp Light]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,75]) && (p2bodydist y <= 0)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1000

[State -1, AI Bubble Burp Medium]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,130]) && (p2bodydist y <= 0)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1010

[State -1, AI Bubble Burp Hard]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,195]) && (p2bodydist y <= 0)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1020

[State -1, AI Bubble Burp EX]
;ACTIVATION
type = ChangeState
triggerall = (power >= 500); EX Requirement
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,195]) && (p2bodydist y <= 0)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1025

[State -1, AI Air Bubble Burp Light]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,75]) && (p2bodydist y <= 0)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1030

[State -1, AI Air Bubble Burp Medium]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,130]) && (p2bodydist y <= 0)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1040

[State -1, AI Air Bubble Burp Hard]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,195]) && (p2bodydist y <= 0)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1050

[State -1, AI Air Bubble Burp EX]
;ACTIVATION
type = ChangeState
triggerall = (power >= 500); EX Requirement
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,195]) && (p2bodydist y <= 0)
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 21 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1055

[State -1, AI Bubble Headbutt Weak]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 1); Indicator for weak version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,20]) && (p2bodydist y = [-16,0])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1060

[State -1, AI Bubble Headbutt Medium]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 2); Indicator for medium version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,52]) && (p2bodydist y = [-42.25,0])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1060

[State -1, AI Bubble Headbutt Strong]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 3); Indicator for strong version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,96]) && (p2bodydist y = [-64,0])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1060

[State -1, AI Bubble Headbutt EX]
;ACTIVATION
type = ChangeState
triggerall = (power >= 500); EX Requirement
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,126]) && (p2bodydist y = [-81,0])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 13 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 122 && P2StateNo!= 132 && P2StateNo!= 142 && P2StateNo!= 152 ;Not air guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1065

[State -1, AI Bubble Dance Weak]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 1); Indicator for weak version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,75]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 121 && P2StateNo!= 131 && P2StateNo!= 141 && P2StateNo!= 151 ;Not crouch guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1100

[State -1, AI Bubble Dance Medium]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 2); Indicator for medium version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,205]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 121 && P2StateNo!= 131 && P2StateNo!= 141 && P2StateNo!= 151 ;Not crouch guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1100

[State -1, AI Bubble Dance Strong]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 3); Indicator for strong version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,255]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 121 && P2StateNo!= 131 && P2StateNo!= 141 && P2StateNo!= 151 ;Not crouch guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1100

[State -1, AI Bubble Dance EX]
;ACTIVATION
type = ChangeState
triggerall = (power >= 500); EX Requirement
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,70]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 121 && P2StateNo!= 131 && P2StateNo!= 141 && P2StateNo!= 151 ;Not crouch guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1105

[State -1, AI Bubble Stomp]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [-6,6]) && (p2bodydist y >= -5)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 4 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1200

[State -1, AI Bubble Stomp EX]
;ACTIVATION
type = ChangeState
triggerall = (power >= 500); EX Requirement
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [-6,6]) && (p2bodydist y >= -5)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 9 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1250

[State -1, AI Bubble Crush Weak]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 1); Indicator for weak version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,160]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1500

[State -1, AI Bubble Crush Weak (Air)]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 1); Indicator for weak version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,160]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1505

[State -1, AI Bubble Crush Medium]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 2); Indicator for medium version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,180]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1500

[State -1, AI Bubble Crush Medium (Air)]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 2); Indicator for Medium version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,180]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1505

[State -1, AI Bubble Crush Strong]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 3); Indicator for strong version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,200]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1500

[State -1, AI Bubble Crush Strong (Air)]
;ACTIVATION
type = ChangeState
triggerall = (var(11) = 3); Indicator for strong version
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,200]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1505

[State -1, AI Bubble Crush EX]
;ACTIVATION
type = ChangeState
triggerall = (power >= 500); EX Requirement
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,240]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/6
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/6
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/6
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/6
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/6
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/6
value = 1550

[State -1, AI Bubble Crush EX (Air)]
;ACTIVATION
type = ChangeState
triggerall = (power >= 500); EX Requirement
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype = A) && random<=var(50)
triggerall = (p2bodydist x = [0,240]) && (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 7 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 600
trigger2 = movehit && random<=var(50)/3
trigger3 = stateno = 610
trigger3 = movehit && random<=var(50)/3
trigger4 = stateno = 620
trigger4 = movehit && random<=var(50)/3
value = 1555

[State -1, AI Bubble Summon (Water 💧)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 35 || (enemynear, statetype = A && enemynear, movetype = H)
value = 1300

[State -1, AI Bubble Summon (Fire 🔥)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 35 || (enemynear, statetype = A && enemynear, movetype = H)
value = 1310

[State -1, AI Bubble Summon (Thunder ⚡)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 35 || (enemynear, statetype = A && enemynear, movetype = H)
value = 1320

[State -1, AI Bubble Summon (Rainbow 🌈)]
;ACTIVATION
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 35 || (enemynear, statetype = A && enemynear, movetype = H)
value = 1330
;--------------[AI Hypers]--------------------------------------------------
[State -1, AI Bust a Bubble]
;ACTIVATION
type = ChangeState
triggerall = (power >= 1000); Level 1!
triggerall = NumHelper(3005) = 0
triggerall = NumHelper(3006) = 0
triggerall = NumHelper(3010) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [0,215]) && (p2bodydist y <= 0)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 6 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/10
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/10
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/10
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/10
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/10
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/10
trigger8 = stateno = 1000 && random<=var(50)/10
trigger9 = stateno = 1010 && random<=var(50)/10
trigger10 = stateno = 1020 && random<=var(50)/10
trigger11 = stateno = 1025 && random<=var(50)/10
value = 3000

[State -1, AI Bubble Combo]
;ACTIVATION
type = ChangeState
triggerall = (power >= 1000); Level 1!
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist y = [-60,60])
triggerall = p2statetype != L
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 4 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!= 120 && P2StateNo!= 130 && P2StateNo!= 140 && P2StateNo!= 150 ; not stand guarding
trigger1 = P2StateNo!= 121 && P2StateNo!= 131 && P2StateNo!= 141 && P2StateNo!= 151 ;Not crouch guarding
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/11
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/11
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/11
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/11
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/11
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/11
trigger8 = stateno = 1000 && random<=var(50)/11
trigger9 = stateno = 1010 && random<=var(50)/11
trigger10 = stateno = 1020 && random<=var(50)/11
trigger11 = stateno = 1025 && random<=var(50)/11
trigger12 = stateno = 1100
trigger12 = movehit && random<=var(50)/11
value = 3050

[State -1, AI Puzzle Madness]
;ACTIVATION
type = ChangeState
triggerall = (power >= 1000); Level 1!
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
triggerall = (p2bodydist x = [-120,120]) && (p2bodydist y <= 0)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 5 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
;OPTIONAL
trigger2 = stateno = 200
trigger2 = movehit && random<=var(50)/10
trigger3 = stateno = 210
trigger3 = movehit && random<=var(50)/10
trigger4 = stateno = 400
trigger4 = movehit && random<=var(50)/10
trigger5 = stateno = 410
trigger5 = movehit && random<=var(50)/10
trigger6 = stateno = 220
trigger6 = movehit && random<=var(50)/10
trigger7 = stateno = 420
trigger7 = movehit && random<=var(50)/10
trigger8 = stateno = 1000 && random<=var(50)/10
trigger9 = stateno = 1010 && random<=var(50)/10
trigger10 = stateno = 1020 && random<=var(50)/10
trigger11 = stateno = 1025 && random<=var(50)/10
value = 3100

[State -1, AI Bubble Mania]
;ACTIVATION
type = ChangeState
triggerall = (power >= 3000); Level 3!
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Statetype != A) && random<=var(50)
;REQUIREMENTS
trigger1 = ctrl
trigger1 = enemynear, time >= 35 || (enemynear, statetype = A && enemynear, movetype = H)
trigger1 = P2StateNo!=[120,155]
value = 3300
;===========================================================================



;========================[END OF AI]============================================

;---------------------------------------------------------------------------
;Bubble Mania
[State -1]
type = ChangeState
value = 3300
triggerall = command = "bmania"
triggerall = power  >= 3000
triggerall = statetype != A
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Puzzle Madness
[State -1]
type = ChangeState
value = 3100
triggerall = command = "puzzlem"
triggerall = power  >= 1000
triggerall = statetype != A
triggerall = NumHelper(3005) = 0
triggerall = NumHelper(3006) = 0
triggerall = NumHelper(3010) = 0
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 1000
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 1025
;---------------------------------------------------------------------------
;Bubble Combo
[State -1]
type = ChangeState
value = 3050
triggerall = command = "bubcombo"
triggerall = power  >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 1000
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 1025
trigger12 = stateno = 1100
trigger12 = movecontact
;---------------------------------------------------------------------------
;Bust a Bubble
[State -1]
type = ChangeState
value = 3000
triggerall = command = "bustabub"
triggerall = power  >= 1000
triggerall = statetype != A
triggerall = NumHelper(3005) = 0
triggerall = NumHelper(3006) = 0
triggerall = NumHelper(3010) = 0
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 1000
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 1025
;---------------------------------------------------------------------------
;Bubble Summon (rainbow)
[State -1]
type = ChangeState
value = 1330
triggerall = command = "rainbow"
triggerall = statetype != A
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Bubble Summon (thunder)
[State -1]
type = ChangeState
value = 1320
triggerall = command = "thunder"
triggerall = statetype != A
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Bubble Summon (fire)
[State -1]
type = ChangeState
value = 1310
triggerall = command = "fire"
triggerall = statetype != A
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Bubble Summon (water)
[State -1]
type = ChangeState
value = 1300
triggerall = command = "water"
triggerall = statetype != A
triggerall = NumHelper(444) = 0
triggerall = NumHelper(1351) = 0
triggerall = NumHelper(1352) = 0
triggerall = NumHelper(1353) = 0
triggerall = NumHelper(1354) = 0
triggerall = NumHelper(1356) = 0
triggerall = NumHelper(1357) = 0
triggerall = NumHelper(1366) = 0
triggerall = NumHelper(1386) = 0
triggerall = NumProj = 0
trigger1 = ctrl
;-----------------------------------------------------------------------------
;Ex Air Bubble Crush
[State -1]
type = ChangeState
value = 1555
triggerall = command = "crushex"
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
; Ex Bubble Crush
[State -1]
type = ChangeState
value = 1550
triggerall = command = "crushex"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Ex Bubble Stomp
[State -1]
type = ChangeState
value = 1250
triggerall = command = "stompex"
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact

; Ex Bubble Dance
[State -1]
type = ChangeState
value = 1105
triggerall = command = "danceex"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;---------------------------------------------------------------------------
; Ex Bubble Headbutt
[State -1]
type = ChangeState
value = 1065
triggerall = command = "headbuttex"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
;Ex Air Bubble Burp
[State -1]
type = ChangeState
value = 1055
triggerall = command = "buburpex"
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
;-----------------------------------------------------------------------------
;Ex Bubble Burp
[State -1]
type = ChangeState
value = 1025
triggerall = command = "buburpex"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
; Air Bubble Crush
[State -1]
type = ChangeState
value = 1505
triggerall = command = "crush"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
;-----------------------------------------------------------------------------
; Bubble Crush
[State -1]
type = ChangeState
value = 1500
triggerall = command = "crush"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
; Bubble Stomp
[State -1]
type = ChangeState
value = 1200
triggerall = command = "stomp"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
;-----------------------------------------------------------------------------
; Bubble Dance
[State -1]
type = ChangeState
value = 1100
;triggerall = !numhelper
triggerall = command = "dance"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
; Bubble Headbutt
[State -1]
type = ChangeState
value = 1060
triggerall = command = "headbutt"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
; Air Bubble Burp 3
[State -1]
type = ChangeState
value = 1030
triggerall = command = "buburpx"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
;-----------------------------------------------------------------------------
; Air Bubble Burp 2
[State -1]
type = ChangeState
value = 1040
triggerall = command = "buburpy"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
;-----------------------------------------------------------------------------
; Air Bubble Burp 1
[State -1]
type = ChangeState
value = 1050
triggerall = command = "buburpz"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
;-----------------------------------------------------------------------------
; Bubble Burp 1
[State -1]
type = ChangeState
value = 1000
;triggerall = !numhelper
triggerall = command = "buburpx"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
; Bubble Burp 2
[State -1]
type = ChangeState
value = 1010
;triggerall = !numhelper
triggerall = command = "buburpy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;-----------------------------------------------------------------------------
; Bubble Burp 3
[State -1]
type = ChangeState
value = 1020
;triggerall = !numhelper
triggerall = command = "buburpz"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
;---------------------------------------------------------------------------
;Bubble Float
[State -1, Fly]
type = ChangeState
value = 970
triggerall = !var(58)
triggerall = command = "a"
triggerall = stateno != 971
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 972
trigger1 = stateno != 973

;Bubble Float Forward
[State -1, Float F]
type = ChangeState
value = 972
triggerall = command = "holdfwd"
trigger1 = statetype = A
trigger1 = stateno = 971

;Bubble Float Backward
[State -1, Float B]
type = ChangeState
value = 973
triggerall = command = "holdback"
trigger1 = statetype = A
trigger1 = stateno = 971

;Bubble Float End
[State -1, Float End]
type = ChangeState
value = 974
triggerall = command = "holddown"
triggerall = statetype = A
triggerall = movetype != H
trigger1 = stateno = 971
trigger2 = stateno = 972
trigger3 = stateno = 973

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(58)
triggerall = command = "y" && command = "z" || command = "c"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = !var(58)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Backward Dodge
[State -1]
type = ChangeState
value = 256
triggerall = !var(58)
triggerall = command = "x" && command = "y" || command = "b"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Forward Dodge 
[State -1]
type = ChangeState
value = 255
triggerall = !var(58)
triggerall = command = "x" && command = "y" || command = "b"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_Weak_Attack
[State -1]
type = ChangeState
value = 200
triggerall = !var(58)
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand_Medium_Attack
[State -1]
type = ChangeState
value = 210
triggerall = !var(58)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
;trigger3 = stateno = 400
;trigger3 = movecontact
;---------------------------------------------------------------------------
;Stand_Strong_Attack
[State -1]
type = ChangeState
value = 220
triggerall = !var(58)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;---------------------------------------------------------------------------
;Stand_Special_Attack
[State -1]
type = ChangeState
value = 230
triggerall = !var(58)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = NumHelper(235) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouch_Light_Attack
[State -1]
type = ChangeState
value = 400
triggerall = !var(58)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouch_Medium_Attack
[State -1]
type = ChangeState
value = 410
triggerall = !var(58)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
;---------------------------------------------------------------------------
;Crouch_Strong_Attack
[State -1]
type = ChangeState
value = 420
triggerall = !var(58)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
;---------------------------------------------------------------------------
;Crouch_Special_Attack
[State -1]
type = ChangeState
value = 430
triggerall = !var(58)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump_Light_Punch
[State -1]
type = ChangeState
value = 600
triggerall = !var(58)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump_Hard_Punch
[State -1]
type = ChangeState
value = 610
triggerall = !var(58)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
;--------------------------------------------------------------------------
;Jump_Light_Kick
[State -1]
type = ChangeState
value = 620
triggerall = !var(58)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
;--------------------------------------------------------------------------

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