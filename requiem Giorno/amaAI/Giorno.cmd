;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。
;-| AI |------------------------------------------------------
[Command]
Name = "AI_00"
Command = a, a
Time = 0
[Command]
Name = "AI_01"
Command = a, b
Time = 0
[Command]
Name = "AI_02"
Command = a, c
Time = 0
[Command]
Name = "AI_03"
Command = a, x
Time = 0
[Command]
Name = "AI_04"
Command = a, y
Time = 0
[Command]
Name = "AI_05"
Command = a, z
Time = 0
[Command]
Name = "AI_06"
Command = a, s
Time = 0
[Command]
Name = "AI_07"
Command = b, a
Time = 0
[Command]
Name = "AI_08"
Command = b, b
Time = 0
[Command]
Name = "AI_09"
Command = b, c
Time = 0
[Command]
Name = "AI_10"
Command = b, x
Time = 0
[Command]
Name = "AI_11"
Command = b, y
Time = 0
[Command]
Name = "AI_12"
Command = b, z
Time = 0
[Command]
Name = "AI_13"
Command = b, s
Time = 0
[Command]
Name = "AI_14"
Command = c, a
Time = 0
[Command]
Name = "AI_15"
Command = c, b
Time = 0
[Command]
Name = "AI_16"
Command = c, c
Time = 0
[Command]
Name = "AI_17"
Command = c, x
Time = 0
[Command]
Name = "AI_18"
Command = c, y
Time = 0
[Command]
Name = "AI_19"
Command = c, z
Time = 0
[Command]
Name = "AI_20"
Command = c, s
Time = 0
[Command]
Name = "AI_21"
Command = x, a
Time = 0
[Command]
Name = "AI_22"
Command = x, b
Time = 0
[Command]
Name = "AI_23"
Command = x, c
Time = 0
[Command]
Name = "AI_24"
Command = x, x
Time = 0
[Command]
Name = "AI_25"
Command = x, y
Time = 0
[Command]
Name = "AI_26"
Command = x, z
Time = 0
[Command]
Name = "AI_27"
Command = x, s
Time = 0
[Command]
Name = "AI_28"
Command = y, a
Time = 0
[Command]
Name = "AI_29"
Command = y, b
Time = 0
[Command]
Name = "AI_30"
Command = y, c
Time = 0
[Command]
Name = "AI_31"
Command = y, x
Time = 0
[Command]
Name = "AI_32"
Command = y, y
Time = 0
[Command]
Name = "AI_33"
Command = y, z
Time = 0
[Command]
Name = "AI_34"
Command = y, s
Time = 0
[Command]
Name = "AI_35"
Command = s, a
Time = 0
[Command]
Name = "AI_36"
Command = s, b
Time = 0
[Command]
Name = "AI_37"
Command = s, c
Time = 0
[Command]
Name = "AI_38"
Command = s, x
Time = 0
[Command]
Name = "AI_39"
Command = s, y
Time = 0
[Command]
Name = "AI_40"
Command = s, z
Time = 0
[Command]
Name = "AI_41"
Command = s, s
Time = 0
[Command]
Name = "AI_42"
Command = U, U
Time = 0
[Command]
Name = "AI_43"
Command = U, F
Time = 0
[Command]
Name = "AI_44"
Command = U, D
Time = 0
[Command]
Name = "AI_45"
Command = U, B
Time = 0
[Command]
Name = "AI_46"
Command = F, U
Time = 0
[Command]
Name = "AI_47"
Command = F, F
Time = 0
[Command]
Name = "AI_48"
Command = F, D
Time = 0
[Command]
Name = "AI_49"
Command = F, B
Time = 0
[Command]
Name = "AI_50"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI_51"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
Time = 0
[Command]
Name = "AI_52"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
[Command]
Name = "AI_53"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 0
[Command]
Name = "AI_54"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 0
[Command]
Name = "AI_55"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 0
[Command]
Name = "AI_56"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 0
[Command]
Name = "AI_57"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
Time = 0
[Command]
Name = "AI_58"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
Time = 0
[Command]
Name = "AI_59"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
Time = 0

[Command]
name = "owari"
command = ~B, D, DB, x+y

[Command]
name = "mudamudamudamuda"
command = ~B, DB, D, DF, F, x+y

[Command]
name = "ryaku3"
command = ~B, DB, D, DF, F, b

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+y
time = 20

[Command] 
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, x+y
time = 20

[Command]
name = "nesp"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "デム"
command = ~D, B, a
time = 20

;-| 必殺技 |-----------------------------------------------------
[Command]
name = "syutugen"
command = ~D, DF, F, a

[Command]
name = "henrin_x"
command = ~B, D, DB, x

[Command]
name = "henrin_y"
command = ~B, D, DB, y

[Command]
name = "henrin_z"
command = ~B, D, DB, z

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
name = "ryaku1"
command = ~D, DF, F, b

[Command]
name = "ryaku2"
command = ~D, DB, B, b

[Command]
name = "flower_f"
command = ~D, DF, F, c

[Command]
name = "flower_b"
command = ~D, DB, B, c

[Command]
name = "FDDF_x"
command = ~F, D, DF, x

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "nekko_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "nekko_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "nekko_b"
command = ~F, DF, D, DB, B, z

[Command]
name = "fish_x"
command = ~D, DB, B, x

[Command]
name = "fish_y"
command = ~D, DB, B, y

[Command]
name = "fish_b"
command = ~D, DB, B, z

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;※※※※※※※※※※※※※※※※※※※※ハイジャンプコマンド
;下をちょっと押して上を押す、と言う意味。
[Command]
name = "jump"    
command = ~D,$U
time = 10

;※※※※※※※※※※※※※※※※※※※※前避け
;前を押しながらＡ＋Ｂ、という意味
[Command]
name = "away-f"    
command = /F,a+b
time = 10

;※※※※※※※※※※※※※※※※※※※※前避け
;後を押しながらＡ＋Ｂ、という意味
[Command]
name = "away-b"    
command = /B,a+b
time = 10

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "x+y+z"
command = x+y+z

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

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "holda"
command = /$a
time = 1

;-| 空中ジャンプ関連 |---------------------------------------------------------

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upc"
command = ~$U ;$上を放したとき
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "z"
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
name = "b"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$z
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /b
time = 1

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1
;------------------------------------------------------------------------------

[Statedef 30005]
type = A
ctrl = 0
anim = 0
velset = -10*facing,0
movetype = I
physics = N
sprpriority = 1

[state 30005]
type = turn
Trigger1 = facing != root,facing 

[State 30005,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 30005]
type=parentvarset
TriggerAll=var(59)!=-1
Trigger1=command="a"&&root,command="a"
Trigger2=command="b"&&root,command="b"
Trigger3=command="c"&&root,command="c"
Trigger4=command="x"&&root,command="x"
Trigger5=command="y"&&root,command="y"
Trigger6=command="z"&&root,command="z"
Trigger7=command="fwd"&&root,command="fwd"
Trigger8=command="back"&&root,command="back"
Trigger9=command="up"&&root,command="up"
Trigger10=command="down"&&root,command="down"
;Trigger11=command="start"&&root,command="start"
var(59)=0

[State 30005]
Type = varset
triggerAll=isHelper
Trigger1=root,var(59)!=0
trigger2=command="up"&&root,command="up"
trigger3=command="down"&&root,command="down"
trigger4=command="back"&&root,command="back"
trigger5=command="fwd"&&root,command="fwd"
trigger6=command="a"&&root,command="a"
trigger7=command="b"&&root,command="b"
trigger8=command="c"&&root,command="c"
trigger9=command="x"&&root,command="x"
trigger10=command="y"&&root,command="y"
trigger11=command="z"&&root,command="z"
;trigger12=command="start"&&root,command="start"
var(59)=-1

[State 30005]
type=varset
TriggerAll=time>4
triggerall=var(59)!=-1
trigger1=root,command="up"&&(roundstate=2&&root,ctrl)
trigger2=root,command="down"&&(roundstate=2&&root,ctrl)
trigger3=root,command="back"&&(roundstate=2&&root,ctrl)
trigger4=root,command="fwd"&&(roundstate=2&&root,ctrl)
trigger5=root,command="a"
trigger6=root,command="b"
trigger7=root,command="c"
trigger8=root,command="x"
trigger9=root,command="y"
trigger10=root,command="z"
;trigger11=root,command="start"
var(59)=1

;画面端検出用
[State  30005,画面端前]
type = helper
trigger1 = time = 0
trigger1 = !var(36)
helpertype=normal
name="mae"
stateno=30006
ID=30006+root,id
keyctrl=0
;pausemovetime=99999999
;supermovetime=99999999
persistent = 0

[state 30005]
type = varset
Trigger1 = time=0
var(0)=0
[State 30005]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 30005]
type = assertspecial
trigger1 = 1
flag = invisible
[State 30005]
type = NotHitBy
value = SCA
trigger1 = 1
[state 30005]
type=Projectile
trigger1 = time = 0
trigger1 = numprojID(30005) < 1
velocity = -10*facing,0
projID = 30005
projanim = 0
projhits = 9999
projpriority = 9999
offset = 0,9999
projstagebound = 0;const(size.ground.front)
projedgebound = 100000
projremovetime = -1
;supermovetime = 9999
;pausemovetime = 9999
[state 30005]
type = velset
trigger1 = vel X != 0
Trigger1 = root,numprojID(30005) = 0
x = 0
[state 30005]
type = varset
trigger1 = vel X= 0
var(36) = ceil(rootdist X)
[state 30005]
type = varset
trigger1 = vel X= 0
var(38) = ceil(p2bodydist X)

[state 重力加速度]
type=null
triggerall=numenemy
trigger1=fvar(0):=enemy(0),const(movement.yaccel)
trigger2=enemy(0),movetype=h&&enemy(0),stateno!=[120,155]
trigger2=fvar(0):=enemy(0),gethitvar(yaccel)

[state 重力計算]
type=null
trigger1=numenemy
trigger1=1||fvar(1):=enemy(0),vel y+fvar(0)/2
trigger1=1||fvar(2):=enemy(0),vel y*2+fvar(0)*2*2/2
trigger1=1||fvar(3):=enemy(0),vel y*3+fvar(0)*3*3/2
trigger1=1||fvar(4):=enemy(0),vel y*4+fvar(0)*4*4/2
trigger1=1||fvar(5):=enemy(0),vel y*5+fvar(0)*5*5/2
trigger1=1||fvar(6):=enemy(0),vel y*6+fvar(0)*6*6/2
trigger1=1||fvar(7):=enemy(0),vel y*7+fvar(0)*7*7/2
trigger1=1||fvar(8):=enemy(0),vel y*8+fvar(0)*8*8/2
trigger1=1||fvar(9):=enemy(0),vel y*9+fvar(0)*9*9/2
trigger1=1||fvar(10):=enemy(0),vel y*10+fvar(0)*10*10/2
trigger1=1||fvar(11):=enemy(0),vel y*11+fvar(0)*11*11/2
trigger1=1||fvar(12):=enemy(0),vel y*12+fvar(0)*12*12/2
trigger1=1||fvar(13):=enemy(0),vel y*13+fvar(0)*13*13/2
trigger1=1||fvar(14):=enemy(0),vel y*14+fvar(0)*14*14/2
trigger1=1||fvar(15):=enemy(0),vel y*15+fvar(0)*15*15/2
trigger1=1||fvar(16):=enemy(0),vel y*16+fvar(0)*16*16/2
trigger1=1||fvar(17):=enemy(0),vel y*17+fvar(0)*17*17/2
trigger1=1||fvar(18):=enemy(0),vel y*18+fvar(0)*18*18/2
trigger1=1||fvar(19):=enemy(0),vel y*19+fvar(0)*19*19/2
trigger1=1||fvar(20):=enemy(0),vel y*20+fvar(0)*20*20/2
trigger1=1||fvar(21):=enemy(0),vel y*21+fvar(0)*21*21/2
trigger1=1||fvar(22):=enemy(0),vel y*22+fvar(0)*22*22/2
trigger1=1||fvar(23):=enemy(0),vel y*23+fvar(0)*23*23/2
trigger1=1||fvar(24):=enemy(0),vel y*24+fvar(0)*24*24/2
trigger1=1||fvar(25):=enemy(0),vel y*25+fvar(0)*25*25/2
trigger1=1||fvar(26):=enemy(0),vel y*26+fvar(0)*26*26/2
trigger1=1||fvar(27):=enemy(0),vel y*27+fvar(0)*27*27/2
trigger1=1||fvar(28):=enemy(0),vel y*28+fvar(0)*28*28/2
trigger1=1||fvar(29):=enemy(0),vel y*29+fvar(0)*29*29/2
trigger1=1||fvar(30):=enemy(0),vel y*30+fvar(0)*30*30/2
trigger1=1||fvar(31):=enemy(0),vel y*31+fvar(0)*31*31/2
trigger1=1||fvar(32):=enemy(0),vel y*32+fvar(0)*32*32/2
trigger1=1||fvar(33):=enemy(0),vel y*33+fvar(0)*33*33/2
trigger1=1||fvar(34):=enemy(0),vel y*34+fvar(0)*34*34/2
trigger1=1||fvar(35):=enemy(0),vel y*35+fvar(0)*35*35/2
trigger1=1||fvar(36):=enemy(0),vel y*36+fvar(0)*36*36/2
trigger1=1||fvar(37):=enemy(0),vel y*37+fvar(0)*37*37/2
trigger1=1||fvar(38):=enemy(0),vel y*38+fvar(0)*38*38/2
trigger1=1||fvar(39):=enemy(0),vel y*39+fvar(0)*39*39/2


;飛び道具ステート学習
[State -1, 学習]
type = null
triggerall = var(36)
triggerall = NumEnemy
triggerall = enemy(0),stateno != [0,105]
triggerall = enemy(0),movetype = A
triggerall = numhelper(40005+root,id)
triggerall = helper(40005+root,id),var(1)=1 || enemy(0),numproj
triggerall = helper(40005+root,id),var(3)=1
trigger1 = var(10) = 0 
trigger1 = var(10) := Enemy(0),stateno
trigger2 = var(11) = 0 && var(10) != Enemy(0),stateno 
trigger2 = var(11) := Enemy(0),stateno
trigger3 = var(12) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno 
trigger3 = var(12) := Enemy(0),stateno
trigger4 = var(13) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno
trigger4 = var(13) := Enemy(0),stateno
trigger5 = var(14) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno
trigger5 = var(14) := Enemy(0),stateno
trigger6 = var(15) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger6 = var(15) := Enemy(0),stateno
trigger7 = var(16) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger7 = var(15) != Enemy(0),stateno
trigger7 = var(16) := Enemy(0),stateno
trigger8 = var(17) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger8 = var(15) != Enemy(0),stateno && var(16) != Enemy(0),stateno
trigger8 = var(17) := Enemy(0),stateno
trigger9 = var(18) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger9 = var(15) != Enemy(0),stateno && var(16) != Enemy(0),stateno && var(17) != Enemy(0),stateno
trigger9 = var(18) := Enemy(0),stateno
trigger10= var(19) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger10= var(15) != Enemy(0),stateno && var(16) != Enemy(0),stateno && var(17) != Enemy(0),stateno && var(18) != Enemy(0),stateno
trigger10= var(19) := Enemy(0),stateno

[State -1, 学習タッグ二人目用]
type = null
triggerall = var(36)
triggerall = NumEnemy=2
triggerall = enemy(1),stateno != [0,105]
triggerall = enemy(1),movetype = A
triggerall = numhelper(40005+root,id)
triggerall = helper(40005+root,id),var(1)=1 || enemy(1),numproj
triggerall = helper(40005+root,id),var(3)=1
trigger1 = var(20) = 0 
trigger1 = var(20) := Enemy(1),stateno
trigger2 = var(21) = 0 && var(20) != Enemy(1),stateno
trigger2 = var(21) := Enemy(1),stateno
trigger3 = var(22) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno
trigger3 = var(22) := Enemy(1),stateno
trigger4 = var(23) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno
trigger4 = var(23) := Enemy(1),stateno
trigger5 = var(24) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno
trigger5 = var(24) := Enemy(1),stateno
trigger6 = var(25) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger6 = var(25) := Enemy(1),stateno
trigger7 = var(26) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger7 = var(25) != Enemy(1),stateno
trigger7 = var(26) := Enemy(1),stateno
trigger8 = var(27) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger8 = var(25) != Enemy(1),stateno && var(26) != Enemy(1),stateno
trigger8 = var(27) := Enemy(1),stateno
trigger9 = var(28) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger9 = var(25) != Enemy(1),stateno && var(26) != Enemy(1),stateno && var(27) != Enemy(1),stateno
trigger9 = var(28) := Enemy(1),stateno
trigger10= var(29) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger10= var(25) != Enemy(1),stateno && var(26) != Enemy(1),stateno && var(27) != Enemy(1),stateno && var(28) != Enemy(1),stateno
trigger10= var(29) := Enemy(1),stateno

[State -1, 学習：本体スイッチON]
type = parentvarset
triggerall = numenemy
triggerall = enemy(0),stateno != 0
trigger1 = enemy(0),stateno = var(10) || enemy(0),stateno = var(11) || enemy(0),stateno = var(12) 
trigger2 = enemy(0),stateno = var(13) || enemy(0),stateno = var(14)
trigger3 = enemy(0),stateno = var(15) || enemy(0),stateno = var(16) || enemy(0),stateno = var(17) 
trigger4 = enemy(0),stateno = var(18) || enemy(0),stateno = var(19)
var(47) = 1

[State -1, 学習：本体スイッチON]
type = parentvarset
triggerall = numenemy=2
triggerall = Enemy(1),stateno != 0 && Enemy(1),numpartner
trigger1 = Enemy(1),stateno = var(20) || Enemy(1),stateno = var(21) || Enemy(1),stateno = var(22) 
trigger2 = Enemy(1),stateno = var(23) || Enemy(1),stateno = var(24)
trigger3 = Enemy(1),stateno = var(25) || Enemy(1),stateno = var(26) || Enemy(1),stateno = var(27) 
trigger4 = Enemy(1),stateno = var(28) || Enemy(1),stateno = var(29)
var(47) = 1

[State -1, 学習：本体スイッチOFF]
type = parentvarset
triggerall = numenemy
triggerall = enemy(0),numproj=0&&enemy(numenemy=2),numproj=0
triggerall = numhelper(40005+root,id)=0
trigger1 = enemy(0),stateno != var(10) && enemy(0),stateno != var(11) && enemy(0),stateno != var(12) 
trigger1 = enemy(0),stateno != var(13) && enemy(0),stateno != var(14)
trigger1 = enemy(0),stateno != var(15) && enemy(0),stateno != var(16) && enemy(0),stateno != var(17) 
trigger1 = enemy(0),stateno != var(18) && enemy(0),stateno != var(19)
trigger2 = enemy(0),stateno=0
var(47) = 0

[State -1, 学習：本体スイッチOFF]
type = parentvarset
triggerall = numenemy=2
triggerall = enemy(0),numproj=0&&enemy(numenemy=2),numproj=0
triggerall = numhelper(40005+root,id)=0
trigger1 = Enemy(1),stateno != var(20) && Enemy(1),stateno != var(21) && Enemy(1),stateno = var(22) 
trigger1 = Enemy(1),stateno != var(23) && Enemy(1),stateno != var(24)
trigger1 = Enemy(1),stateno != var(25) && Enemy(1),stateno != var(26) && Enemy(1),stateno = var(27) 
trigger1 = Enemy(1),stateno != var(28) && Enemy(1),stateno != var(29)
trigger2 = enemy(0),stateno=0
var(47) = 0


;画面端検出用
[Statedef 30006]
type = A
ctrl = 0
anim = 0
velset = 10*facing,0
movetype = I
physics = N
sprpriority = 1
[state 30006]
type = varset
Trigger1 = time=0
var(0)=0
[State 30006]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 30006]
type = assertspecial
trigger1 = 1
flag = invisible
[State 30006]
type = NotHitBy
value = SCA
trigger1 = 1
[state 30006]
type=Projectile
trigger1 = time = 0
trigger1 = numprojID(30006) < 1
velocity = 10*facing,0
projID = 30006
projanim = 0
projhits = 9999
projpriority = 9999
offset = 0,9999
projstagebound = 0;const(size.ground.front);front
projedgebound = 100000
projremovetime = -1
;supermovetime = 9999
;pausemovetime = 9999
[state 30006]
type = velset
trigger1 = vel X != 0
Trigger1 = root,numprojID(30006)= 0
x = 0
[state 30006]
type = varset
;trigger1 = Numhelper(30006+id)
trigger1 = vel X= 0
var(37) = ceil(rootdist X)
[state 30006]
type = varset
;trigger1 = Numhelper(30006+id)
trigger1 = vel X= 0
var(38) = ceil(p2bodydist X)
[state 30006]
type = turn
trigger1 = vel X = 0
Trigger1 = root,numprojID(30006)= 0
trigger1 = var(37) < 0


[State 30006, 飛び道具監視]
type = null
triggerall = NumEnemy
trigger1 = var(3) := Enemy(0),numproj
trigger2 = var(4) := Enemy(0),numhelper

[State 30006, 飛び道具監視タッグ二人目用]
type = null
triggerall = NumEnemy
trigger1 = var(5) := Enemy(numenemy=2),numproj
trigger2 = var(6) := Enemy(numenemy=2),numhelper


[state 重力加速度]
type=null
triggerall=numenemy
trigger1=enemy(numenemy=2),movetype=h&&enemy(numenemy=2),stateno!=[120,155]
trigger1=fvar(0):=enemy(numenemy=2),gethitvar(yaccel)
trigger2=fvar(0):=enemy(numenemy=2),const(movement.yaccel)

[state 重力計算]
type=null
trigger1=numenemy
trigger1=1||fvar(1):=enemy(numenemy=2),vel y+fvar(0)/2
trigger1=1||fvar(2):=enemy(numenemy=2),vel y*2+fvar(0)*2*2/2
trigger1=1||fvar(3):=enemy(numenemy=2),vel y*3+fvar(0)*3*3/2
trigger1=1||fvar(4):=enemy(numenemy=2),vel y*4+fvar(0)*4*4/2
trigger1=1||fvar(5):=enemy(numenemy=2),vel y*5+fvar(0)*5*5/2
trigger1=1||fvar(6):=enemy(numenemy=2),vel y*6+fvar(0)*6*6/2
trigger1=1||fvar(7):=enemy(numenemy=2),vel y*7+fvar(0)*7*7/2
trigger1=1||fvar(8):=enemy(numenemy=2),vel y*8+fvar(0)*8*8/2
trigger1=1||fvar(9):=enemy(numenemy=2),vel y*9+fvar(0)*9*9/2
trigger1=1||fvar(10):=enemy(numenemy=2),vel y*10+fvar(0)*10*10/2
trigger1=1||fvar(11):=enemy(numenemy=2),vel y*11+fvar(0)*11*11/2
trigger1=1||fvar(12):=enemy(numenemy=2),vel y*12+fvar(0)*12*12/2
trigger1=1||fvar(13):=enemy(numenemy=2),vel y*13+fvar(0)*13*13/2
trigger1=1||fvar(14):=enemy(numenemy=2),vel y*14+fvar(0)*14*14/2
trigger1=1||fvar(15):=enemy(numenemy=2),vel y*15+fvar(0)*15*15/2
trigger1=1||fvar(16):=enemy(numenemy=2),vel y*16+fvar(0)*16*16/2
trigger1=1||fvar(17):=enemy(numenemy=2),vel y*17+fvar(0)*17*17/2
trigger1=1||fvar(18):=enemy(numenemy=2),vel y*18+fvar(0)*18*18/2
trigger1=1||fvar(19):=enemy(numenemy=2),vel y*19+fvar(0)*19*19/2
trigger1=1||fvar(20):=enemy(numenemy=2),vel y*20+fvar(0)*20*20/2
trigger1=1||fvar(21):=enemy(numenemy=2),vel y*21+fvar(0)*21*21/2
trigger1=1||fvar(22):=enemy(numenemy=2),vel y*22+fvar(0)*22*22/2
trigger1=1||fvar(23):=enemy(numenemy=2),vel y*23+fvar(0)*23*23/2
trigger1=1||fvar(24):=enemy(numenemy=2),vel y*24+fvar(0)*24*24/2
trigger1=1||fvar(25):=enemy(numenemy=2),vel y*25+fvar(0)*25*25/2
trigger1=1||fvar(26):=enemy(numenemy=2),vel y*26+fvar(0)*26*26/2
trigger1=1||fvar(27):=enemy(numenemy=2),vel y*27+fvar(0)*27*27/2
trigger1=1||fvar(28):=enemy(numenemy=2),vel y*28+fvar(0)*28*28/2
trigger1=1||fvar(29):=enemy(numenemy=2),vel y*29+fvar(0)*29*29/2
trigger1=1||fvar(30):=enemy(numenemy=2),vel y*30+fvar(0)*30*30/2
trigger1=1||fvar(31):=enemy(numenemy=2),vel y*31+fvar(0)*31*31/2
trigger1=1||fvar(32):=enemy(numenemy=2),vel y*32+fvar(0)*32*32/2
trigger1=1||fvar(33):=enemy(numenemy=2),vel y*33+fvar(0)*33*33/2
trigger1=1||fvar(34):=enemy(numenemy=2),vel y*34+fvar(0)*34*34/2
trigger1=1||fvar(35):=enemy(numenemy=2),vel y*35+fvar(0)*35*35/2
trigger1=1||fvar(36):=enemy(numenemy=2),vel y*36+fvar(0)*36*36/2
trigger1=1||fvar(37):=enemy(numenemy=2),vel y*37+fvar(0)*37*37/2
trigger1=1||fvar(38):=enemy(numenemy=2),vel y*38+fvar(0)*38*38/2
trigger1=1||fvar(39):=enemy(numenemy=2),vel y*39+fvar(0)*39*39/2


[Statedef 40005]
type = A
ctrl = 0
anim = 0
movetype = I
physics = N
sprpriority = 1

[state 30005]
type = posset
trigger1 = 1
x = root,pos x + 60 * facing

[State 40005]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 40005]
type = assertspecial
trigger1 = 1
flag = invisible
[State 40005]
type = NotHitBy
value = SCA
trigger1 = 1

[State 40005]
type = varadd
trigger1 = var(0)=100+(ID-20)
var(3) = 1

[State 40005]
type = varset
trigger1 = var(3) >= 100000
var(3) = 0

[State 40005]
type = varset
trigger1 = var(0)=0
trigger2 = var(0)>=250+(ID-20)
var(0) = ID-20

[State 40005];スイッチリセット
type = parentvarset
trigger1 = var(0)=ID-20;ループ開始
trigger1 = var(1):=0||1
trigger1 = var(2):=0||1
trigger1 = var(6):=0||1
trigger1 = var(7):=0||1
trigger2 = var(0)>=250+(ID-20);ループ終わり
trigger2 = var(1)=0
var(47)=0

[State 40005, 学習P]
type = parentvarset
triggerall = NumEnemy
trigger1 = Enemy(0),numproj > 0
trigger2 = Enemy(numenemy=2),numproj > 0
var(47)=1

[State 40005]
type = varadd
trigger1 = 1
var(0) = 1

[State 40005]
type = parentvarset
triggerall = var(0)<250+(ID-20)
triggerall = playerIDexist(var(0))=1
trigger1 = playerID(var(0)),hitdefattr = SCA,AA,AT,AP; || playerID(var(0)),movetype = A
trigger1 = playerID(var(0)),teamside != root,teamside && playerID(var(0)),ishelper
trigger1 = var(1):=1||1
trigger1 = var(2):=(root,statetype=S&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x)=[0,65])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[0,105])&&(playerID(var(0)),vel x>0))||1
trigger1 = var(6):=(root,statetype=C&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x)=[0,65])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[0,70])&&(playerID(var(0)),vel x>0))||1
trigger1 = var(7):=(root,statetype=A&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x-root,vel x)=[0,55])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[-65+(root,vel y<0)*60,45])&&(playerID(var(0)),vel x>0))||1

;確認用
;trigger1 = var(2):=(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x))||1 
;trigger1 = var(2):=(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y))||1 

var(47) = 1

[State 40005]
type = destroyself
trigger1 = var(0)>=250+(ID-20)
trigger1 = root,var(47)=0

[State -1, ヘルパー式飛び道具接近フラグ]
type = ParentVarSet
trigger1 = root,statetype != A && (root,var(48) = 0 || time = 1)
var(48) = var(2)+var(6)
ignorehitpause = 1

[State -1, ヘルパー式飛び道具接近フラグ]
type = ParentVarSet
trigger1 = root,statetype = A && (root,var(48) = 0 || time = 1)
var(48) = var(7)+var(8)
ignorehitpause = 1

[State 40005]
type = changestate
trigger1 = var(0)<250+(ID-20)
trigger2 = time=1 && var(0)>=250+(ID-20)
value = 40006


[Statedef 40006]
type = A
ctrl = 0
anim = 0
movetype = I
physics = N
sprpriority = 1

[state 30005]
type = posset
trigger1 = 1
x = root,pos x + 60 * facing

[State 40006]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 40006]
type = assertspecial
trigger1 = 1
flag = invisible
[State 40006]
type = NotHitBy
value = SCA
trigger1 = 1

[State 40005];スイッチリセット
type = parentvarset
trigger1 = var(0)=ID-20;ループ開始
trigger1 = var(1):=0||1
trigger1 = var(2):=0||1
trigger1 = var(6):=0||1
trigger1 = var(7):=0||1
trigger2 = var(0)>=250+(ID-20);ループ終わり
trigger2 = var(1)=0
var(47)=0

[State 40005, 学習P]
type = parentvarset
triggerall = NumEnemy
trigger1 = Enemy(0),numproj > 0
trigger2 = Enemy(numenemy=2),numproj > 0
var(47)=1

[State 40006]
type = varadd
trigger1 = 1
var(0) = 1

[State 40006]
type = parentvarset
triggerall = var(0)<250+(ID-20)
triggerall = playerIDexist(var(0))=1
trigger1 = playerID(var(0)),hitdefattr = SCA,AA,AT,AP; || playerID(var(0)),movetype = A
trigger1 = playerID(var(0)),teamside != root,teamside && playerID(var(0)),ishelper
trigger1 = var(1):=1||1
trigger1 = var(2):=(root,statetype=S&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x)=[0,65])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[0,105])&&(playerID(var(0)),vel x>0))||1
trigger1 = var(6):=(root,statetype=C&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x)=[0,65])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[0,70])&&(playerID(var(0)),vel x>0))||1
trigger1 = var(7):=(root,statetype=A&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x-root,vel x)=[0,55])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[-65+(root,vel y<0)*60,45])&&(playerID(var(0)),vel x>0))||1
var(47)=1

[State 40006]
type = destroyself
trigger1 = var(0)>=250+(ID-20)
trigger1 = root,var(47)=0

[State -1, ヘルパー式飛び道具接近フラグ]
type = ParentVarSet
trigger1 = root,statetype != A && (root,var(48) = 0 || time = 1)
var(48) = var(2)+var(6)
ignorehitpause = 1

[State -1, ヘルパー式飛び道具接近フラグ]
type = ParentVarSet
trigger1 = root,statetype = A && (root,var(48) = 0 || time = 1)
var(48) = var(7)
ignorehitpause = 1

[State 40006]
type = changestate
trigger1 = var(0)<250+(ID-20)
trigger2 = time=1 && var(0)>=250+(ID-20)
value = 40005

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;無駄無駄無駄無駄　
[State -1, Stand Strong Punch]
type = ChangeState
value = 17000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(8014) = 0 
triggerall = NumHelper(8010) = 0 
triggerall = power >= 2000
triggerall = var(49) = 10000
triggerall = command = "mudamudamudamuda" || command = "ryaku3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10205) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10215) && time > 5
trigger5 = movecontact
trigger6 = (stateno = 10220) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10225) && time > 5
trigger7 = movecontact
trigger8 = (stateno = 10250) && time > 5
trigger8 = movecontact
trigger9 = (stateno = 10255) && time > 5
trigger9 = movecontact
;---------------------------------------------------------------------------
;無駄無駄ラッシュ（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(10000) = 0 
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = command = "TripleKFPalm" || command = "ryaku1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;無駄無駄ラッシュ S　
[State -1, Stand Strong Punch]
type = ChangeState
value = 13000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = command = "TripleKFPalm" || command = "ryaku1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10205) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10215) && time > 5
trigger5 = movecontact
trigger6 = (stateno = 10280) && time > 18
trigger6 = movecontact

;無駄無駄ラッシュ S　空中　
[State -1, Stand Strong Punch]
type = ChangeState
value = 13500
triggerall = var(59)<=0&& RoundState = 2 
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = command = "TripleKFPalm" || command = "ryaku1"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 10600) && movecontact
trigger3 = (stateno = 10610) && movecontact
trigger4 = (stateno = 10640) && movecontact
trigger5 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;終わりが無いのが終わりON時
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 99999
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = PalNo != 12
triggerall = power >= 3000
trigger1 = command = "owari"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;木の根 Sp
[State -1, Stand Strong Punch]
type = ChangeState
value = 3150
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "nesp" || command = "ryaku2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;木の根 Sp son
[State -1, Stand Strong Punch]
type = ChangeState
value = 13150
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0 
triggerall = var(49) = 10000
triggerall = command = "nesp" || command = "ryaku2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10280) && time > 18
trigger2 = movecontact
;------------------------------------------------------------------------------
[State -1, デム];スタンドoff
type = ChangeState
value = 3900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(4657) = 0
triggerall = var(46) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = NumHelper(10000) = 0
triggerall = PalNo != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 180 ;挑発
trigger3 = (stateno = 200) && time > 5
trigger4 = (stateno = 210) && time > 5
trigger5 = (stateno = 400) 
trigger5 = movecontact
trigger6 = (stateno = 410) 
trigger6 = movecontact

[State -1, デム];スタンドon
type = ChangeState
value = 3900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(46) = 0  
triggerall = numhelper(4657) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = var(49) = 10000  ;スタンドonの時
triggerall = NumHelper(10000) = 0 
triggerall = NumHelper(1001) = 0
triggerall = PalNo != 12 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = movecontact
trigger3 = stateno = 180   ;挑発
;---------------------------------------------------------------------------
;弱ヘビ
[State -1, magic]
type = null;Helper
stateno = 2000
id = 2000
pos = 20,-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(2000) = 0 
trigger1 = command = "x" 

;中ヘビ
[State -1, magic]
type = null;Helper
stateno = 2010
id = 2010
pos = ifelse(frontedgebodydist<=130,frontedgebodydist,130),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(2010) = 0 
trigger1 = command = "y" 

;強ヘビ
[State -1, magic]
type = null;Helper
stateno = 2020
id = 2020
pos = ifelse(frontedgebodydist<=240,frontedgebodydist,240),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(2020) = 0 
trigger1 = command = "b" 
;---------------------------------------------------------------------------
;レクイエムの片鱗
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6666
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(10000) = 0
triggerall = var(49) != 10000
trigger1 = command = "henrin_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "henrin_y"
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = command = "henrin_z"
trigger3 = statetype != A
trigger3 = ctrl

;ドコヘモムカウコトハナイ… ON時
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 16666
triggerall = var(59)<=0&& RoundState = 2
triggerall = power >= 500
triggerall = var(49) = 10000
triggerall = PalNo != 12
trigger1 = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = command = "c"
trigger3 = statetype != A
trigger3 = ctrl

;ドコヘモムカウコトハナイ… ON時 空中
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 17777
triggerall = var(59)<=0&& RoundState = 2
triggerall = power >= 500
triggerall = var(49) = 10000
triggerall = PalNo != 12
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = statetype = A
trigger2 = ctrl
trigger3 = command = "c"
trigger3 = statetype = A
trigger3 = ctrl
;---------------------------------------------------------------------------
;感覚の暴走　s
;[State -1, Stand Strong Punch]
;type = ChangeState
;value = 11300
;triggerall = var(49) = 10000
;triggerall = command = "FDDF_x"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = (stateno = 10200) && time > 5
;trigger2 = movecontact
;---------------------------------------------------------------------------
;木の根 弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "nekko_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;木の根 弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 10420) && time >= 5
;trigger3 = (stateno = 10450) && time >= 15
;trigger4 = (stateno = 10280) && time > 8 && movecontact
;---------------------------------------------------------------------------
;木の根 中
[State -1, Stand Strong Punch]
type = ChangeState
value = 1103
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0 
triggerall = var(49) != 10000
triggerall = command = "nekko_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;木の根 中　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11110
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 10420) && time >= 5
;trigger3 = (stateno = 10450) && time >= 15
;trigger4 = (stateno = 10280) && time > 8 && movecontact
;---------------------------------------------------------------------------
;木の根 強
[State -1, Stand Strong Punch]
type = ChangeState
value = 1105
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0 
triggerall = var(49) != 10000
triggerall = command = "nekko_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;木の根 強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11140
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 10420) && time >= 5
;trigger3 = (stateno = 10450) && time >= 15
;trigger4 = (stateno = 10280) && time > 8 && movecontact
;---------------------------------------------------------------------------
;サソリ　off
[State -1, Stand Strong Punch]
type = ChangeState
value = 1600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command != "holddown"
trigger1 = command = "fish_x" || command = "fish_y" || command = "fish_b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;サソリ 弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = var(59)<=0&& RoundState = 2 
trigger1 = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;サソリ s air　弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 11250
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_x" 
trigger1 = prevstateno != [11250,11270]
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;サソリ 中　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = var(59)<=0&& RoundState = 2 
trigger1 = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;サソリ s air　中
[State -1, Stand Strong Punch]
type = ChangeState
value = 11260
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_y" 
trigger1 = prevstateno != [11250,11270]
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;サソリ 強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = var(59)<=0&& RoundState = 2 
trigger1 = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;サソリ s air　強
[State -1, Stand Strong Punch]
type = ChangeState
value = 11270
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_b" 
trigger1 = prevstateno != [11250,11270]
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;無駄無駄（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = command = "QCF_x"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;無駄無駄　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10205) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10215) && time > 5
trigger5 = movecontact
trigger6 = (stateno = 10250) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10280) && time > 18
trigger7 = movecontact
trigger8 = (stateno = 10400) && time >= 5
trigger8 = movecontact
trigger9 = (stateno = 10410) && time >= 5
trigger9 = movecontact
trigger10 = (stateno = 10420) && time >= 5
trigger10 = movecontact
trigger11 = (stateno = 10450) && time >= 5
trigger11 = movecontact
;---------------------------------------------------------------------------
;無駄無駄（中）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1003
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = command = "QCF_y"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;無駄無駄 S　中
[State -1, Stand Strong Punch]
type = ChangeState
value = 11010
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10205) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10215) && time > 5
trigger5 = movecontact
trigger6 = (stateno = 10250) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10280) && time > 18
trigger7 = movecontact
trigger8 = (stateno = 10400) && time >= 5
trigger8 = movecontact
trigger9 = (stateno = 10410) && time >= 5
trigger9 = movecontact
trigger10 = (stateno = 10420) && time >= 5
trigger10 = movecontact
trigger11 = (stateno = 10450) && time >= 5
trigger11 = movecontact
;---------------------------------------------------------------------------
;無駄無駄（強）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1005
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = command = "QCB_b"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;無駄無駄 S　強
[State -1, Stand Strong Punch]
type = ChangeState
value = 11040
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10205) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10215) && time > 5
trigger5 = movecontact
trigger6 = (stateno = 10250) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10280) && time > 18
trigger7 = movecontact
trigger8 = (stateno = 10400) && time >= 5
trigger8 = movecontact
trigger9 = (stateno = 10410) && time >= 5
trigger9 = movecontact
trigger10 = (stateno = 10420) && time >= 5
trigger10 = movecontact
trigger11 = (stateno = 10450) && time >= 5
trigger11 = movecontact
;---------------------------------------------------------------------------
;無駄無駄 S　空中
[State -1, Stand Strong Punch]
type = ChangeState
value = 11500
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCB_b"
triggerall = command != "holddown"
triggerall = var(32) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 10600) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10610) && time > 4
trigger3 = movecontact
trigger4 = (stateno = 10640) && time > 5
trigger4 = movecontact
;trigger5 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;空中キックx 　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = statetype = A
triggerall = command = "QCF_x"
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact

;空中キックy 　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1910
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = statetype = A
triggerall = command = "QCF_y"
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact

;空中キックz　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1920
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = statetype = A
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact

;空中キック S
[State -1, Stand Strong Punch]
type = ChangeState
value = 11900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = 10600) && movecontact
trigger3 = (stateno = 10610) && movecontact
trigger4 = (stateno = 10640) && movecontact
trigger5 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(10000) = 0
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = (stateno = 151 || stateno = 153)
;---------------------------------------------------------------------------
;ガーキャンS
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = (stateno = 151 || stateno = 153)
;===========================================================================
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 195   ;挑発
trigger3 = stateno = 1000 || stateno = 1003 || stateno = 1005
trigger4 = stateno = 1100 || stateno = 1103 || stateno = 1105
trigger5 = stateno = 11000 || stateno = 11010 || stateno = 11040
trigger6 = stateno = 11100 || stateno = 11110 || stateno = 11140
trigger7 = stateno = 240
trigger8 = stateno = 1600
trigger9 = stateno = 6666
trigger10 = stateno = 10440
trigger11 = stateno = 11004
trigger12 = stateno = 11200
value = 700
;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59)<=0&& RoundState = 2 
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59)<=0&& RoundState = 2 
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;投げ on
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(49) = 10000
triggerall = (command = "holdfwd" || command = "holdback") && command = "b"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = var(49) = 0
triggerall = (command = "holdfwd" || command = "holdback") && command = "b"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = NumHelper(10000) = 0 
triggerall = NumHelper(2) = 0 
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
triggerall = statetype != A && ctrl
triggerall = NumHelper(29) = 0 
trigger1 = command = "z"
trigger2 = command = "x+y+z"
value = 30


[State -1, 回り込み]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) = 10000
triggerall = statetype != A && ctrl
triggerall = NumHelper(29) = 0 
trigger1 = command = "z"
trigger2 = command = "x+y+z"
value = 10030
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0
triggerall = power >= 250
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4100

;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0
triggerall = power >= 250
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;---------------------------------------------------------------------------
;アドバンシング（立ち）S
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = power >= 250
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 14000

;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）S
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = power >= 250
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 14005
;---------------------------------------------------------------------------
[State -1, 空中ダッシュ]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = !var(18)
triggerall = stateno != 116
triggerall = command = "FF"
trigger1 = ctrl 
;trigger2 = stateno = 11901 && time >= 5
value = 116
;---------------------------------------------------------------------------
[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = !var(18)
triggerall = stateno != 117
triggerall = command = "BB"
trigger1 = ctrl
trigger2 = stateno = 132
;trigger3 = stateno = 11901 && time >= 5
value = 117
;---------------------------------------------------------------------------
[State -1,2段ジャンプ]
type = ChangeState
value = 41
triggerall = var(59)<=0&& RoundState = 2 
;triggerall = !Ishelper	     ;プレイヤーがヘルパーでないとき
triggerall = var(49) = 10000 ;スタンドモードのとき
triggerall = var(4) = 1      ;2段ｼﾞｬﾝﾌﾟ可能の時。var(4)は2段ｼﾞｬﾝﾌﾟした瞬間０になり、着地すると１になる
triggerall = command = "up";"holdup"
triggerall = stateno = 50 || stateno = 10822;&& time >= 25
trigger1 = ctrl
triggerall = command != "upc"
;===========================================================================
;スタンド出現攻撃
[State -1, Stand Strong Punch]
type = ChangeState
value = 10280
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "syutugen"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105

;スタンド出現攻撃B
[State -1, Stand Strong Punch]
type = ChangeState
value = 10280
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "syutugen"
triggerall = statetype != A
trigger1 = stateno = 200 && time > 4
trigger2 = stateno = 210 && time > 5
trigger3 = stateno = 400 && time > 4
trigger4 = stateno = 410 && time > 5
trigger5 = stateno = 440 && time > 7
;===========================================================================
; 通常攻撃技
;---------------------------------------------------------------------------
;発現前立ち弱 
[State -1, Stand Strong Punch]
type = ChangeState
value = 10225
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(10000) = 0
triggerall = command = "x+a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;発現立ち弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(10000) = 0
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = (stateno = 400) && time >= 5

;前立ち弱 S
[State -1, Stand Strong Punch]
type = ChangeState
value = 10205
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10220) && movecontact
trigger4 = (stateno = 10400) && time > 5
trigger5 = (stateno = 10420) && movecontact
trigger6 = stateno = [100,105]

;立ち弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x" || command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10220) && movecontact
trigger4 = (stateno = 10400) && time > 5
trigger5 = (stateno = 10420) && movecontact
trigger6 = stateno = [100,105]
;---------------------------------------------------------------------------
;発現前立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10255
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = command = "y+a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;発現立ち中　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10250
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 4
trigger4 = stateno = [100,105]

;前立ち中 S
[State -1, Stand Strong Punch]
type = ChangeState
value = 10215
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 3
trigger3 = (stateno = 10205) && time > 3
trigger4 = (stateno = 10210) && time > 4
trigger5 = (stateno = 10220) && movecontact
trigger6 = (stateno = 10225) && movecontact
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10420) && movecontact
trigger9 = stateno = [100,105]

;立ち中　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 3
trigger3 = (stateno = 10205) && time > 3
trigger4 = (stateno = 10220) && movecontact
trigger5 = (stateno = 10225) && movecontact
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10420) && movecontact
trigger8 = stateno = [100,105]
;---------------------------------------------------------------------------
;発現立ち強　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10270
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = (stateno = 400) && time > 6
trigger5 = stateno = [100,105]

;立ち強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10240
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 4
trigger3 = (stateno = 10210) && time > 3
trigger4 = (stateno = 10205) && time > 3
trigger5 = (stateno = 10215) && time > 3
trigger6 = (stateno = 10220) && movecontact
trigger7 = (stateno = 10225) && movecontact
trigger8 = (stateno = 10250) && movecontact
trigger9 = (stateno = 10255) && movecontact
trigger10 = (stateno = 10400) && time >= 4
trigger11 = (stateno = 10420) && movecontact
trigger12 = stateno = [100,105]
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現しゃがみ弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10420
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;しゃがみ弱
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 7
trigger3 = stateno = [100,105]

;しゃがみ弱 S
[State -1, Crouching Light Punch]
type = ChangeState
value = 10400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x" || command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 10400) && time >= 5
trigger3 = (stateno = 10420) && movecontact
trigger4 = stateno = [100,105]
;---------------------------------------------------------------------------
;発現しゃがみ中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10450
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = command = "y+a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;しゃがみ中
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 5
trigger3 = stateno = [100,105]

;しゃがみ中S
[State -1, Crouching Strong Punch]
type = ChangeState
value = 10410
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 10400) && time >= 5
trigger3 = (stateno = 10420) && movecontact
trigger4 = stateno = [100,105]
;---------------------------------------------------------------------------
;しゃがみ強
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 400) && time >= 5
trigger4 = stateno = [100,105]

;しゃがみ強S
[State -1, Crouching Strong Kick]
type = ChangeState
value = 10440
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10441) = 0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
;---------------------------------------------------------------------------
;発現空中弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 10620
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = NumHelper(10000) = 0 
triggerall = numhelper(1001) = 0
triggerall = command = "x+a"
triggerall = statetype = A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl

;空中弱
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;空中弱S
[State -1, Jump Light Punch]
type = ChangeState
value = 10600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10650
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(10000) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "y+a"
triggerall = statetype = A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl

;空中中
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;空中中S
[State -1, Jump Strong Punch]
type = ChangeState
value = 10610
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中強
[State -1, Stand Strong Punch]
type = ChangeState
value = 10670
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(10000) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "z+a"
triggerall = statetype = A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl

;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

;空中強S
[State -1, Jump Strong Punch]
type = ChangeState
value = 10640
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10600 || stateno = 10610
trigger2 = movecontact
;===========================================================================
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = !var(49)
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S;!= A    ;S, C, A(立ち、しゃがみ、空中
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = NumHelper(2) = 0 ;SFがでてないとき
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16001
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（空中）
[State -1, Taunt]
type = ChangeState
value = 16002
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
triggerall = PalNo != 11 || fvar(1) = 80
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 830
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(5656) = 0 
triggerall = var(47) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S
triggerall = PalNo != 12
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16004
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(5656) = 0 
triggerall = var(47) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
triggerall = PalNo != 12
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（空中）
[State -1, Taunt]
type = ChangeState
value = 16005
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(5656) = 0 
triggerall = var(47) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
triggerall = PalNo != 12
trigger1 = ctrl
ignorehitpause = 0
;AI--------------------------------------------------------------------------

[State -1, AI起動用ヘルパー]
type=helper
trigger1 = !ishelper
trigger1 = !Numhelper(30005+id)
trigger1 = !NumProjID(30005) && !NumProjID(30006)
trigger1 = roundstate=2
trigger1 = alive
trigger1 = ctrl||movetype!=I||stateno = 40
helpertype=normal
name = "ushiro"
stateno = 30005
ID = 30005+id
pos = 0,9999
keyctrl = 1
;pausemovetime = 2147483647
;supermovetime = 2147483647
persistent = 0

;飛び道具検出用
[State -1, ]
type=helper
triggerall = !ishelper
triggerall = numhelper(30006+id)
triggerall = helper(30006+id),var(37)
triggerall = !Numhelper(40005+id)
triggerall = NumEnemy
trigger1 = helper(30006+id),var(3) <= 0
trigger1 = Enemy(0),numproj > 0
trigger2 = helper(30006+id),var(4) < Enemy(0),numhelper
trigger3 = helper(30006+id),var(5) <= 0
trigger3 = Enemy(numenemy=2),numproj > 0
trigger4 = helper(30006+id),var(6) < Enemy(numenemy=2),numhelper
helpertype=normal
name = "P & H"
stateno = 40005
ID = 40005+id
postype = p1
pos = 0,9999
pausemovetime = 2147483647
supermovetime = 2147483647
persistent = 0

;念のため↓も付けておく
[State -1, 関係無いステートに行かないように]
type = changestate
trigger1 = ishelper(30005+id)
trigger1 = stateno != 30005
value = 30005

;AI Command Check
[State -1, AI Command]
Type = VarSet
TriggerAll = Var(59)=0 && !isHelper
trigger1 = command = "AI_01" || command = "AI_02" || command = "AI_03" || command = "AI_04"
trigger2 = command = "AI_05" || command = "AI_06" || command = "AI_07" || command = "AI_08"
trigger3 = command = "AI_09" || command = "AI_10" || command = "AI_11" || command = "AI_12"
trigger4 = command = "AI_13" || command = "AI_14" || command = "AI_15" || command = "AI_16"
trigger5 = command = "AI_17" || command = "AI_18" || command = "AI_19" || command = "AI_20"
Trigger6 = Command = "AI_21" || Command = "AI_22" || Command = "AI_23" || Command = "AI_24"
Trigger7 = Command = "AI_24" || Command = "AI_26" || Command = "AI_27" || Command = "AI_28"
Trigger8 = Command = "AI_29" || Command = "AI_30" || Command = "AI_31" || Command = "AI_32"
Trigger9 = Command = "AI_33" || Command = "AI_34" || Command = "AI_35" || Command = "AI_36"
Trigger10 = Command = "AI_37" || Command = "AI_38" || Command = "AI_39" || Command = "AI_40"
Trigger11 = Command = "AI_41" || Command = "AI_42" || Command = "AI_43" || Command = "AI_44"
Trigger12 = Command = "AI_45" || Command = "AI_46" || Command = "AI_47" || Command = "AI_48"
Trigger13 = Command = "AI_49" || Command = "AI_00"
Trigger14 = Command = "AI_50" || Command = "AI_51" || Command = "AI_52" || Command = "AI_53"
Trigger15 = Command = "AI_54" || Command = "AI_55" || Command = "AI_56" || Command = "AI_57"
Trigger16 = Command = "AI_58" || Command = "AI_59" 
;trigger17 = RoundState = 2  ;常時AI起動トリガー
V = 59
Value = 1
IgnoreHitPause = 1
;---------------------------------------------------------------------------
;無駄無駄ラッシュ S　 ai
[State -1, Stand Strong Punch]
type = ChangeState
value = 13000
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59)=1&& RoundState = 2 
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = P2BodyDist X = [-20,90]
triggerall = P2BodyDist Y >= -80
triggerall = stateno = [50000,50105]
triggerall = statetype != A
triggerall = random<=var(58)*20 
trigger1 = enemynear,stateno = [1000,4999]
trigger2 = enemynear,stateno = [11000,14999]
;---------------------------------------------------------------------------
;空中無駄無駄ラッシュ S　 ai
[State -1, Stand Strong Punch]
type = ChangeState
value = 13500
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59)=1&& RoundState = 2 
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = P2BodyDist X = [-20,90]
triggerall = P2BodyDist Y = [-80,10]
triggerall = stateno = [50000,50105]
triggerall = statetype = A
triggerall = random<=var(58)*20 
trigger1 = enemynear,stateno = [1000,4999]
trigger2 = enemynear,stateno = [11000,14999]
;---------------------------------------------------------------------------
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
triggerall = var(59)=1&& RoundState = 2
triggerall = PalNo = 12
triggerall = PalNo != 11 || fvar(1) = 80
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
triggerall = !var(49)
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;投げ ai
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59) = 1 && RoundState = 2 
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = numhelper(10000) = 0
triggerall = p2bodydist X < 10
triggerall = var(49) != 10000
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*20 
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random<=var(58)*10 
;---------------------------------------------------------------------------
;アドバンシング（立ち）ai
[State -1, Run Back]
type = ChangeState
triggerall = var(49) != 10000
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4100 && prevstateno != 4105
trigger1 = random<=var(58)*8
trigger1 = inguarddist
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）ai
[State -1, Run Back]
type = ChangeState
triggerall = var(49) != 10000
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
triggerall = power >= 250
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4100 && prevstateno != 4105
trigger1 = random<=var(58)*8
trigger1 = inguarddist
value = 4105
;---------------------------------------------------------------------------
;アドバンシングs（立ち）ai
[State -1, Run Back]
type = ChangeState
triggerall = var(49) = 10000
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 14000 && prevstateno != 14005
trigger1 = random<=var(58)*8
trigger1 = inguarddist
ignorehitpause = 1
value = 14000
;---------------------------------------------------------------------------
;アドバンシングs（しゃがみ）ai
[State -1, Run Back]
type = ChangeState
triggerall = var(49) = 10000
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
triggerall = power >= 250
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 14000 && prevstateno != 14005
trigger1 = random<=var(58)*8
trigger1 = inguarddist
value = 14005
;---------------------------------------------------------------------------
;木の根 Sp ai
[State -1, Stand Strong Punch]
type = ChangeState
value = 3150
triggerall = power >= 1000
TriggerAll= EnemyNear,StateType != L
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(10000) = 0
triggerall = var(49) != 10000
triggerall = P2BodyDist X = [80,150]
triggerall = Random <= var(58)*1
trigger1 = (stateno = [50000,50020])
trigger1 = statetype != A

;木の根 Sp son ai
[State -1, Stand Strong Punch]
type = ChangeState
value = 13150
triggerall = power >= 1000
TriggerAll= EnemyNear,StateType != L
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = P2BodyDist X >= 180
triggerall = Random <= var(58)*2
trigger1 = (stateno = [50000,50020])
trigger1 = statetype != A
;---------------------------------------------------------------------------
;サソリ on ai
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
TriggerAll= EnemyNear,StateType != L
triggerall = var(59) = 1 && RoundState = 2 
trigger1 = (stateno = [50000,50020])
trigger1 = numhelper(11201) = 0
triggerall = numhelper(10000) = 0
triggerall = var(49) = 10000
triggerall = P2BodyDist X = [160,280]
triggerall = Random <= var(58)*7
trigger1 = statetype = S 
;---------------------------------------------------------------------------
;しゃがみ強S
[State -1, Crouching Strong Kick]
type = ChangeState
value = 10440
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(10441) = 0
triggerall = var(49) = 10000
trigger1 = p2statetype != A 
trigger1 = p2statetype != L  
trigger1 = P2BodyDist X = [70,110] 
trigger1 = random<=var(58)*5
trigger1 = (stateno = [50000,50020])
trigger1 = statetype != A
;---------------------------------------------------------------------------
;弱ヘビ ai
[State -1, magic]
type = null;Helper
stateno = 2000
id = 2000
pos = 20,-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(2000) = 0 
trigger1 = var(58)>9
trigger1 = random<=var(58)*5

;中ヘビ ai
[State -1, magic]
type = null;Helper
stateno = 2010
id = 2010
pos = ifelse(frontedgebodydist<=130,frontedgebodydist,130),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(2010) = 0 
trigger1 = var(58)>9
trigger1 = random<=var(58)*5

;強ヘビ ai
[State -1, magic]
type = null;Helper
stateno = 2020
id = 2020
pos = ifelse(frontedgebodydist<=240,frontedgebodydist,240),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(2020) = 0 
trigger1 = var(58)>9
trigger1 = random<=var(58)*5
;---------------------------------------------------------------------------
;ガーキャン ai
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)=1&& RoundState = 2 
trigger1 = p2statetype != L && P2BodyDist X = [0,80] 
triggerall = var(49) != 10000
triggerall = numhelper(10000) = 0
triggerall = statetype != A
trigger1 = p2movetype = A
trigger1 = enemynear,animtime < -10 || enemynear,pos y < 0-enemynear,vel y*10
trigger1 = random<=var(58)*3
trigger1 = (stateno = [150,153])
;---------------------------------------------------------------------------
;ガーキャンS ai
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(59)=1&& RoundState = 2 
trigger1 = p2statetype != L && P2BodyDist X = [0,80] 
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = p2movetype = A
trigger1 = enemynear,animtime < -10 || enemynear,pos y < 0-enemynear,vel y*10
trigger1 = random<=var(58)*10
trigger1 = (stateno = [150,153])