;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。

[Command]
name = "hadousp1"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "hadousp2"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "hadousp3"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "ghadousp1"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "ghadousp2"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "ghadousp3"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "デム"
command = ~D, B, a
time = 20

[Command]
name = "anoyox"
command = ~D, B, F, x+y
time = 20

[Command]
name = "anoyoy"
command = ~D, B, F, y+z
time = 20

[Command]
name = "anoyoz"
command = ~D, B, F, x+z
time = 20

;-| 必殺技 |------------------------------------------------------
[Command]
name = "trap_x"
command = ~F, D, B, x

[Command]
name = "trap_y"
command = ~F, D, B, y

[Command]
name = "trap_z"
command = ~F, D, B, z

[Command]
name = "counter_x"
command = ~B, D, DB, x

[Command]
name = "counter_y"
command = ~B, D, DB, y

[Command]
name = "counter_z"
command = ~B, D, DB, z

[Command]
name = "FDDF_x"
command = ~F, D, DF, x

[Command]
name = "FDDF_y"
command = ~F, D, DF, y

[Command]
name = "FDDF_z"
command = ~F, D, DF, z

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
name = "mahha_x"
command = ~D, DB, B, x

[Command]
name = "mahha_y"
command = ~D, DB, B, y

[Command]
name = "mahha_b"
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
name = "x+y+a+b"
command = x+y+a+b

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
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /$z
time = 1
;---------------------------
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
;ONあの世へ行きやがれ
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 13500
triggerall = var(49) = 10000  ;スタンドonの時
triggerall = command = "anoyox" || command = "anoyoy" || command = "anoyoz"  
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;あの世へ行きやがれ
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3500
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = command = "anoyox" || command = "anoyoy" || command = "anoyoz"  
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;ワナビーラッシュ（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = command = "hadousp1" || command = "hadousp2" || command = "hadousp3"  
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 180 ;挑発
trigger3 = (stateno = 200) && time > 5
trigger4 = (stateno = 210) && time > 5
trigger5 = (stateno = 400) 
trigger5 = movecontact
trigger6 = (stateno = 410) 
trigger6 = movecontact
trigger7 = (stateno = 230) && time > 18

;ワナビーラッシュ S　
[State -1, Stand Strong Punch]
type = ChangeState
value = 13000
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = command = "hadousp1" || command = "hadousp2" || command = "hadousp3"  
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10205) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10221) && time > 5
trigger5 = movecontact
trigger6 = (stateno = 10215) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10210) && time > 5
trigger7 = movecontact
;---------------------------------------------------------------------------
;蹴り Sp
[State -1, Stand Strong Punch]
type = ChangeState
value = 3150
triggerall = power >= 1000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "ghadousp1" || command = "ghadousp2" || command = "ghadousp3" 
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5
trigger5 = (stateno = 230) && movecontact && time > 10
 
;蹴り Sp son
[State -1, Stand Strong Punch]
type = ChangeState
value = 13150
triggerall = power >= 1000
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = command = "ghadousp1" || command = "ghadousp2" || command = "ghadousp3" 
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10210) && time > 10
trigger3 = (stateno = 10205) && time > 5
trigger4 = (stateno = 10215) && time > 5
trigger5 = (stateno = 10220) && time > 5
trigger6 = (stateno = 10225) && time > 5
trigger7 = (stateno = 10250) && time > 5
;---------------------------------------------------------------------------
;ヤワラカクシマス Sp
[State -1, ywarakakusimasu]
type = ChangeState
value = 13200
triggerall = power >= 1000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = numhelper(11101) = 0
triggerall = var(45) = 0  
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "x+y+a+b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1, デム];スタンドoff
type = ChangeState
value = 3900
triggerall = var(43) = 0  
triggerall = numhelper(4657) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(1600) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 180 ;挑発
trigger3 = (stateno = 200) && time > 5
trigger4 = (stateno = 210) && time > 5
trigger5 = (stateno = 400) 
trigger5 = movecontact
trigger6 = (stateno = 410) 
trigger6 = movecontact
trigger7 = (stateno = 230) && time > 18

[State -1, デム];スタンドon
type = ChangeState
value = 3900
triggerall = var(43) = 0  
triggerall = numhelper(4657) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = var(49) = 10000  ;スタンドonの時
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1001) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = movecontact
trigger2 = stateno != 10240 && stateno != 10245 
trigger3 = stateno = 180   ;挑発
;---------------------------------------------------------------------------
;カウンター
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 6666
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
trigger1 = command = "counter_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "counter_y"
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = command = "counter_z"
trigger3 = statetype != A
trigger3 = ctrl
;---------------------------------------------------------------------------
;空中キック 　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1900
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = statetype = A
trigger1 = command = "QCF_x"
trigger1 = ctrl
trigger2 = command = "QCF_y"
trigger2 = ctrl
trigger3 = command = "QCB_b"
trigger3 = ctrl

;空中キック S
[State -1, Stand Strong Punch]
type = ChangeState
value = 11900
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCB_b"
trigger1 = ctrl
trigger2 = (stateno = 10600) && movecontact
trigger3 = (stateno = 10610) && movecontact
trigger4 = (stateno = 10640) && movecontact
;---------------------------------------------------------------------------
;罠　弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 1100
triggerall = numhelper(11101) = 0
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "trap_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5

;罠 中
[State -1, Stand Strong Punch]
type = ChangeState
value = 1103
triggerall = numhelper(11101) = 0
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "trap_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5

;罠 強
[State -1, Stand Strong Punch]
type = ChangeState
value = 1105
triggerall = numhelper(11101) = 0
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "trap_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000) && time > 5
trigger3 = (stateno = 1003) && time > 5
trigger4 = (stateno = 1005) && time > 5
;---------------------------------------------------------------------------
;罠　弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11100
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = command = "trap_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;罠 中 s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11103
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = command = "trap_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;罠 強 s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11105
triggerall = numhelper(11101) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = command = "trap_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;マッハ 弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11200
triggerall = var(49) = 10000
triggerall = command = "mahha_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10220) && time > 5
trigger7 = (stateno = 10221) && time > 5
trigger8 = (stateno = 10225) && time > 5
trigger9 = (stateno = 10250) && time > 5

;マッハ 中　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11210
triggerall = var(49) = 10000
triggerall = command = "mahha_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10220) && time > 5
trigger7 = (stateno = 10221) && time > 5
trigger8 = (stateno = 10225) && time > 5
trigger9 = (stateno = 10250) && time > 5

;マッハ 強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11240
triggerall = var(49) = 10000
triggerall = command = "mahha_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10220) && time > 5
trigger7 = (stateno = 10221) && time > 5
trigger8 = (stateno = 10225) && time > 5
trigger9 = (stateno = 10250) && time > 5
;---------------------------------------------------------------------------
;マッハwanabe弱
[State -1, Standing Strong Kick]
type = ChangeState
value = 1200
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = Numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "mahha_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && movecontact

;マッハwanabe中
[State -1, Standing Strong Kick]
type = ChangeState
value = 1210
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = Numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "mahha_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && movecontact

;マッハwanabe強
[State -1, Standing Strong Kick]
type = ChangeState
value = 1220
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = Numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "mahha_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && movecontact
;---------------------------------------------------------------------------
;ワナビー（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCF_x"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger2 = stateno != 230 
trigger3 = (stateno = 230) && time > 13

;ワナビー　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 11000
triggerall = var(49) = 10000
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10205) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10215) && time > 5
trigger5 = movecontact
trigger6 = (stateno = 10221) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10450) && time >= 7
trigger7 = movecontact
;---------------------------------------------------------------------------
;ワナビー（中）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1003
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCF_y"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger2 = stateno != 230 
trigger3 = (stateno = 230) && time > 18

;ワナビー S　中
[State -1, Stand Strong Punch]
type = ChangeState
value = 11010
triggerall = var(49) = 10000
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10205) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10215) && time > 5
trigger5 = movecontact
trigger6 = (stateno = 10221) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10450) && time >= 7
trigger7 = movecontact
;---------------------------------------------------------------------------
;ワナビ－（強）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1005
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = command = "QCB_b"
triggerall = var(49) != 10000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger2 = stateno != 230 
trigger3 = (stateno = 230) && time > 18

;ワナビー S　強
[State -1, Stand Strong Punch]
type = ChangeState
value = 11040
triggerall = var(49) = 10000
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger2 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger3 = movecontact
trigger4 = (stateno = 10205) && time > 5
trigger4 = movecontact
trigger5 = (stateno = 10215) && time > 5
trigger5 = movecontact
trigger6 = (stateno = 10221) && time > 5
trigger6 = movecontact
trigger7 = (stateno = 10450) && time >= 7
trigger7 = movecontact
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = numhelper(2) = 0
triggerall = statetype != A
trigger1 = command = "FDDF_x" || command = "FDDF_y" || command = "FDDF_z"
trigger1 = (stateno = 151 || stateno = 153)
;---------------------------------------------------------------------------
;ガーキャンS
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "FDDF_x" || command = "FDDF_y" || command = "FDDF_z"
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
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(49) = 0
triggerall = (command = "holdfwd" || command = "holdback") && command = "b"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(2) = 0 
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H

;投げ　on
[State -1, Kung Fu Throw]
type = ChangeState
value = 10800
triggerall = var(49) = 10000
triggerall = (command = "holdfwd" || command = "holdback") && command = "b"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
trigger1 = statetype != A && ctrl
trigger1 = command = "z"
value = 30
;------------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = RoundState = 2 
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 180   ;挑発
trigger3 = stateno = 1000 || stateno = 1003 || stateno = 1005
trigger4 = stateno = 1100 || stateno = 1103 || stateno = 1105
trigger5 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger6 = stateno = 11000 || stateno = 11010 || stateno = 11040
trigger7 = stateno = 11100 || stateno = 11103 || stateno = 11105
trigger8 = stateno = 11200 || stateno = 11210 || stateno = 11240
trigger9 = stateno = 240
trigger10 = stateno = 1600
trigger11 = stateno = 6666
trigger12 = stateno = 11004
value = 700
ignorehitpause = 1
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
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
triggerall = NumHelper(2) = 0 
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
triggerall = ctrl 
triggerall = stateno != 110
trigger1 = command = "FF"
value = 110
;---------------------------------------------------------------------------
[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl || (stateno = 11110 && anim = 10044)
triggerall = stateno != 115
Triggerall = movetype != A
trigger1 = command = "BB"
value = 115
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
; 通常攻撃技
;---------------------------------------------------------------------------
;ダッシュ攻撃
[State -1, Stand Light Punch]
type = ChangeState
value = 230
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = Command = "y"|| Command = "b"
trigger1 = stateno = 100||stateno = 105

;発現立ち弱　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10225
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4
trigger3 = (stateno = 205) && time > 4
trigger4 = (stateno = 210) && time > 5
trigger5 = (stateno = 400) && time > 5
trigger6 = (stateno = 410) && time > 5

;ダッシュ立ち弱
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = NumHelper(2) = 0 
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = stateno = 100||stateno = 105

;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = NumHelper(2) = 0 
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl

;ダッシュ立ち弱s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10205
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = stateno = 100||stateno = 105

;立ち弱　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10200
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 8
trigger3 = (stateno = 10220) && time > 5
trigger4 = (stateno = 10400) && time > 5

;---------------------------------------------------------------------------

;発現前立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10255
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = command = "y+a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time > 5

;発現立ち中　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10250
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time > 5

;立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = NumHelper(2) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(49) != 10000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7

;ダッシュ立ち中s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10222
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 100||stateno = 105

;立ち中　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10221
triggerall = var(49) = 10000
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10205) && time > 5
trigger4 = (stateno = 10225) && time > 5
trigger5 = (stateno = 10400) && movecontact
trigger6 = (stateno = 10420) && movecontact
;---------------------------------------------------------------------------
;発現立ち強　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10270
triggerall = var(49) != 10000
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time > 5

;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(29) = 0
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;ダッシュ強攻撃
[State -1, Stand Light Punch]
type = ChangeState
value = 10245
triggerall = Var(59) != 1 && Roundstate = 2
triggerall = command != "holddown"
triggerall = var(49) = 10000
trigger1 = Command = "b"
trigger1 = stateno = 100||stateno = 105

;立ち強　s
[State -1, Stand Strong Punch]
type = ChangeState
value = 10240
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = movecontact
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10221) && time > 5
trigger7 = (stateno = 10225) && time > 5
trigger8 = (stateno = 10250) && time > 5
trigger9 = (stateno = 10400) && time > 5
trigger10 = (stateno = 10410) && time > 7
trigger11 = (stateno = 10420) && time > 4
;---------------------------------------------------------------------------
;スタンド発現攻撃　
[State -1, Stand Strong Punch]
type = ChangeState
value = 10300
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = NumHelper(2) = 0 
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4
trigger3 = (stateno = 205) && time > 4
trigger4 = (stateno = 210) && time > 5
trigger5 = (stateno = 230) && time > 6
trigger6 = (stateno = 400) && time > 5
trigger7 = (stateno = 410) && time > 5
ignorehitpause = 0
;---------------------------------------------------------------------------
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
value = 10420
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100||stateno = 105
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time > 5

;しゃがみ弱
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = NumHelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100||stateno = 105
trigger2 = (stateno = 400) && time > 5

;しゃがみ弱 S
[State -1, Crouching Light Punch]
type = ChangeState
value = 10400
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100||stateno = 105
trigger2 = (stateno = 10400) && time > 8
trigger3 = (stateno = 10420) && time > 8
;---------------------------------------------------------------------------
;発現しゃがみ中
[State -1, Stand Strong Punch]
type = ChangeState
value = 10450
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = command = "y+a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100||stateno = 105
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time > 5

;しゃがみ中
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = NumHelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100||stateno = 105
trigger2 = (stateno = 400) && time > 5
trigger2 = movecontact

;しゃがみ中S
[State -1, Crouching Strong Punch]
type = ChangeState
value = 10410
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100||stateno = 105

;---------------------------------------------------------------------------
;発現しゃがみ強
[State -1, Stand Strong Punch]
type = ChangeState
value = 10470
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = command = "z+a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100||stateno = 105
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 5
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time > 5

;しゃがみ強
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = NumHelper(1900) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = var(49) != 10000
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100||stateno = 105
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;しゃがみ強S
[State -1, Crouching Strong Kick]
type = ChangeState
value = 10440
triggerall = numhelper(10441) = 0
triggerall = var(49) = 10000
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100||stateno = 105
trigger2 = (stateno = 10400) && movecontact
trigger3 = (stateno = 10410) && movecontact
;---------------------------------------------------------------------------
;発現空中弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 10620
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = numhelper(1001) = 0
triggerall = command = "x+a"
triggerall = statetype = A
trigger1 = ctrl

;空中弱
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = NumHelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;空中弱S
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
value = 10650
triggerall = NumHelper(1900) = 0 
triggerall = NumHelper(1600) = 0 
triggerall = NumHelper(2) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "y+a"
triggerall = statetype = A
trigger1 = ctrl

;空中中
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = NumHelper(2) = 0
triggerall = var(49) != 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

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
triggerall = NumHelper(2) = 0 
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = var(49) != 10000
triggerall = numhelper(1001) = 0
triggerall = command = "z+a"
triggerall = statetype = A
trigger1 = ctrl

;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = NumHelper(2) = 0
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
triggerall = NumHelper(2) = 0 
triggerall = Numexplod(1002) = 0 
triggerall = !var(49)
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S;!= A    ;S, C, A(立ち、しゃがみ、空中
trigger1 = NumHelper(2) = 0 ;SFがでてないとき
trigger1 = ctrl || stateno = 100||stateno = 105
ignorehitpause = 0

;スタンド発現（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16001
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = Numexplod(1002) = 0 
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
value = 16002
triggerall = NumHelper(1600) = 0 
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = Numexplod(1002) = 0 
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
value = 830
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S
trigger1 = ctrl || stateno = 100||stateno = 105
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