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
;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。

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
name = "nesp"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "dem"
command = ~D, B, a
time = 20

;-| 必殺技 |-----------------------------------------------------
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
name = "sakana_x"
command = ~F, D, DF, x

[Command]
name = "sakana_y"
command = ~F, D, DF, y

[Command]
name = "sakana_z"
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
name = "fish_x"
command = ~F, D, DF, x

[Command]
name = "fish_y"
command = ~F, D, DF, y

[Command]
name = "fish_b"
command = ~F, D, DF, z

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
command = ~D, DB, B, x

[Command]
name = "nekko_y"
command = ~D, DB, B, y

[Command]
name = "nekko_b"
command = ~D, DB, B, z

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, z

[Command]
name = "jumoku_x"
command = ~D,D,x
time = 10

[Command]
name = "jumoku_y"
command = ~D,D,y
time = 10

[Command]
name = "jumoku_z"
command = ~D,D,z
time = 10

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
triggerall = power >= 3000
triggerall = var(49) = 10000
triggerall = command = "mudamudamudamuda" || command = "ryaku3"
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
trigger8 = (stateno = 10250) && time > 6
trigger8 = movecontact
trigger9 = (stateno = 10255) && time > 5
trigger9 = movecontact
trigger10 = (stateno = 10410) && time > 6
trigger10 = movecontact
trigger11 = (stateno = 10450) && time > 6
trigger11 = movecontact
ignorehitpause = 0
;---------------------------------------------------------------------------
;無駄無駄ラッシュ（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = var(28) = 0  ;ループ防止
triggerall = command = "TripleKFPalm" || command = "ryaku1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
ignorehitpause = 0

;無駄無駄ラッシュ S　
[State -1, Stand Strong Punch]
type = ChangeState
value = 13000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = command = "TripleKFPalm" || command = "ryaku1"
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
trigger6 = (stateno = 10250) && time > 6
trigger6 = movecontact
trigger7 = (stateno = 10255) && time > 5
trigger7 = movecontact
trigger8 = (stateno = 10410) && time > 6
trigger8 = movecontact
trigger9 = (stateno = 10450) && time > 6
trigger9 = movecontact
ignorehitpause = 0
;---------------------------------------------------------------------------
;木の根 Sp
[State -1, Stand Strong Punch]
type = ChangeState
value = 3150
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = numhelper(11101) = 0
triggerall = var(49) != 10000
triggerall = command = "nesp" || command = "ryaku2"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 410) && movecontact
ignorehitpause = 0

;木の根 Sp son
[State -1, Stand Strong Punch]
type = ChangeState
value = 13150
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nesp" || command = "ryaku2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10210) && time > 10
trigger3 = (stateno = 10205) && time > 5
trigger4 = (stateno = 10215) && time > 5
trigger5 = (stateno = 10220) && time > 5
trigger6 = (stateno = 10225) && time > 5
trigger7 = (stateno = 10250) && time > 5
ignorehitpause = 0
;------------------------------------------------------------------------------

[State -1, デム];スタンドoff
type = ChangeState
value = 3900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(43) = 0  
triggerall = numhelper(4657) = 0
triggerall = command = "dem"
triggerall = power >= 1000
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 180 ;挑発
trigger3 = (stateno = 200) && time > 5
trigger4 = (stateno = 210) && time > 5
trigger5 = (stateno = 400) 
trigger5 = movecontact
trigger6 = (stateno = 410) 
trigger6 = movecontact
ignorehitpause = 0

[State -1, デム];スタンドon
type = ChangeState
value = 3900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(43) = 0  
triggerall = numhelper(4657) = 0
triggerall = command = "dem"
triggerall = power >= 1000
triggerall = var(49) = 10000  ;スタンドonの時 
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = movecontact
trigger3 = stateno = 180   ;挑発
ignorehitpause = 0
;---------------------------------------------------------------------------
;ミスタ
[State -1, Light Kung Fu Palm]
type = null;ChangeState
value = 8000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(8014) = 0 
triggerall = NumHelper(8010) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(55) = 0
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "c"
ignorehitpause = 0
;---------------------------------------------------------------------------
;弱ヘビ
[State -1, magic]
type = Helper
stateno = 2000
id = 2000
pos = 20,-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2000) = 0 
trigger1 = var(59)<=0&& RoundState = 2 
trigger1 = command = "x" 
trigger2 = var(59)<=1&& RoundState = 2
trigger2 = var(58) = 12
trigger2 = command = "x" 
ignorehitpause = 0

;中ヘビ
[State -1, magic]
type = Helper
stateno = 2010
id = 2010
pos = ifelse(frontedgebodydist<=130,frontedgebodydist,130),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2010) = 0
trigger1 = var(59)<=0&& RoundState = 2 
trigger1 = command = "y" 
trigger2 = var(59)<=1&& RoundState = 2
trigger2 = var(58) = 12
trigger2 = command = "y" 
ignorehitpause = 0

;強ヘビ
[State -1, magic]
type = Helper
stateno = 2020
id = 2020
pos = ifelse(frontedgebodydist<=240,frontedgebodydist,240),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2020) = 0
trigger1 = var(59)<=0&& RoundState = 2 
trigger1 = command = "z" 
trigger2 = var(59)<=1&& RoundState = 2
trigger2 = var(58) = 12
trigger2 = command = "z" 
ignorehitpause = 0
;---------------------------------------------------------------------------
;レクイエムの片鱗
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6666
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
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
ignorehitpause = 0
;---------------------------------------------------------------------------
;ピラニア 弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11201) = 0
triggerall = numhelper(10441) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;ピラニア 中　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11201) = 0
triggerall = numhelper(10441) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;ピラニア 強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11201) = 0
triggerall = numhelper(10441) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;空中キック 　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = statetype = A
triggerall = command = "QCF_x"
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact
ignorehitpause = 0

;空中キック 　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1910
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = statetype = A
triggerall = command = "QCF_y" 
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact
ignorehitpause = 0

;空中キック 　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1920
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = statetype = A
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 640) && movecontact
ignorehitpause = 0

;空中キック S
[State -1, Stand Strong Punch]
type = ChangeState
value = 11900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCB_b"
trigger1 = ctrl
trigger2 = stateno = 10600 || stateno = 10610 || stateno = 10640
trigger2 = movecontact
ignorehitpause = 0
;---------------------------------------------------------------------------
;木の根 弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(29) = 0
triggerall = command = "nekko_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5
ignorehitpause = 0

;木の根 弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10420) && time >= 6
trigger3 = (stateno = 10450) && time > 10
ignorehitpause = 0
;---------------------------------------------------------------------------
;木の根 中
[State -1, Stand Strong Punch]
type = ChangeState
value = 1103
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(29) = 0
triggerall = command = "nekko_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5
ignorehitpause = 0

;木の根 中　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11110
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10420) && time >= 6
trigger3 = (stateno = 10450) && time > 10
ignorehitpause = 0
;---------------------------------------------------------------------------
;木の根 強
[State -1, Stand Strong Punch]
type = ChangeState
value = 1105
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = var(29) = 0
triggerall = command = "nekko_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5
ignorehitpause = 0

;木の根 強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11140
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10420) && time >= 6
trigger3 = (stateno = 10450) && time > 10
ignorehitpause = 0
;---------------------------------------------------------------------------
;トビウオ　off
[State -1, Stand Strong Punch]
type = ChangeState
value = 1600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(1600) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
trigger1 = command = "sakana_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "sakana_y"
trigger2 = statetype = S
trigger2 = ctrl
trigger3 = command = "sakana_z"
trigger3 = statetype = S
trigger3 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;植物生成 F
[State -1, Stand Strong Punch]
type = ChangeState
value = 1406
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1401) = 0
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "flower_f"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;植物生成 B
[State -1, Stand Strong Punch]
type = ChangeState
value = 1400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1401) = 0
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "flower_b"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;植物生成 N
[State -1, Stand Strong Punch]
type = ChangeState
value = 1405
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1401) = 0
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;テントウ虫生成
[State -1, Stand Strong Punch]
type = ChangeState
value = 11420
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11421) < 2
triggerall = var(49) = 10000
triggerall = command = "flower_f"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;カエル生成
[State -1, Stand Strong Punch]
type = ChangeState
value = 11400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(11401) < 3
triggerall = var(49) = 10000
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;無駄無駄（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCF_x"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 210) && time >= 6
trigger3 = (stateno = 410) && time >= 7
ignorehitpause = 0

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
trigger6 = (stateno = 10225) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10250) && time > 7
trigger7 = movecontact
trigger8 = (stateno = 10255) && time > 5
trigger8 = movecontact
trigger9 = (stateno = 10410) && time > 6
trigger9 = movecontact
ignorehitpause = 0
;---------------------------------------------------------------------------
;無駄無駄（中）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1003
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCF_y"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 6
trigger3 = (stateno = 410) && time >= 7
ignorehitpause = 0

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
trigger6 = (stateno = 10225) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10250) && time > 7
trigger7 = movecontact
trigger8 = (stateno = 10255) && time > 5
trigger8 = movecontact
trigger9 = (stateno = 10410) && time > 6
trigger9 = movecontact
trigger10 = (stateno = 10450) && time > 6
trigger10 = movecontact
ignorehitpause = 0
;---------------------------------------------------------------------------
;無駄無駄（強）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1005
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCB_b"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 6
trigger3 = (stateno = 410) && time >= 7
ignorehitpause = 0

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
trigger6 = (stateno = 10225) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10250) && time > 7
trigger7 = movecontact
trigger8 = (stateno = 10255) && time > 5
trigger8 = movecontact
trigger9 = (stateno = 10410) && time > 6
trigger9 = movecontact
trigger10 = (stateno = 10450) && time > 6
trigger10 = movecontact
ignorehitpause = 0
;---------------------------------------------------------------------------
;ON樹木生成
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 12100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = command = "jumoku_x" || command = "jumoku_y" || command = "jumoku_z"
triggerall = var(49) = 10000
trigger1 = statetype != A
trigger1 = ctrl
ignorehitpause = 0

;OFF樹木生成
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = command = "jumoku_x" || command = "jumoku_y" || command = "jumoku_z"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = statetype != A
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCB_b"
trigger1 = (stateno = [150,153])
;---------------------------------------------------------------------------
;ガーキャンS
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCB_b"
trigger1 = (stateno = [150,153])
;===========================================================================
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 180   ;挑発
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
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 0
triggerall = (command = "holdfwd" || command = "holdback") && command = "b"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = NumHelper(1001) = 0 
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
triggerall = NumHelper(30) = 0
trigger1 = command = "z"
trigger2 = command = "x+y+z"
value = 30
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
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
; 通常攻撃技
;---------------------------------------------------------------------------
;発現前立ち弱 
[State -1, Stand Strong Punch]
type = ChangeState
value = 10225
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "x+a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
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
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;前立ち弱
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 5

;立ち弱
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 10
trigger3 = (stateno = 400) && time >= 5
trigger4 = stateno = [100,105]

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
trigger3 = (stateno = 10220) && time > 5
trigger4 = stateno = [100,105]
trigger5 = (stateno = 10400) && time >= 8
trigger5 = (stateno = 10400) && movecontact

;立ち弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = (stateno = 10220) && time > 5
trigger3 = stateno = [100,105]

;立ち弱　s 省略版
[State -1, Stand Strong Punch]
type = ChangeState
value = 10200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = (stateno = 10220) && time > 5
trigger3 = stateno = [100,105]
;---------------------------------------------------------------------------

;発現前立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10255
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
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
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 6
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5

;立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(2) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 205) && time >= 10
trigger4 = (stateno = 400) && time > 4
trigger5 = stateno = [100,105]

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
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10205) && time > 5
trigger4 = (stateno = 10210) && time > 6
trigger5 = (stateno = 10220) && time > 5
trigger6 = (stateno = 10225) && time > 5
trigger7 = (stateno = 10250) && time > 6
trigger8 = stateno = [100,105]
trigger9 = (stateno = 10400) && time >= 8
trigger9 = (stateno = 10400) && movecontact

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
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10205) && time > 5
trigger4 = (stateno = 10220) && time > 5
trigger5 = (stateno = 10225) && time > 5
trigger6 = stateno = [100,105]
trigger7 = (stateno = 10400) && time >= 8
trigger7 = (stateno = 10400) && movecontact
;---------------------------------------------------------------------------
;スタンド発現攻撃　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5
ignorehitpause = 0
;---------------------------------------------------------------------------
;発現立ち強　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10270
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "z+a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 410) && time > 5
ignorehitpause = 0

;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4
trigger3 = (stateno = 205) && time > 5
trigger4 = (stateno = 230) && time > 6
trigger5 = (stateno = 400) && time > 4
trigger6 = stateno = [100,105]

;立ち強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10240
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10220) && time > 5
trigger7 = (stateno = 10225) && time > 5
trigger8 = (stateno = 10250) && time > 5
trigger9 = (stateno = 10255) && time > 6
trigger10 = (stateno = 10400) && time >= 8
trigger11 = (stateno = 10410) && time > 6
trigger12 = (stateno = 10450) && time > 6
trigger13 = stateno = [100,105]
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;発現しゃがみ弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10420
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = statetype != A
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
triggerall = NumHelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 12 
trigger3 = anim = 400
trigger3 = (stateno = 400) && time >= 12
trigger4 = (stateno = 200) && movecontact
trigger5 = anim = 400
trigger5 = (stateno = 400) && movecontact
trigger6 = stateno = [100,105]

;しゃがみ弱 S
[State -1, Crouching Light Punch]
type = ChangeState
value = 10400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = (stateno = 10400) && time >= 8
trigger3 = (stateno = 10400) && movecontact

;しゃがみ弱 S 省略版
[State -1, Crouching Light Punch]
type = ChangeState
value = 10400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = (stateno = 10400) && time >= 8
trigger3 = (stateno = 10400) && movecontact
;---------------------------------------------------------------------------
;発現しゃがみ中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10450
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = command = "holddown"
triggerall = statetype != A
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
triggerall = NumHelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 6
trigger3 = (stateno = 205) && time >= 7
trigger4 = (stateno = 400) && time >= 5
trigger5 = stateno = [100,105]

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
trigger2 = stateno = [100,105]
trigger3 = (stateno = 10400) && time >= 6
trigger3 = (stateno = 10400) && movecontact
;---------------------------------------------------------------------------
;しゃがみ強
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = [100,105]

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
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = numhelper(1001) = 0
triggerall = command = "x+a"
triggerall = statetype = A
trigger1 = ctrl

;空中弱
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(2) = 0
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
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;空中弱S 省略版
[State -1, Jump Light Punch]
type = ChangeState
value = 10600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10650
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "y+a"
triggerall = statetype = A
trigger1 = ctrl

;空中中
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(2) = 0
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
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "z+a"
triggerall = statetype = A
trigger1 = ctrl

;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 ;jump_x or jump_a
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
triggerall = NumHelper(2) = 0 
triggerall = !var(49)
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S;!= A    ;S, C, A(立ち、しゃがみ、空中
trigger1 = NumHelper(2) = 0 ;SFがでてないとき
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16001
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（空中）
[State -1, Taunt]
type = ChangeState
value = 16002
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
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
value = 830
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0
;AI-----------------------------------------------------------------------
;AI Command Check
[State -1, AI Command]
Type = VarSet
TriggerAll = Var(59)=0 && !isHelper && var(12)
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
Trigger16 = Command = "AI_58"
trigger17 = Helper(50000),var(59)
;trigger18 = RoundState = 2  ;常時AI起動トリガー　
V = 59
Value = 1
IgnoreHitPause = 1---
;------------------------------------------------------------------------------
;OFF光返し
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(1001) = 0 
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = power >= 3000
triggerall = helper(50000),var(15) >= 42
triggerall = P2MoveType = A
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,80] 
triggerall = P2BodyDist Y = [-100,0] 
triggerall = enemynear,animtime <= -8
TriggerAll= EnemyNear,StateType != A
triggerall = random<=var(58)*40
triggerall = var(58) >= 7
triggerall = inguarddist
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 400
trigger5 = stateno = 410

;ON光返し
[State -1, Stand Strong Punch]
type = ChangeState
value = 13000
triggerall = var(59)=1&& RoundState = 2 
triggerall = power >= 1000
triggerall = var(49) = 10000
Triggerall = helper(50000),var(15) >= 42
triggerall = P2MoveType = A
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,80] 
triggerall = P2BodyDist Y = [-100,0] 
triggerall = enemynear,animtime <= -8
triggerall = random<=var(58)*80
triggerall = var(58) >= 7
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger2 = stateno = 10200
trigger3 = stateno = 10400
;------------------------------------------------------------------------------
;木の根SP
[state -1, ぶっぱ]
type = ChangeState
value = 3150
triggerall = var(59)=1&& RoundState = 2 
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,StateType != A
Triggerall = EnemyNear,MoveType != H
triggerall = Random <= var(58)*5
triggerall = statetype != A
triggerall = power >= 3000
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = var(49) = 0
triggerall = life <= 1000

trigger1 = P2BodyDist X = [130,160] 
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3)

;ON木の根SP
[state -1, ぶっぱ]
type = ChangeState
value = 13150
triggerall = var(59)=1&& RoundState = 2 
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,StateType != A
Triggerall = EnemyNear,MoveType != H
triggerall = Random <= var(58)*5
triggerall = statetype != A
triggerall = power >= 3000
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = life <= 500

trigger1 = P2BodyDist X = [130,160] 
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3)
;---------------------------------------------------------------------------
[State -1, off投げai]
type = ChangeState
value = 900
triggerall = var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = statetype != A
trigger1 = enemynear,ctrl = 1
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*10
trigger2 = enemynear,ctrl = 1
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random<=var(58)*10
trigger3 = enemynear,ctrl = 1
trigger3 = enemynear,animtime <= -10
trigger3 = random<=var(58)*30

[State -1, off投げai]
type = ChangeState
value = 900
triggerall = var(59) = 1 && RoundState = 2
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
triggerall = P2bodydist X = [-30,0]
triggerall = statetype != A
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*15
;---------------------------------------------------------------------------
[State -1, on投げai]
type = ChangeState
value = 800
triggerall = var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = statetype != A
trigger1 = enemynear,ctrl = 1
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*10
trigger2 = enemynear,ctrl = 1
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random<=var(58)*10
trigger3 = enemynear,ctrl = 1
trigger3 = enemynear,animtime <= -10
trigger3 = random<=var(58)*30

[State -1, on投げai]
type = ChangeState
value = 800
triggerall = var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = P2bodydist X = [-30,0]
triggerall = statetype != A
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, 立弱]
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2 
TriggerAll= EnemyNear,StateType != L
TriggerAll = var(49) != 10000
TriggerAll= StateType != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3)
trigger1 = enemynear,stateno != 6664 && enemynear,stateno != 6665
Trigger1 = EnemyNear,StateType = A
trigger1 = random<=var(58)*40
trigger1 = P2BodyDist X = [-30,40] 
trigger1 = P2BodyDist Y = [-70,0] 
;------------------------------------------------------------------------------
[State -1, 立強]
type = ChangeState
value = 240
triggerall = var(59)=1&& RoundState = 2 
TriggerAll= EnemyNear,StateType != L
triggerall = NumHelper(1001) = 0 
TriggerAll = var(49) != 10000
TriggerAll= StateType != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) 
triggerall = var(58) <= 6
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [50,120] 
trigger1 = P2BodyDist Y = [-70,0] 
;------------------------------------------------------------------------------
[State -1, 屈弱]
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2 
TriggerAll= EnemyNear,StateType != L
TriggerAll = var(49) != 10000
TriggerAll= StateType != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3)
TriggerAll= !inguarddist
TriggerAll= !inguarddist
;trigger1 = NumHelper(1001) = 0
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*40
trigger1 = P2BodyDist X = [-20,40]

trigger2 = NumHelper(1001) != 0
trigger2 = enemynear,statetype != A
trigger2 = random<=var(58)*40
trigger2 = P2BodyDist X = [-30,20]

trigger3 = stateno = 100
;trigger3 = NumHelper(1001) = 0
trigger3 = enemynear,statetype != A
trigger3 = random<=var(58)*40
trigger3 = P2BodyDist X = [-30,65]
;------------------------------------------------------------------------------
[State -1, 屈強]
type = ChangeState
value = 440
triggerall = var(59)=1&& RoundState = 2 
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,StateType != A
triggerall = NumHelper(1001) = 0 
TriggerAll = var(49) != 10000
TriggerAll= StateType != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) 
triggerall = var(58) <= 6
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [-20,80] 
;------------------------------------------------------------------------------
;空中中
[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) != 10000
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1= random<=var(58)*80
trigger1 = P2BodyDist X = [-40,30]
trigger1 = pos y >= -50
trigger1 = pos y <= -35

trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2= random<=var(58)*80
trigger2 = P2BodyDist X = [-40,30]
trigger2 = pos y >= -50
trigger2 = pos y <= -35

trigger3 = vel y >= .1
trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*40
trigger3 = P2BodyDist X = [-30,30]
trigger3 = P2BodyDist Y = [-100,100]
;------------------------------------------------------------------------------
;空中強
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) != 10000
triggerall = statetype = A
triggerall = enemynear,movetype != A

trigger1 = vel x <= 0
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1= random<=var(58)*80
trigger1 = P2BodyDist X = [30,110]
trigger1 = pos y >= -90
trigger1 = pos y <= -60
trigger1 = vel y >= 0

trigger2 = vel x <= 0
trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2= random<=var(58)*80
trigger2 = P2BodyDist X = [30,110]
trigger2 = pos y >= -90
trigger2 = pos y <= -60

trigger3 = vel x <= 0
trigger3 = vel y >= .1
trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3= random<=var(58)*40
trigger3 = P2BodyDist X = [0,110]
trigger3 = P2BodyDist Y = [-100,100]

trigger4 = vel x >= 1
trigger4 = vel y >= .1
trigger4 = ctrl
trigger4 = enemynear,statetype = S
trigger4 = random<=var(58)*80
trigger4 = P2BodyDist X = [30,140]
trigger4 = pos y >= -75
trigger4 = pos y <= -60

trigger5 = vel x >= 1
trigger5 = vel y >= .1
trigger5 = ctrl
trigger5 = enemynear,statetype = C
trigger5= random<=var(58)*80
trigger5 = P2BodyDist X = [30,140]
trigger5 = pos y >= -75
trigger5 = pos y <= -60
trigger5 = vel y >= 0

trigger6 = vel x >= 1
trigger6 = vel y >= .1
trigger6 = ctrl
trigger6 = enemynear,statetype = A
trigger6= random<=var(58)*40
trigger6 = P2BodyDist X = [30,140]
trigger6 = P2BodyDist Y = [-100,100]
;------------------------------------------------------------------------------
[State -1, ON立弱]
type = ChangeState
value = 10200
triggerall = var(59)=1&& RoundState = 2 
TriggerAll= EnemyNear,StateType != L
TriggerAll = var(49) = 10000
TriggerAll= StateType != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3)
trigger1 = enemynear,stateno != 6664 && enemynear,stateno != 6665
trigger1 = enemynear,statetype = A
trigger1= random<=var(58)*40
trigger1 = P2BodyDist X = [-20,30]
trigger1 = P2BodyDist Y = [-80,0]
;------------------------------------------------------------------------------
[State -1, ON立弱]
type = ChangeState
value = 10205
triggerall = var(59)=1&& RoundState = 2 
TriggerAll= EnemyNear,StateType != L
TriggerAll = var(49) = 10000
TriggerAll= StateType != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3)
trigger1 = enemynear,stateno != 6664 && enemynear,stateno != 6665
trigger1 = enemynear,statetype != C
trigger1= random<=var(58)*40
trigger1 = P2BodyDist X = [30,60]
trigger1 = P2BodyDist Y = [-80,0]
;------------------------------------------------------------------------------
;ON空中弱
[State -1, Jump Strong Kick]
type = ChangeState
value = 10600
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1= random<=var(58)*80
trigger1 = P2BodyDist X = [-40,30]
trigger1 = pos y >= -50
trigger1 = pos y <= -25

trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2= random<=var(58)*80
trigger2 = P2BodyDist X = [-40,30]
trigger2 = pos y >= -50
trigger2 = pos y <= -25

trigger3 = vel y >= .1
trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*40
trigger3 = P2BodyDist X = [-30,30]
trigger3 = P2BodyDist Y = [0,50]

;ON空中強
[State -1, Jump Strong Kick]
type = ChangeState
value = 10640
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = enemynear,movetype != A

trigger1 = vel x <= 0
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1= random<=var(58)*80
trigger1 = P2BodyDist X = [30,80]
trigger1 = pos y >= -85
trigger1 = pos y <= -65
trigger1 = vel y >= 0

trigger2 = vel x <= 0
trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2= random<=var(58)*80
trigger2 = P2BodyDist X = [30,80]
trigger2 = pos y >= -85
trigger2 = pos y <= -65

trigger3 = vel x <= 0
trigger3 = vel y >= .1
trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3= random<=var(58)*40
trigger3 = P2BodyDist X = [0,80]
trigger3 = P2BodyDist Y = [-60,60]

trigger4 = vel x >= 1
trigger4 = vel y >= .1
trigger4 = ctrl
trigger4 = enemynear,statetype = S
trigger4 = random<=var(58)*80
trigger4 = P2BodyDist X = [30,80]
trigger4 = pos y >= -85
trigger4 = pos y <= -65

trigger5 = vel x >= 1
trigger5 = vel y >= .1
trigger5 = ctrl
trigger5 = enemynear,statetype = C
trigger5= random<=var(58)*80
trigger5 = P2BodyDist X = [30,80]
trigger5 = pos y >= -85
trigger5 = pos y <= -65
trigger5 = vel y >= 0

trigger6 = vel x >= 1
trigger6 = vel y >= .1
trigger6 = ctrl
trigger6 = enemynear,statetype = A
trigger6= random<=var(58)*40
trigger6 = P2BodyDist X = [30,140]
trigger6 = P2BodyDist Y = [-50,50]
;---------------------------------------------------------------------------
;ON樹木生成
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 12100
triggerall = var(59)=1&& RoundState = 2
TriggerAll= EnemyNear,StateType != L
triggerall = numhelper(1001) = 0
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3)
triggerall = EnemyNear,MoveType != H
trigger1 = var(58) < 8 
trigger1 = EnemyNear,StateType != A
trigger1 = Random <= var(58)*15
trigger1 = P2BodyDist X = [-20,50]

trigger2 = var(58) >= 8
trigger2 = inguarddist
trigger2 = EnemyNear,animtime <-15
trigger2 = P2BodyDist X = [-20,100]
ignorehitpause = 0

;OFF樹木生成
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = var(59)=1&& RoundState = 2
TriggerAll= EnemyNear,StateType != L
triggerall = numhelper(1001) = 0
triggerall = var(49) != 10000
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3)
triggerall = EnemyNear,MoveType != H
trigger1 = var(58) < 8 
trigger1 = EnemyNear,StateType != A
trigger1 = Random <= var(58)*15
trigger1 = P2BodyDist X = [-20,100]

trigger2 = var(58) >= 8
trigger2 = inguarddist
trigger2 = p2Movetype = A
trigger2 = EnemyNear,StateType != A
trigger2 = Random <= var(58)*2
trigger2 = P2BodyDist X = [-20,100]
ignorehitpause = 0
;---------------------------------------------------------------------------
[State -1, ON無駄無駄弱AI];ON時対空
type = ChangeState
value = 11000
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(1001) = 0
Triggerall = EnemyNear,MoveType != H
triggerAll = statetype != A
TriggerAll = !inguarddist
triggerall = ctrl || stateno = 100

trigger1 = EnemyNear,StateType = A
trigger1 = var(58) >= 7
Trigger1 = EnemyNear,vel X <= 0
trigger1 = Random <= var(58)*15
trigger1 = P2BodyDist X = [30,80]
trigger1 = P2BodyDist Y = [-80,0]

trigger2 = EnemyNear,StateType = A
trigger2 = var(58) >= 7
Trigger2 = EnemyNear,vel X > 0
trigger2 = Random <= var(58)*15
trigger2 = P2BodyDist X = [50,100]
trigger2 = P2BodyDist Y = [-80,0]

trigger3 = var(58) <= 6
Trigger3 = EnemyNear,vel X <= 0
trigger3 = Random <= var(58)*5
trigger3 = P2BodyDist X = [50,120]
trigger3 = P2BodyDist Y = [-80,0]
;---------------------------------------------------------------------------
[State -1, ON無駄無駄強AI];ON時対空
type = ChangeState
value = 11040
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(1001) = 0
Triggerall = EnemyNear,MoveType != H
triggerAll = statetype != A
TriggerAll = !inguarddist
triggerall = ctrl || stateno = 100

trigger1 = EnemyNear,StateType = A
trigger1 = var(58) >= 7
Trigger1 = EnemyNear,vel X <= 0
trigger1 = Random <= var(58)*15
trigger1 = P2BodyDist X = [60,110]
trigger1 = P2BodyDist Y = [-80,0]

trigger2 = EnemyNear,StateType = A
trigger2 = var(58) >= 7
Trigger2 = EnemyNear,vel X > 0
trigger2 = Random <= var(58)*15
trigger2 = P2BodyDist X = [110,130]
trigger2 = P2BodyDist Y = [-80,0]

trigger3 = var(58) <= 6
Trigger3 = EnemyNear,vel X <= 0
trigger3 = Random <= var(58)*5
trigger3 = P2BodyDist X = [100,160]
trigger3 = P2BodyDist Y = [-80,0]
;------------------------------------------------------------------------------
[State -1, ON屈弱]
type = ChangeState
value = 10400
triggerall = var(59)=1&& RoundState = 2 
TriggerAll= EnemyNear,StateType != L
triggerall = var(49) = 10000
TriggerAll= StateType != A
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*40
trigger1 = P2BodyDist X = [-20,50] 

trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype != A
trigger2 = random<=var(58)*40
trigger2 = P2BodyDist X = [-20,40] 
;---------------------------------------------------------------------------　
[State -1, OFF無駄無駄]
type = ChangeState
value = 1003
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = statetype != A
triggerall = !inguarddist
triggerall = enemynear,statetype != L
triggerall = var(58) >= 6
trigger1= random<=var(58)*5
trigger1 = ctrl
trigger1 = P2BodyDist X = [90,120] 
trigger1 = P2BodyDist Y = [-100,0]
;---------------------------------------------------------------------------　
[State -1, OFF木の根(近)]
type = ChangeState
value = 1100
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = statetype != A
triggerall = !inguarddist
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = var(47) = 0 || var(47) > 80
trigger1= random<=var(58)*3
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [60,100] 

[State -1, OFF木の根(中)]
type = ChangeState
value = 1103
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = statetype != A
triggerall = !inguarddist
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = var(47) = 0 || var(47) > 80
trigger1= random<=var(58)*3
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [120,160] 

[State -1, OFF木の根(遠)]
type = ChangeState
value = 1105
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = statetype != A
triggerall = !inguarddist
triggerall = p2statetype != L
triggerall = p2statetype != A
triggerall = var(47) = 0 || var(47) > 80
trigger1= random<=var(58)*3
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [180,220] 
;---------------------------------------------------------------------------　
[State -1, OFFエアシュート近]
type = ChangeState
value = 1900
triggerall = var(59)=1&& RoundState = 2 
TriggerAll= p2StateType != L
TriggerAll= p2MoveType != A
triggerall = numhelper(1001) = 0
triggerall = var(49) != 10000
triggerall = statetype = A
trigger1 = ctrl
trigger1= random<=var(58)*10
trigger1 = pos y >= -90
trigger1 = pos y <= -40
trigger1 = P2BodyDist X = [50,90] 
trigger1 = P2BodyDist Y = [20,150] 

[State -1, OFFエアシュート遠]
type = ChangeState
value = 1920
triggerall = var(59)=1&& RoundState = 2 
triggerall = enemynear,statetype != A
TriggerAll= p2StateType != L
TriggerAll= p2MoveType != A
triggerall = numhelper(1001) = 0
triggerall = var(49) != 10000
triggerall = statetype = A
trigger1 = ctrl
trigger1= random<=var(58)*10
trigger1 = pos y >= -90
trigger1 = pos y <= -40
trigger1 = P2BodyDist X = [80,200] 
trigger1 = P2BodyDist Y = [20,150] 
;---------------------------------------------------------------------------　
[State -1, ONエアシュート]
type = ChangeState
value = 11900
triggerall = var(59)=1&& RoundState = 2 
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,StateType != A
TriggerAll= EnemyNear,MoveType != A
TriggerAll= EnemyNear,MoveType != H
triggerall = var(49) = 10000
triggerall = statetype = A
trigger1 = ctrl
trigger1= random<=var(58)*5
trigger1 = pos y >= -90
trigger1 = pos y <= -20
trigger1 = P2BodyDist X = [50,160] 
;------------------------------------------------------------------------------
[State -1, ON弱根]
type = ChangeState
value = 11100
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(11101) = 0
triggerall = statetype != A
triggerall = !inguarddist
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
Triggerall = EnemyNear,MoveType != H
TriggerAll= EnemyNear,MoveType != A
trigger1= random<=var(58)*3
Trigger1 = EnemyNear,vel X <= 0
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 5) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [50,80] 

[State -1, ON中根]
type = ChangeState
value = 11110
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(11101) = 0
triggerall = statetype != A
triggerall = !inguarddist
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
Triggerall = EnemyNear,MoveType != H
TriggerAll= EnemyNear,MoveType != A
trigger1= random<=var(58)*3
Trigger1 = EnemyNear,vel X <= 0
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 5) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [100,130] 

[State -1, ON強根]
type = ChangeState
value = 11110
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(11101) = 0
triggerall = statetype != A
triggerall = !inguarddist
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
Triggerall = EnemyNear,MoveType != H
TriggerAll= EnemyNear,MoveType != A
trigger1= random<=var(58)*3
Trigger1 = EnemyNear,vel X <= 0
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 5) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [140,180] 
;------------------------------------------------------------------------------
[State -1, 植物生成・近]
type = ChangeState
value = 1400
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(1401) = 0
triggerall = NumHelper(1001) = 0 
triggerall = var(49) != 10000
triggerall = var(47) >= 80 || var(47) = 0 || var(47) <= -30
triggerall = var(58) >= 7
Trigger1 = EnemyNear,moveType != A
Trigger1 = EnemyNear,stateType != A
Trigger1 = EnemyNear,vel X <= 0
trigger1 = statetype != A
trigger1 = random<=var(58)*8
trigger1 = P2BodyDist X = [100,120] 
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
ignorehitpause = 0

[State -1, 植物生成・中]
type = ChangeState
value = 1405
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(1401) = 0
triggerall = NumHelper(1001) = 0 
triggerall = var(49) != 10000
triggerall = var(47) >= 80 || var(47) = 0 || var(47) <= -30
triggerall = var(58) >= 7
Trigger1 = EnemyNear,moveType != A
Trigger1 = EnemyNear,stateType != A
Trigger1 = EnemyNear,vel X <= 0
trigger1 = statetype != A
trigger1 = random<=var(58)*12
trigger1 = P2BodyDist X = [120,200] 
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
ignorehitpause = 0
;---------------------------------------------------------------------------
[State -1, トビウオ];牽制
type = ChangeState
value = 1600 
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(1600) = 0
triggerall = var(49) != 10000
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType != H
triggerall = statetype != A
triggerall = var(47) >= 80 || var(47) = 0 || var(47) <= -30
trigger1 = var(58) >= 7
trigger1 = Random <= var(58)*8
trigger1 = ctrl
trigger1 = P2BodyDist X >= 200
trigger1 = P2BodyDist Y = [-80,0]

trigger2 = var(58) <= 6
trigger2 = Random <= var(58)*6
trigger2 = ctrl
trigger2 = P2BodyDist X >= 200
trigger2 = P2BodyDist Y = [-80,0]
;---------------------------------------------------------------------------
[State -1, カウンター]
type = ChangeState
value = 6666
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 0
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType != H
TriggerAll = inguarddist
triggerall = P2BodyDist X = [50,120]
triggerall = P2BodyDist Y = [-150,0]
triggerall = prevstateno != 6666
triggerall = statetype != A
triggerall = numhelper(1001) = 0
triggerall = ctrl || stateno = 100 || stateno = 105
triggerall = var(47) >= 80 || var(47) = 0 || var(47) <= -30
trigger1 = !(enemynear,hitdefattr = SCA,AT)
trigger1 = !(enemynear,hitdefattr = SCA,AP)
trigger1 = var(59) >= 10
trigger1 = Random <= var(58)*10
Trigger1 = EnemyNear,MoveType = A

trigger2 = var(59) <= 9
trigger2 = Random <= var(58)*3
;---------------------------------------------------------------------------
[State -1, ON屈強AI];ON時中距離牽制
type = ChangeState
value = 10440
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
Triggerall = EnemyNear,StateType != A
Triggerall = EnemyNear,MoveType != H
Triggerall = EnemyNear,MoveType != A
TriggerAll = statetype != A
TriggerAll = !inguarddist
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
triggerall = var(47) >= 80 || var(47) = 0 || var(47) <= -30
triggerall = numhelper(10441) = 0
trigger1 = Random <= var(58)*6
trigger1 = P2BodyDist X = [100,150]
;---------------------------------------------------------------------------
[State -1, ピラニア];ON時遠距離牽制
type = ChangeState
value = 11200 
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(11201) = 0
triggerall = numhelper(10441) = 0
triggerall = var(49) = 10000
TriggerAll = statetype != A
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType != H
triggerall = var(47) >= 80 || var(47) = 0 || var(47) <= -30
trigger1 = Random <= var(58)*10
trigger1 = ctrl
trigger1 = P2BodyDist X >= 160
trigger1 = P2BodyDist Y = [-80,0]
;---------------------------------------------------------------------------
[State -1,カエル生成];ON時設置牽制
type = ChangeState
value = 11400
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(11401) < 1
triggerall = numhelper(11421) != 0
triggerall = var(49) = 10000
Triggerall = EnemyNear,Statetype = L
trigger1 = P2BodyDist X >= 60
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, テントウ虫生成];ON時設置牽制
type = ChangeState
value = 11420
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(11421) < 2
triggerall = var(49) = 10000
Triggerall = EnemyNear,Statetype = L
trigger1 = P2BodyDist X >= 60
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [20,70]
triggerall = enemynear,animtime <= -20
triggerall = var(58) >= 10
trigger1= random<=var(58)*8 
trigger1 = statetype = S
trigger1 = (stateno = [150,153])
;--------------------------------------------------------------------------
[State -1, 回り込みAI];OFF時回避
type = null;ChangeState
value = 30
triggerall = var(59)=1&& RoundState = 2 
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType != H
triggerall = var(49) = 0
triggerall = NumHelper(30) = 0 
triggerall = (RoundState = 2) && (Alive)
triggerall = statetype != A 
triggerall = prevstateno != 30

Trigger1 = EnemyNear,animtime < -30 && EnemyNear,alive && P2movetype = A
trigger1 = var(58) >= 10
trigger1 = random<=var(58)*15 
trigger1 = enemynear,statetype = A && P2BodyDist X = [0,80] 
trigger1 = enemynear,movetype = A  
trigger1 = ctrl = 1 || stateno = 100

Trigger2 = EnemyNear,animtime < -30 && EnemyNear,alive
trigger2 = var(58) >= 10
trigger2 = NumHelper(1001) != 0 
trigger2 = random<=var(58)*5 
trigger2 = P2BodyDist X = [0,100] 
trigger2 = enemynear,movetype = A  
trigger2 = ctrl = 1 || stateno = 100
trigger2 = enemynear,animtime <= -20

Trigger3 = EnemyNear,animtime < -30 && EnemyNear,alive && P2movetype = A
trigger3 = var(58) >= 10
trigger3 = random<=var(58)*3
trigger3 = P2BodyDist X = [0,100] 
trigger3 = enemynear,movetype = A  
trigger3 = ctrl = 1 || stateno = 100
trigger3 = enemynear,animtime <= -30

trigger4 = var(58) >= 7
trigger4 = random<=var(58)*25
trigger4 = P2BodyDist X >= 0
trigger4 = var(47) <= 90
trigger4 = var(47) >= -10
trigger4 = var(47) != 0
trigger4 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

Trigger5 = EnemyNear,animtime < -30 && EnemyNear,alive && P2movetype = A
trigger5 = var(58) >= 10
trigger5 = random<=var(58)*4
Trigger5 = EnemyNear,movetype = A  
trigger5 = P2BodyDist X = [0,120] 
trigger5 = P2BodyDist Y = [-100,0] 
trigger5 = enemynear,animtime <= -15
trigger5 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

Trigger6 = EnemyNear,animtime < -30 && EnemyNear,alive && P2movetype = A
trigger6 = var(58) >= 10
trigger6 = random<=var(58)*5
Trigger6 = EnemyNear,movetype = A 
trigger6 = P2BodyDist X = [130,180] 
trigger6 = P2BodyDist Y = [-100,0] 
trigger6 = enemynear,animtime <= -30
trigger6 = p2movetype = A  
trigger6 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

Trigger7 = EnemyNear,animtime > -30 && EnemyNear,alive && P2movetype = A
trigger7 = var(58) >= 7
trigger7 = var(58) <= 9
trigger7 = random<=var(58)*3
Trigger7 = EnemyNear,movetype = A  
trigger7 = P2BodyDist X = [0,120] 
trigger7 = P2BodyDist Y = [-100,0] 
trigger7 = enemynear,animtime <= -30
trigger7 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

Trigger8 = EnemyNear,animtime < -30 && EnemyNear,alive
trigger8 = var(58) >= 7
trigger8 = var(58) <= 9
trigger8 = random<=var(58)*12
trigger8 = P2BodyDist X >= 0
trigger8 = var(47) <= 90
trigger8 = var(47) >= -10
trigger8 = var(47) != 0
trigger8 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

trigger9 = var(47) >= 60 || var(47) = 0 || var(47) <= -30
trigger9 = var(58) >= 8
trigger9 = random<=var(58)*4
trigger9 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = P2BodyDist X = [20,70]
triggerall = enemynear,animtime <= -20
trigger1 = var(58) >= 10
trigger1= random<=var(58)*8 
trigger1 = statetype = S
trigger1 = (stateno = [150,153])
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 0
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
trigger1 = var(58) >= 10
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3
trigger1 = inguarddist

trigger2 = var(58) >= 7
trigger2= var(58) <= 9
trigger2 = statetype = S
trigger2 = stateno = 150 || stateno = 151
trigger2 = prevstateno != 4000 && prevstateno != 4005
trigger2 = random<=var(58)*1
trigger2 = inguarddist
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 0
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
trigger1 = var(58) >= 10
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3
trigger1 = inguarddist
value = 4105
;---------------------------------------------------------------------------
;アドバンシング（立ち）S
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
trigger1 = var(58) >= 10
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3
trigger1 = inguarddist
ignorehitpause = 1
value = 14000
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）S
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
trigger1 = var(58) >= 10
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3 
trigger1 = inguarddist
value = 14005
;---------------------------------------------------------------------------
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = !var(49)
triggerall = var(7) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S;!= A    ;S, C, A(立ち、しゃがみ、空中

trigger1 = p2bodydist x < 200
trigger1 = NumHelper(2) = 0
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = random<=8

trigger2 = p2bodydist x >= 200
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger2 = random<=30
ignorehitpause = 0
;---------------------------------------------------------------------------
;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 830
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = S
trigger1 = random<=var(58)*20
trigger1 = fvar(1) <= 40
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
ignorehitpause = 0

;スタンド解除（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16004
triggerall = var(59)=1&& RoundState = 2  
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = C
trigger1 = random<=var(58)*20
trigger1 = fvar(1) <= 40
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
ignorehitpause = 0

;スタンド解除（空中）
[State -1, Taunt]
type = ChangeState
value = 16005
triggerall = var(59)=1&& RoundState = 2  
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = random<=var(58)*20
trigger1 = fvar(1) <= 40
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
ignorehitpause = 0
;------------------------------------------------------------------------------
[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = prevstateno != [100,101]
triggerall = stateno != [100,101]
triggerall = !inguarddist
triggerall = p2statetype != L
Triggerall = EnemyNear,vel x <= 0
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || stateno = 40 || stateno = 41
trigger1 = var(58)>=7
trigger1 = enemynear,stateno != 6664 && enemynear,stateno != 6665
trigger1 = Random <= var(58)*30
trigger1 = enemynear,movetype = H

trigger2 = var(58)<=6
trigger2 = random<=var(58)*5
trigger2 = enemynear,stateno != 6664 && enemynear,stateno != 6665
trigger2 = enemynear,movetype = H

trigger3 = var(58)>=7
trigger3 = enemynear,stateno != 6664 && enemynear,stateno != 6665
trigger3 = Random <= var(58)*10
trigger3 = !inguarddist
trigger3 = var(47) >= 60 || var(47) = 0 || var(47) <= -30
;------------------------------------------------------------------------------
[State -1, 距離を取る]
type = ChangeState
value = 105
triggerall = var(59)=1&& RoundState = 2 
triggerall = BackEdgeBodyDist >= 100
trigger1 = Random <= var(58)*40
Trigger1 = p2StateType = L
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist X = [-30,100]

trigger2 = Random <= var(58)*40
Trigger2 = p2moveType = H
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = P2BodyDist X = [-30,100]
trigger2 = enemynear,stateno = 6664 || enemynear,stateno = 6665

trigger3 = Random <= var(58)*40
trigger3 = statetype != A
trigger3 = ctrl
trigger3 = P2BodyDist X = [-30,100]
trigger3 = numhelper(1001) != 0
;------------------------------------------------------------------------------
[State -1, ジャンプ]
type = ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || stateno = 40 || stateno = 41

trigger1 = var(58) >= 7
trigger1 = var(49) != 10000
trigger1 = p2statetype = S
Trigger1 = p2MoveType != A
trigger1 = !inguarddist
trigger1 = P2BodyDist X = [50,150] 
trigger1= random<=var(58)*5

trigger2 = var(58) >= 7
trigger2 = var(49) != 10000
trigger2 = p2statetype = C
Trigger2 = p2MoveType != A
trigger2 = !inguarddist
trigger2 = P2BodyDist X = [50,150] 
trigger2= random<=var(58)*15

trigger3 = var(58) >= 7
trigger3 = var(49) = 10000
trigger3 = p2statetype = S
Trigger3 = p2MoveType != A
trigger3 = !inguarddist
trigger3 = P2BodyDist X = [50,150] 
trigger3 = random<=var(58)*5

trigger4 = var(58) >= 7
trigger4 = var(49) = 10000
trigger4 = p2statetype = C
Trigger4 = p2MoveType != A
trigger4 = !inguarddist
trigger4 = P2BodyDist X = [50,150] 
trigger4 = random<=var(58)*15

trigger5 = var(58) <= 6
Trigger5 = p2MoveType != A
trigger5 = !inguarddist
trigger5 = P2BodyDist X = [80,150] 
trigger5 = random<=var(58)*10
;------------------------------------------------------------------------------
;ガード
[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59)
triggerall = NumHelper(1001) = 0
triggerall = numhelper(2) = 0
triggerall = roundstate = 2
triggerall = InGuardDist
triggerall = ctrl
triggerall = statetype != A
triggerall = NumHelper(1001) != 1
triggerall = NumHelper(2) != 1
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random = [0,50]
trigger3 = inguarddist
trigger3 = enemy,numhelper > 0 || enemy,numproj > 0
trigger3 = random = [0,80]

[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59)
triggerall = roundstate = 2
triggerall = InGuardDist
triggerall = ctrl
triggerall = statetype = A
triggerall = NumHelper(1001) != 1
triggerall = NumHelper(2) != 1
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random = [0,40]
;------------------------------------------------------------------------------
;ガード 
[State -1, guard] 
type = ChangeState 
value = 150 
triggerall = NumHelper(1001) = 0
triggerall = numhelper(2) = 0
triggerall = statetype != A
triggerall = var(59) = 1 && RoundState = 2 
triggerall = ctrl && stateno != [120,155] 
triggerall = stateno !=100&&stateno !=105&&stateno !=0
trigger1 = random <=700 
trigger1 = p2movetype = A || enemynear,movetype = A || InGuardDist 
trigger2 = p2movetype = A || enemynear,movetype = A || InGuardDist || enemynear,NumProj != 0 
trigger2 = P2BodyDist X >= 90 || statetype = A 
trigger3 = p2movetype = A || enemynear,movetype = A || InGuardDist || enemynear,NumProj != 0