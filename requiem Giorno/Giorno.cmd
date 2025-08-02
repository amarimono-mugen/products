;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。

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

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;無駄無駄無駄無駄　
[State -1, Stand Strong Punch]
type = ChangeState
value = 17000
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
triggerall = NumHelper(2000) = 0 
trigger1 = command = "x" 

;中ヘビ
[State -1, magic]
type = null;Helper
stateno = 2010
id = 2010
pos = ifelse(frontedgebodydist<=130,frontedgebodydist,130),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2010) = 0 
trigger1 = command = "y" 

;強ヘビ
[State -1, magic]
type = null;Helper
stateno = 2020
id = 2020
pos = ifelse(frontedgebodydist<=240,frontedgebodydist,240),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2020) = 0 
trigger1 = command = "b" 
;---------------------------------------------------------------------------
;レクイエムの片鱗
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6666
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
triggerall = var(49) = 10000
triggerall = power >= 500
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
triggerall = var(49) = 10000
triggerall = power >= 500
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
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 10280) && time > 8 && movecontact
;trigger3 = (stateno = 10420) && time >= 5
;trigger4 = (stateno = 10450) && time >= 15
;---------------------------------------------------------------------------
;木の根 中
[State -1, Stand Strong Punch]
type = ChangeState
value = 1103
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
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 10280) && time > 8 && movecontact
;trigger3 = (stateno = 10420) && time >= 5
;trigger4 = (stateno = 10450) && time >= 15
;---------------------------------------------------------------------------
;木の根 強
[State -1, Stand Strong Punch]
type = ChangeState
value = 1105
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
triggerall = numhelper(11101) = 0
triggerall = var(49) = 10000
triggerall = command = "nekko_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 10280) && time > 8 && movecontact
;trigger3 = (stateno = 10420) && time >= 5
;trigger4 = (stateno = 10450) && time >= 15
;---------------------------------------------------------------------------
;サソリ　off
[State -1, Stand Strong Punch]
type = ChangeState
value = 1600
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
triggerall = prevstateno != [11250,11270]
triggerall = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_x" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;サソリ 中　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
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
triggerall = prevstateno != [11250,11270]
triggerall = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_y" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;サソリ 強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
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
triggerall = prevstateno != [11250,11270]
triggerall = numhelper(11201) = 0
triggerall = var(49) = 10000
triggerall = command = "fish_b" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 11901 && time >= 5
;---------------------------------------------------------------------------
;無駄無駄（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
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
triggerall = var(49) = 10000
triggerall = command = "QCF_x"
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
triggerall = var(49) = 10000
triggerall = command = "QCF_y"
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
triggerall = var(49) = 10000
triggerall = command = "QCB_b"
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
trigger5 = stateno = 11901 && time >= 5
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
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = (stateno = 151 || stateno = 153)
;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
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
;---------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
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
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) = 10000
triggerall = statetype != A && ctrl
triggerall = NumHelper(29) = 0 
trigger1 = command = "z"
trigger2 = command = "x+y+z"
value = 10030
;===========================================================================
[State -1, 擬似プッツンキャンセル]
type = ChangeState 
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
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
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
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
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
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 14005
;---------------------------------------------------------------------------
[State -1, 空中ダッシュ]
type = ChangeState
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = !var(18)
triggerall = stateno != 116
triggerall = command = "FF"
trigger1 = ctrl 
trigger2 = stateno = 11901 && time >= 5
value = 116
;---------------------------------------------------------------------------
[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = !var(18)
triggerall = stateno != 117
triggerall = command = "BB"
trigger1 = ctrl
trigger2 = stateno = 132
trigger3 = stateno = 11901 && time >= 5
value = 117
;---------------------------------------------------------------------------
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
;スタンド出現攻撃
[State -1, Stand Strong Punch]
type = ChangeState
value = 10280
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(10000) = 0
triggerall = var(49) != 10000
triggerall = command = "syutugen"
triggerall = command != "holddown"
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
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10220) && time > 5
trigger4 = (stateno = 10400) && time > 5
trigger5 = stateno = [100,105]

;前立ち弱 S
[State -1, Stand Strong Punch]
type = ChangeState
value = 10205
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
triggerall = command = "start"
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0 
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;発現しゃがみ弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10420
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
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 5
trigger2 = movecontact
trigger2 = (stateno = 400) && time >= 5
trigger3 = stateno = [100,105]

;しゃがみ中S
[State -1, Crouching Strong Punch]
type = ChangeState
value = 10410
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
triggerall = var(49) != 10000
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;空中弱S
[State -1, Jump Light Punch]
type = ChangeState
value = 10600
triggerall = var(49) = 10000
triggerall = command = "x" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10650
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
triggerall = var(49) = 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;発現空中強
[State -1, Stand Strong Punch]
type = ChangeState
value = 10670
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
triggerall = NumHelper(1600) = 0 
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
triggerall = NumHelper(1600) = 0 
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
triggerall = NumHelper(1600) = 0 
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
triggerall = NumHelper(5656) = 0 
triggerall = var(47) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
triggerall = PalNo != 12
trigger1 = ctrl
ignorehitpause = 0