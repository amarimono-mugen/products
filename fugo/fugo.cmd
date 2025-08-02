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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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

;---| 押しっぱ |---------------------------------------------------------------
[Command]
name = "holdx"	  
command = /x
time = 1

[Command]
name = "holdy"	  
command = /y
time = 1

[Command]
name = "holdz"	  
command = /z
time = 1

[Command]
name = "holda"	   
command = /a
time = 1
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "x+y+z"
command = x+y+z

[Command]
name = "x+y+a+b"
command = x+y+a+b

[Command]
name = "z+a"
command = z+a
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+a"
command = y+a
time = 1

[Command]
name = "b+a"
command = b+a
time = 1
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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "syutugen"
command = ~D, DF, F, a

[Command]
name = "ryaku"
command = ~D, DF, F, b

[Command]
name = "ryaku2"
command = ~D, DB, B, b

[Command]
name = "ryaku3"
command = ~B, DB, D, DF, F, b

[Command]
name = "sin"
command = ~B, DB, D, DF, F, x+y

[Command]
name = "kurawasero"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "tandem"
command = ~D, B, a
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "sp1"
command = ~B, DB, D, DF, F, x

[Command]
name = "sp2"
command = ~B, DB, D, DF, F, y

[Command]
name = "sp3"
command = ~B, DB, D, DF, F, z

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "hattari"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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

[Command]
name = "xyz";Required (do not remove)
command = x+y+z
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

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upc"
command = ~$U ;$上を放したとき
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
name = "holda"
command = /$a
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
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
;===========================================================================
;真ウィルスon
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 13100
triggerall = var(56) >= 1
triggerall = numhelper(10011) = 0
triggerall = var(49) = 10000
triggerall = command = "sin" || command = "ryaku3"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
;===========================================================================
;喰らわせろ！on
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 13050
triggerall = var(56) >= 3
triggerall = numhelper(10011) = 0
triggerall = var(49) = 10000
triggerall = command = "kurawasero" || command = "ryaku2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl

;喰らわせろ！
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = var(56) >= 3
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = numhelper(2) = 0
triggerall = command = "kurawasero" || command = "ryaku2"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ド低脳がッ！ on
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 13000
triggerall = var(49) = 10000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10210) && movecontact
trigger3 = (stateno = 10212) && movecontact
trigger4 = (stateno = 10215) && movecontact
trigger5 = (stateno = 10420) && movecontact
trigger6 = (stateno = 10422) && movecontact
trigger7 = (stateno = 10425) && movecontact
trigger8 = (stateno = 11050) && time > 15

;ド低脳がッ！ on
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 13000
triggerall = var(49) = 10000
triggerall = command = "ryaku"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10210) && movecontact
trigger3 = (stateno = 10212) && movecontact
trigger4 = (stateno = 10215) && movecontact
trigger5 = (stateno = 10420) && movecontact
trigger6 = (stateno = 10422) && movecontact
trigger7 = (stateno = 10425) && movecontact
trigger8 = (stateno = 11050) && time > 15

;ド低脳がッ！
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 
trigger3 = (stateno = 210) && time > 8
trigger4 = (stateno = 215) && movehit

;ド低脳がッ！B
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "ryaku"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 
trigger3 = (stateno = 210) && time > 8
trigger4 = (stateno = 215) && movehit
;---------------------------------------------------------------------------
[State -1, デム];スタンドoff
type = ChangeState
value = 3900
triggerall = numhelper(4657) = 0
triggerall = numhelper(2) = 0
triggerall = command = "tandem"
triggerall = power >= 1000
triggerall = var(43) = 0  
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = NumHelper(2) = 0 
trigger1 = numhelper(11011) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = numhelper(11011) = 0
trigger2 = (stateno = 200) && time > 5 
trigger3 = (stateno = 210) && time > 9
trigger4 = (stateno = 212) && movecontact
trigger5 = (stateno = 245) && movecontact

[State -1, デム];スタンドon
type = ChangeState
value = 3900
triggerall = stateno != 14000
triggerall = var(43) = 0  
triggerall = numhelper(4657) = 0
triggerall = command = "tandem"
triggerall = power >= 1000
triggerall = var(49) = 10000  ;スタンドonの時
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(11010) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = movecontact
trigger3 = (stateno = 11050) && time > 15
;===========================================================================
;Strong Kung Fu Upper
;違うね！ ON
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 11200
triggerall = var(49) = 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "sp1"
trigger1 = ctrl
trigger2 = (stateno = 10210) && movecontact
trigger3 = (stateno = 11050) && time > 15

;違うね！
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1200
triggerall = numhelper(4657) = 0
triggerall = numhelper(2) = 0
triggerall = var(29) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "sp1"
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 
trigger3 = (stateno = 210) && time > 9

;Strong Kung Fu Upper
;違うね！B
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1200
triggerall = numhelper(4657) = 0
triggerall = numhelper(2) = 0
triggerall = var(29) = 0
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall = command = "sp1"
trigger1 = (stateno = 245) && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;違うね！2 ON
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 11210
triggerall = var(49) = 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "sp2"
trigger1 = ctrl
trigger2 = (stateno = 10210) && movecontact
trigger3 = (stateno = 11050) && time > 15

;違うね！2
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1210
triggerall = numhelper(4657) = 0
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = var(29) = 0
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "sp2"
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 
trigger3 = (stateno = 210) && time > 9

;Strong Kung Fu Upper
;違うね！2B
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1210
triggerall = numhelper(4657) = 0
triggerall = numhelper(2) = 0
triggerall = var(29) = 0
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall = command = "sp2"
trigger1 = (stateno = 245) && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;違うね！3 ON
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 11220
triggerall = var(49) = 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "sp3"
trigger1 = ctrl
trigger2 = (stateno = 10210) && movecontact
trigger3 = (stateno = 11050) && time > 15

;違うね！3
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1220
triggerall = numhelper(4657) = 0
triggerall = numhelper(2) = 0
triggerall = var(29) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "sp3"
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 
trigger3 = (stateno = 210) && time > 9

;Strong Kung Fu Upper
;違うね！3B
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1220
triggerall = numhelper(4657) = 0
triggerall = numhelper(2) = 0
triggerall = var(29) = 0
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall = command = "sp3"
trigger1 = (stateno = 245) && movecontact
;---------------------------------------------------------------------------
;ヘイズ対空 on　弱
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 11100
triggerall = var(56) >= 1
triggerall = power >= 500
triggerall = numhelper(10011) = 0
triggerall = numhelper(2) = 0
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "upper_x"
trigger1 = ctrl
trigger2 = (stateno = 10410) && movecontact
trigger3 = (stateno = 10412) && movecontact

;ヘイズ対空 on 中
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 11110
triggerall = var(56) >= 1
triggerall = power >= 500
triggerall = numhelper(10011) = 0
triggerall = numhelper(2) = 0
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall= command = "upper_y"
trigger1 = ctrl
trigger2 = (stateno = 10410) && movecontact
trigger3 = (stateno = 10412) && movecontact

;ヘイズ対空 on　強
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 11120
triggerall = var(56) >= 1
triggerall = power >= 500
triggerall = numhelper(10011) = 0
triggerall = numhelper(2) = 0
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "upper_z"
trigger1 = ctrl
trigger2 = (stateno = 10410) && movecontact
trigger3 = (stateno = 10412) && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;ヘイズ対空
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = var(56) >= 1
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = ctrl
;---------------------------------------------------------------------------
;殺人ウィルス3
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1000
triggerall = var(56) >= 1
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = ctrl
trigger2 = (stateno = 245) && movecontact

;殺人ウィルスair
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1500
triggerall = var(56) >= 1
triggerall = numhelper(2) = 0
triggerall = var(49) = 0
triggerall = statetype = A
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
triggerall = numhelper(11011) = 0
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 640

;Strong Kung Fu Upper
;殺人ウィルスB3
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1000
triggerall = var(56) >= 1
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = 245) && movecontact
trigger2 = (stateno = 410) && movecontact

;殺人ウィルス3ＯＮ
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 11000
triggerall = power >= 500
triggerall = var(56) >= 1
triggerall = numhelper(10011) = 0
triggerall = numhelper(2) = 0
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = ctrl

;殺人ウィルス（ハッタリ）ＯＮ
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 11050
triggerall = numhelper(10011) = 0
triggerall = numhelper(2) = 0
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "hattari"
trigger1 = ctrl

;殺人ウィルスairＯＮ
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 11500
triggerall = power >= 500
triggerall = var(56) >= 1
triggerall = numhelper(11011) = 0
triggerall = numhelper(2) = 0
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = ctrl
trigger2 = stateno = 10600 || stateno = 10610 || stateno = 10620
;---------------------------------------------------------------------------
;つかんだ！ON
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 11300
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "QCB_x"
triggerall = numhelper(11308) = 0
trigger1 = ctrl
trigger2 = (stateno = 10210) && time > movecontact
trigger3 = (stateno = 11050) && time > 15

;つかんだ！
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1300
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "QCB_x"
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 
trigger3 = (stateno = 210) && time > 9
trigger4 = (stateno = 245) && movecontact
;---------------------------------------------------------------------------
;つかんだ！中ON
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 11300
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "QCB_y"
triggerall = numhelper(11308) = 0
trigger1 = ctrl
trigger2 = (stateno = 10210) && time > movecontact
trigger3 = (stateno = 11050) && time > 15

;つかんだ！中
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1300
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "QCB_y"
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 
trigger3 = (stateno = 210) && time > 9
trigger4 = (stateno = 245) && movecontact
;---------------------------------------------------------------------------
;つかんだ！強ON
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 11300
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "QCB_z"
triggerall = numhelper(11308) = 0
trigger1 = ctrl
trigger2 = (stateno = 10210) && time > movecontact
trigger3 = (stateno = 11050) && time > 15

;つかんだ！強
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1300
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = statetype != A
triggerall = command = "QCB_z"
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 
trigger3 = (stateno = 210) && time > 9
trigger4 = (stateno = 245) && movecontact
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = numhelper(2) = 0
triggerall = statetype != A
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = 151 || stateno = 153)
;---------------------------------------------------------------------------
;ガーキャンS
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = 151 || stateno = 153)
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;投げ　on
[State -1, Kung Fu Throw]
type = ChangeState
value = 10900
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(49) = 10000
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = stateno = 200 && time >= 5
trigger2 = stateno = 210 && time >= 9
trigger3 = stateno = 212 && time >= 9
trigger4 = stateno = 240 && time >= 9
trigger5 = stateno = 245 && time >= 9
trigger6 = stateno = 400 && time >= 8
trigger7 = stateno = 410 && time >= 6
trigger8 = stateno = 440 && time >= 12
trigger9 = stateno = 442 && time >= 12

trigger10 = stateno = 10200 && time >= 5
trigger11 = stateno = 10205 && time >= 5
trigger12 = stateno = 10210 && time >= 8
trigger13 = stateno = 10215 && time >= 8
trigger14 = stateno = 10220 && time >= 8
trigger15 = stateno = 10225 && time >= 8
trigger16 = stateno = 10400 && time >= 4
trigger17 = stateno = 10405 && time >= 4
trigger18 = stateno = 10410 && time >= 5
trigger19 = stateno = 10415 && time >= 5
trigger20 = stateno = 10440 && time >= 7
trigger21 = stateno = 10445 && time >= 7

trigger22 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger22 = time >= 10
trigger23 = stateno = 1100 || stateno = 1110 || stateno = 1120
trigger23 = time >= 10
trigger24 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger24 = time >= 17
trigger25 = stateno = 1300 || stateno = 1310 || stateno = 1320
trigger25 = time >= 4
trigger26 = stateno = 11000 || stateno = 11010 || stateno = 11040 || stateno = 11050
trigger26 = time >= 10
trigger27 = stateno = 11100 || stateno = 11110 || stateno = 11140
trigger27 = time >= 10
trigger28 = stateno = 11200 || stateno = 11210 || stateno = 11220
trigger28 = time >= 10
trigger29 = stateno = 14000
trigger29 = time >= 8
value = 700
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = var(49) != 10000
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
trigger1 = statetype != A && ctrl
trigger1 = command = "b"
trigger2 = statetype != A && ctrl
trigger2 = command = "xyz"
value = 30
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(49) != 10000
triggerall = NumHelper(4010) = 0 
trigger1 = command = "x+y+z" || command = "b" 
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(49) != 10000
triggerall = NumHelper(4010) = 0 
trigger1 = command = "x+y+z" || command = "b" 
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;---------------------------------------------------------------------------
;アドバンシング（立ち）S
[State -1, Run Back]
type = ChangeState
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b" 
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 14100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）S
[State -1, Run Back]
type = ChangeState
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b" 
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 14105
;===========================================================================
;スタンド出現攻撃
[State -1, Stand Strong Punch]
type = ChangeState
value = 14000
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "syutugen"
triggerall = statetype != A
triggerall = NumHelper(11011) = 0 
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA 
trigger2 = time > 6
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA 
trigger3 = movecontact
trigger4 = stateno = 100
trigger5 = stateno = 105

;スタンド出現攻撃B
[State -1, Stand Strong Punch]
type = ChangeState
value = 14000
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "syutugen"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 245 && time > 9
trigger2 = stateno = 410 && time > 9
trigger3 = stateno = 440 && time > 11
;---------------------------------------------------------------------------
;発現立ち弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10202
triggerall = var(49) != 10000
triggerall = NumHelper(11011) = 0 
triggerall = NumHelper(2) = 0 
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 400) && time > 5
trigger4 = stateno = 100
trigger5 = stateno = 105
trigger6 = stateno = 10205 && movecontact

;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(49) != 10000
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 400) && time >= 8
trigger4 = stateno = 100
trigger5 = stateno = 105

;立ち弱パンチ on
[State -1, Stand Light Punch]
type = ChangeState
value = 10200
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10202 && time >= 5
trigger3 = stateno = 10205 && movecontact
trigger4 = (stateno = 11050) && time > 15
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10405 && movecontact

;立ち弱ダッシュon
[State -1, Stand Light Punch]
type = ChangeState
value = 10205
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = [100,105]
;---------------------------------------------------------------------------
;発現立ち中　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10212
triggerall = var(49) != 10000
triggerall = NumHelper(11011) = 0 
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5
trigger6 = stateno = 100
trigger7 = stateno = 105

;Stand Strong Punch
;立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(49) != 10000
triggerall = stateno != 100
triggerall = stateno != 105
triggerall = numhelper(11011) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 8
trigger4 = (stateno = 230) && time > 6

;立ち弱ダッシュon
[State -1, Stand Light Punch]
type = ChangeState
value = 10215
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = [100,105]

;立ち中on
[State -1, Stand Strong Punch]
type = ChangeState
value = 10210
triggerall = numhelper(2) = 0
triggerall = var(49) = 10000
triggerall = stateno != 100
triggerall = stateno != 105
triggerall = numhelper(11011) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10202) && time > 5
trigger4 = (stateno = 10400) && movecontact
trigger5 = (stateno = 10402) && movecontact
trigger6 = (stateno = 11050) && time > 18
trigger7 = stateno = 10205 && movecontact
trigger8 = stateno = 10405 && movecontact

;Stand Strong Punch
;立ち中ダッシュ
[State -1, Stand Strong Punch]
type = ChangeState
value = 212
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 8
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 100
trigger5 = stateno = 105

;Stand Strong Punch
;立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(49) != 10000
triggerall = numhelper(11011) != 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 230) && time > 6
;---------------------------------------------------------------------------
;発現立ち強　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10222
triggerall = var(49) != 10000
triggerall = NumHelper(11011) = 0 
triggerall = NumHelper(2) = 0 
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 212) && time > 10
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = stateno = 100
trigger8 = stateno = 105

;Standing Strong Kick
;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(49) != 10000
triggerall = numhelper(2) = 0
triggerall = numhelper(11011) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && time >= 8

;立ち強（ヘイズ無し）
[State -1, Jump Strong Punch]
type = ChangeState
value = 215
triggerall = var(49) != 10000
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Son弱弱弱のとき用は立ち強]
type = ChangeState
value = 10220 ;Son立ち強
triggerall = command = "x"
triggerall = RoundState = 2
triggerall = var(49) = 10000 && statetype != A
triggerall = P2StateType = S
trigger1 = stateno = 10200 && prevstateno = 10200
trigger1 = time >= 6 || movecontact

;立ち弱パンチ2 on
[State -1, Stand Light Punch]
type = ChangeState
value = 10200
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 10200 && time > 4

;立ち強ダッシュon
[State -1, Stand Light Punch]
type = ChangeState
value = 10225
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = stateno = [100,105]

;立ち強on
[State -1, Standing Strong Kick]
type = ChangeState
value = 10220
triggerall = var(49) = 10000
triggerall = numhelper(2) = 0
triggerall = numhelper(11011) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 8
trigger4 = (stateno = 10212) && movecontact
trigger5 = (stateno = 10400) && movecontact
trigger6 = (stateno = 10402) && movecontact
trigger7 = (stateno = 11050) && time > 18

;Stand Strong Punch
;立ち強ダッシュ
[State -1, Stand Strong Punch]
type = ChangeState
value = 245
triggerall = var(49) != 10000
triggerall = numhelper(2) = 0
triggerall = numhelper(11011) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;発現しゃがみ弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 10402
triggerall = var(49) != 10000
triggerall = NumHelper(11011) = 0 
triggerall = NumHelper(2) = 0 
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 400) && time > 5
trigger4 = stateno = 100
trigger5 = stateno = 105

;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(49) != 10000
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 8
trigger4 = stateno = 100
trigger5 = stateno = 105
trigger6 = stateno = 1200 && time > 34
trigger7 = stateno = 1210 && time > 35

;しゃがみ弱ダッシュon
[State -1, Stand Light Punch]
type = ChangeState
value = 10405
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = stateno = [100,105]

;しゃがみ弱パンチon
[State -1, Crouching Light Punch]
type = ChangeState
value = 10400
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10400 && time >= 4
trigger3 = (stateno = 11050) && time > 18
trigger4 = stateno = 10405 && movecontact
;---------------------------------------------------------------------------
;発現しゃがみ中　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10412
triggerall = var(49) != 10000
triggerall = NumHelper(11011) = 0 
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = stateno = 100
trigger4 = stateno = 105

;発現しゃがみ中　B
[State -1, Stand Strong Punch]
type = ChangeState
value = 10412
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = (stateno = 245) && movecontact

;Crouching Strong Punch
;しゃがみ中（ヘイズ有り）
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(11011) = 0 
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 8
trigger4 = stateno = 100
trigger5 = stateno = 105

;Crouching Strong Punch
;しゃがみ中（ヘイズ無し）
[State -1, Crouching Strong Punch]
type = ChangeState
value = 418
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105

;しゃがみ中ダッシュon
[State -1, Stand Light Punch]
type = ChangeState
value = 10415
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = stateno = [100,105]

;しゃがみ中on
[State -1, Crouching Light Punch]
type = ChangeState
value = 10410
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10400 && time >= 4
trigger4 = stateno = 10402 && time >= 4
trigger5 = (stateno = 11050) && time > 18
;---------------------------------------------------------------------------
;発現しゃがみ強　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10422
triggerall = var(49) != 10000
triggerall = NumHelper(11011) = 0 
triggerall = NumHelper(2) = 0 
triggerall = command = "z+a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = stateno = 100
trigger4 = stateno = 105

;発現しゃがみ強　B
[State -1, Stand Strong Punch]
type = ChangeState
value = 10422
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "z+a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = (stateno = 245) && movecontact

;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(49) != 10000
triggerall = stateno != 100
triggerall = stateno != 105
triggerall = numhelper(2) = 0
triggerall = numhelper(11011) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;しゃがみ強ダッシュon
[State -1, Stand Light Punch]
type = ChangeState
value = 10425
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = stateno = [100,105]

;しゃがみ強on
[State -1, Crouching Light Punch]
type = ChangeState
value = 10420
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 4
trigger4 = stateno = 10410 && time >= 5
trigger5 = (stateno = 11050) && time > 18
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強
[State -1, Crouching Strong Kick]
type = ChangeState
value = 442
triggerall = var(49) != 10000
triggerall = numhelper(2) = 0
triggerall = numhelper(11011) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 100
trigger4 = stateno = 105

;しゃがみ強（ヘイズ無し）
[State -1, Jump Strong Punch]
type = ChangeState
value = 418
triggerall = var(49) != 10000
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 10602
triggerall = var(49) != 10000
triggerall = NumHelper(11011) = 0 
triggerall = NumHelper(2) = 0 
triggerall = command = "x+a"
triggerall = statetype = A
trigger1 = ctrl

;Jump Light Punch
;空中弱
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(49) != 10000
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Light Punch
;空中弱on
[State -1, Jump Light Punch]
type = ChangeState
value = 10600
triggerall = var(49) = 10000
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10612
triggerall = var(49) != 10000
triggerall = NumHelper(11011) = 0 
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = statetype = A
trigger1 = ctrl

;空中中（ヘイズ有り）
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = numhelper(11011) = 0
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;空中中（ヘイズ無し）
[State -1, Jump Strong Punch]
type = ChangeState
value = 618
triggerall = var(49) != 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Light Punch
;空中中on
[State -1, Jump Light Punch]
type = ChangeState
value = 10610
triggerall = var(49) = 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中強
[State -1, Stand Strong Punch]
type = ChangeState
value = 10622
triggerall = var(49) != 10000
triggerall = NumHelper(11011) = 0 
triggerall = NumHelper(2) = 0 
triggerall = command = "z+a"
triggerall = statetype = A
trigger1 = ctrl

;Jump Strong Kick
;空中強
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = numhelper(2) = 0
triggerall = var(49) != 10000
triggerall = numhelper(11011) = 0 || stateno = 610
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

;Jump Strong Kick
;空中強ph無し
[State -1, Jump Strong Kick]
type = ChangeState
value = 618
triggerall = var(49) != 10000
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Light Punch
;空中強on
[State -1, Jump Light Punch]
type = ChangeState
value = 10620
triggerall = var(49) = 10000
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10600 || stateno = 10610
trigger2 = movecontact
;----------------------------------------------------
[State -1,2段ジャンプ]
type = ChangeState
value = 41
;triggerall = !Ishelper	     ;プレイヤーがヘルパーでないとき
triggerall = var(49) = 10000 ;スタンドモードのとき
triggerall = var(4) = 1      ;2段ｼﾞｬﾝﾌﾟ可能の時。var(4)は2段ｼﾞｬﾝﾌﾟした瞬間０になり、着地すると１になる
triggerall = command = "up";"holdup"
triggerall = stateno = 50 || stateno = 10822;&& time >= 25
trigger1 = ctrl
triggerall = command != "upc"
;===========================================================================
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
triggerall = numhelper(2) = 0
triggerall = numhelper(11011) = 0
triggerall = !var(49)
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S;!= A    ;S, C, A(立ち、しゃがみ、空中
trigger1 = NumHelper(2) = 0 
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 10821
triggerall = numhelper(2) = 0
triggerall = numhelper(11011) = 0
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（空中）
[State -1, Taunt]
type = ChangeState
value = 10822
triggerall = numhelper(2) = 0
triggerall = numhelper(11011) = 0
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 16003
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16004
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（空中）
[State -1, Taunt]
type = ChangeState
value = 16005
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0