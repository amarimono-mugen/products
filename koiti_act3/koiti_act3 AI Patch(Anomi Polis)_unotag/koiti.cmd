




















[Remap]
x = y      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = a      ;Ｙボタン　　　　　　　　　〃
z = b      ;Ｚボタン　　　　　　　　　〃
a = z      ;Ａボタン　　　　　　　　　〃
b = x      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃











[Defaults]
command.time = 15




command.buffer.time = 1



[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = -1
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = -1
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = -1
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = -1
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = -1
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = -1
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = -1
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = -1
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = -1
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = -1
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = -1
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = -1
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = -1
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = -1
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = -1
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = -1
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = -1
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = -1
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = -1
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = -1
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = -1

[command]
name = "fwd"
command=F
time=0
[command]
name = "back"
command=B
time=0
[command]
name = "up"
command=U
time=0
[command]
name = "down"
command=D
time=0


[Command]
name = "GHA"
command = ~D, DF, F, x+y+z
time = 35
buffer.time = 3



[Command]
name = "act3sp1"
command = ~D, DF, F, a
time = -1

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "63214x"
command = ~F,$D,B,x
time = 15
buffer.time = 3

[Command]
name = "63214y"
command = ~F,$D,B,y
time = 15
buffer.time = 3

[Command]
name = "63214z"
command = ~F,$D,B,z
time = 15
buffer.time = 3

[Command]
name = "act2 c_x"
command = ~B, D, DB, x
time = 15
buffer.time = 3

[Command]
name = "act2 c_y"
command = ~B, D, DB, y
time = 15
buffer.time = 3

[Command]
name = "act2 c_b"
command = ~B, D, DB, z
time = 15
buffer.time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 15
buffer.time = 3

[Command]
name = "upper_y"
command = ~F, D, DF, y
time = 15
buffer.time = 3

[Command]
name = "upper_z"
command = ~F, D, DF, z
time = 15
buffer.time = 3

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 15
buffer.time = 3

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 15
buffer.time = 3

[Command]
name = "QCF_b"
command = ~D, DF, F, z
time = 15
buffer.time = 3

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 15
buffer.time = 3
[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 15
buffer.time = 3
[Command]
name = "QCB_xy"
command = ~D, DB, B, z
time = 15
buffer.time = 3
[Command]
name = "DD_x"
command = ~D, D, x
time = 15
buffer.time = 3
[Command]
name = "DD_y"
command = ~D, D, y
time = 15
buffer.time = 3
[Command]
name = "DD_z"
command = ~D, D, z
time = 15
buffer.time = 3
[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b



[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10




[Command]
name = "recovery"
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
command = c
time = 1

[Command]
name = "x+y+z"
command = x+y+z

[Command]
name = "LM"
command = x+y
time = 1

[Command]
name = "MH"
command = y+z
time = 1

[Command]
name = "LH"
command = x+z
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

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

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
name = "holdupF"
command = /$UF
time = 1

[Command]
name = "holdupB"
command = /$UB
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upc"
command = ~$U
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Command]
name = "!longjump"
command = ~10$D, $U
time = 20































;   --- Uno Tag System [Type-R] Command definition ---

[Command]
name = "aHsoNn"
command = ~D, D, D, s
Time = 25

[Command]
name = "sheoun"
command = ~D, DF, F, z+c
Time = 25

[Command]
name = "palit"
command = z+c
Time = 2

[Command]
name = "turtleuno"
command = s
Time = 2


[Statedef -1]


;  ;]





[State -1, GHA(SON)]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13300
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49) = 10000
triggerall = command = "GHA" || command = "a"
triggerall = power >= 3000
triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger3 = time >= 16
trigger4 = stateno = 1100 || stateno = 1130 || stateno = 1160
trigger4 = time >= 25
trigger5 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger5 = time >= 19
ignorehitpause = 1

[State -1, GHA]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3300
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "GHA" || command = "a"
triggerall = power >= 3000
triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger3 = time >= 16
trigger4 = stateno = 1100 || stateno = 1130 || stateno = 1160
trigger4 = time >= 25
trigger5 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger5 = time >= 19
ignorehitpause = 1


[State -1, Standing Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 23000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(30)
triggerall = !var(49)
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = roundstate = 2
triggerall = var(10) = 0
triggerall = statetype != A
triggerall = command = "act3sp1"
trigger1 = ctrl

[State -1, SON3FREEZ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000

trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9
trigger9 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger9 = time >= 13
trigger10 = stateno = 11100 || stateno = 11130 || stateno = 11160
trigger10 = time >= 25
ignorehitpause = 1

[State -1, act3FREEZ(SOFF)]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3200
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000

triggerall = var(10) = 0
triggerall = var(30)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger3 = time >= 16
trigger4 = stateno = 1100 || stateno = 1130 || stateno = 1160
trigger4 = time >= 25
trigger5 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger5 = time >= 19
ignorehitpause = 1

[State -1, act1スパコン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000

triggerall = var(10) = 0
triggerall = !var(30)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger3 = time >= 16
trigger4 = stateno = 1100 || stateno = 1130 || stateno = 1160
trigger4 = time >= 25
trigger5 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger5 = time >= 19
ignorehitpause = 1




[State -1,act2カウンター]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = command = "act2 c_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1,act2カウンターy]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "act2 c_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1,act2カウンターb]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = command = "act2 c_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1,ドジュウL]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1,ドジュウL]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = var(30)
triggerall = !numhelper(1001)
triggerall = command = "QCB_y" || command = "QCB_xy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1,ドジュウM]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1130
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !numhelper(1001)
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1,ドジュウH]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1160
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !numhelper(1001)
triggerall = command = "QCB_xy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1, ボヨヨン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "upper_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1, ボヨヨン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "upper_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1, ボヨヨン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "upper_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1,ゆるさないぞ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1, ゆるさないぞ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1, ゆるさないぞ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 400) && time >= 5
trigger8 = (stateno = 410) && time >= 6
trigger9 = (stateno = 420) && time >= 9

[State -1, SHIT]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)

triggerall = command = "upper_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9

[State -1, SHIT]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)

triggerall = command = "upper_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9

[State -1, SHIT]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)

triggerall = command = "upper_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9

[State -1, 重いッ！]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11300
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)

triggerall = command = "DD_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9

[State -1, 重いッ！]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11300
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)

triggerall = command = "DD_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9

[State -1, 重いッ！]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11300
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)

triggerall = command = "DD_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9

[State -1, 風圧]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11400
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)

triggerall = command = "63214x" || command = "63214y" || command = "63214z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9
trigger9 = movetype = H && statetype != A
trigger9 = time > 0


[State -1,くらわせろ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9

[State -1, くらわせろ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9

[State -1, くらわせろ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10230) && time >= 15
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 9


[State -1, Strong Kung Fu Palm]
type = null
value = 1800
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = numhelper(241) = 0
triggerall = numhelper(1600) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(21001) = 0
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_b"
trigger1 = (stateno = [150,153])






[State -1, 前転]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 102
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(30)
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 走る]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = var(59)<=0&& RoundState = 2
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 後転]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 107
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(30)
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
triggerall = var(59)<=0&& RoundState = 2
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, エアダッシュ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 12000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, エアBダッシュ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 12010
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl



[State -1, 投げ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = !var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0

trigger1 = command != "holdback"

[State -1, 投げ(後方)]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 801
triggerall = !var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0

trigger1 = command = "holdback"

[State -1, SON投げ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10800
triggerall = var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0

trigger1 = command != "holdback"

[State -1, SON投げ(後方)]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10801
triggerall = var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "b"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0

trigger1 = command = "holdback"

[State -1, 回り込み]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
trigger1 = statetype != A && ctrl
trigger1 = command = "c" && command = "x"
value = 702

[State -1, プッツンキャンセルOF]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = power >= 500
triggerall = command = "b"
trigger1 = (stateno = 200) && time >= 5
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 220) && time >= 9
trigger4 = (stateno = 230) && time >= 11
trigger5 = (stateno = 240) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 6
trigger8 = (stateno = 420) && time >= 9
trigger9 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger9 = time >= 16
trigger10 = stateno = 1100 || stateno = 1130 || stateno = 1160
trigger10 = time >= 25
trigger11 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger11 = time >= 19
value = 700
ignorehitpause = 1

[State -1, プッツンキャンセルON]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = statetype != A
triggerall = power >= 500
triggerall = command = "b"
trigger1 = (stateno = 10200) && time >= 5
trigger2 = (stateno = 10210) && time >= 7
trigger3 = (stateno = 10220) && time >= 9
trigger4 = (stateno = 10230) && time >= 15
trigger5 = (stateno = 10400) && time >= 5
trigger6 = (stateno = 10410) && time >= 6
trigger7 = (stateno = 10420) && time >= 9
trigger8 = (stateno = 11000) && time >= 13
trigger9 = (stateno = 11200) && time >= 25
value = 700
ignorehitpause = 1

[State -1, スタンドラッシュ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0
triggerall = statetype != A
triggerall = power >= 250
triggerall = command = "c"
trigger1 = stateno = 11200
trigger1 = time >= 0
value = 2100
ignorehitpause = 1


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2

triggerall = !var(30)
triggerall = statetype = S
triggerall = stateno = 150 || stateno = 151
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = command = "x" && command = "y"
trigger2 = command = "z" && command = "y"
trigger3 = command = "x" && command = "z"
ignorehitpause = 1
value = 4000


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2

triggerall = !var(30)
triggerall = statetype = C
triggerall = stateno = 152 || stateno = 153
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = command = "x" && command = "y"
trigger2 = command = "z" && command = "y"
trigger3 = command = "x" && command = "z"
value = 4005

[State -1,2段ジャンプ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 41

triggerall = var(49) = 10000
triggerall = !var(30)
triggerall = var(4) = 1
triggerall = command = "up"
triggerall = command != "upc"
triggerall = stateno = 50 && time > 5
trigger1 = ctrl



[State -1, 立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = var(8) = 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact
trigger1 = (stateno = 200) && time >= 5
ignorehitpause = 1

[State -1, 5H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 220
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = var(8) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = movecontact
trigger1 = (stateno = 210) && time >= 7
ignorehitpause = 1

[State -1, ゆるさないぞ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = var(8) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = movecontact
trigger1 = (stateno = 220) && time >= 9
ignorehitpause = 1


[State -1, 3FREEZ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3200
triggerall = !var(49)
triggerall = var(30)
triggerall = var(8) = 1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = helper(1001),movecontact || helper(1001),stateno = 1003
trigger1 = stateno = 1000 && time >= 18

[State -1, 蝉の声]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
triggerall = !var(49)
triggerall = !var(30)
triggerall = var(8) = 1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = helper(1001),movecontact || helper(1001),stateno = 1003
trigger1 = stateno = 1000 && time >= 18

[State -1, 立ち弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(10) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 5
ignorehitpause = 1

[State -1, 前立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 230
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = var(10) = 0
triggerall = command = "holdfwd"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 6
trigger7 = (stateno = 420) && time >= 9
ignorehitpause = 1

[State -1, 立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 5
ignorehitpause = 1

[State -1, 前立ち強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 240
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = var(10) = 0
triggerall = command = "holdfwd"
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 6
trigger7 = (stateno = 420) && time >= 9

[State -1, 5H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 220
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 6
ignorehitpause = 1

[State -1, 挑発]
type = null;ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = var(59)<=0&& RoundState = 2

triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, しゃがみ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 5
ignorehitpause = 1

[State -1, しゃがみ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 410
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 5

[State -1, しゃがみ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 420
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 6


[State -1, ジャンプ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 14

[State -1, ジャンプ中2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 615
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "y"
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = !var(30)
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

[State -1, ジャンプ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 610
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "y"
triggerall = !var(30)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = !var(30)
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, ジャンプ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 620
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = command = "z"
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = !var(30)
trigger2 = stateno = 600 || stateno = 610 || stateno = 615
trigger2 = movecontact

[State -1, SON立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10210
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = var(8) = 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact
trigger1 = (stateno = 10200) && time >= 5
ignorehitpause = 1

[State -1, SON5H]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10220
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = var(8) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = movecontact
trigger1 = (stateno = 10210) && time >= 7
ignorehitpause = 1

[State -1, くらわせろ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = var(8) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = movecontact
trigger1 = (stateno = 10220) && time >= 13
ignorehitpause = 1

[State -1, 3FREEZ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = var(8) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = (stateno = 11000) && time >= 13
ignorehitpause = 1

[State -1, SON特殊]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10230
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
triggerall = command = "z"
triggerall = command = "holdfwd"

trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10220) && time >= 13
trigger5 = (stateno = 10400) && time >= 5
trigger6 = (stateno = 10410) && time >= 7
trigger7 = (stateno = 10420) && time >= 9
ignorehitpause = 0

[State -1, SON立ち弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10200
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5
ignorehitpause = 1

[State -1, SON立ち中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10210
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5
ignorehitpause = 1

[State -1, SON立ち強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10220
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10400) && time >= 5
trigger5 = (stateno = 10410) && time >= 7
ignorehitpause = 1

[State -1, SONしゃがみ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10400
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5
ignorehitpause = 1

[State -1, SONしゃがみ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10410
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5
ignorehitpause = 1

[State -1, SONしゃがみ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10420
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10400) && time >= 5
trigger5 = (stateno = 10410) && time >= 7
ignorehitpause = 1

[State -1, SON空中特殊]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10630
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, SONジャンプ弱]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10600
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "x"
triggerall = !numhelper(1001)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, SONジャンプ中]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10610
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "y"
triggerall = !numhelper(1001)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, SONジャンプ強]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10620
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = command = "z"
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16000
triggerall = var(59)<=0
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

[State -1, クイックスタンドon]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10901
triggerall = var(59)<=0
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = (stateno = 200) && time >= 5
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 220) && time >= 9
trigger4 = (stateno = 230) && time >= 11
trigger5 = (stateno = 240) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 6
trigger8 = (stateno = 420) && time >= 9
ignorehitpause = 1


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16010
triggerall = var(59)<=0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0



[state -1]
type = varset
triggerall = var(59) != 1
triggerall = RoundState = [1,2]
triggerall = enemynear,life > 0
trigger1 = (Command = "AI0")||(Command = "AI1")||(Command = "AI2")||(Command = "AI3")||(Command = "AI4")
trigger2 = (Command = "AI5")||(Command = "AI6")||(Command = "AI7")||(Command = "AI8")||(Command = "AI9")
trigger3 = (Command = "AI10")||(Command = "AI11")||(Command = "AI12")||(Command = "AI13")||(Command = "AI14")
trigger4 = (Command = "AI15")||(Command = "AI16")||(Command = "AI17")||(Command = "AI18")||(Command = "AI19")
trigger5 = (Command = "AI20")
Trigger6 = NumHelper(50000) != 0
Trigger6 = Helper(50000),Var(59) = 1
ignorehitpause = 1
var(59)=1

[State -3]
type = VarSet
triggerall = var(59)    = 1
trigger1 = roundstate = [0,1]
trigger2   = roundstate  = 4
trigger3   = win
trigger4   = lose
trigger5  = drawgame
trigger6   = !alive
ignorehitpause = 1
var(59) = -1


[State -1]
type = VarSet
trigger1 = var(59)    = -1
trigger1 = roundstate = 2 && enemynear,life > 0
trigger1 = ctrl
ignorehitpause = 1
var(59) = 1


[State -3]
Type = Helper
Trigger1 = NumHelper(50000) = 0 && !Var(59)
Trigger1 = RoundState = 2 && alive && StateNo = 0
Trigger1 = PrevStateNo = 5900 || PrevStateNo = [190,199]
StateNo = 50000
PosType = P1
Pos = 0, 0
KeyCtrl = 1
Ownpal = 1
ID = 50000
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -3]
type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
trigger1= ishelper(50000)
trigger1= stateno!=50000
value=50000






[State -1, AI]
Type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
TriggerAll = var(59) =1
trigger1 = stateno = [120,139]
trigger1 = stateno = [150,159]
Trigger1 =p2statetype != A || p2statetype = A
trigger1 = p2movetype != A || p2movetype = I
Value = 140

[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 120
triggerall = alive
triggerall = var(59)      = 1
triggerall = random <= 750*var(59)
trigger1   = ctrl
trigger1   = p2movetype    = A
trigger1   = enemynear,hitdefattr = SCA, AA, AP
trigger1   = p2bodydist x >= 0
trigger1   = inguarddist
trigger2   = ctrl
trigger2   = enemynear,movetype = A
trigger2   = enemy,numhelper > 0 || enemy,numproj > 0
trigger2   = inguarddist
trigger3   = ctrl
trigger3   = enemynear,movetype = A
trigger3   = enemynear,hitdefattr = SCA, AA, AP
trigger3   = p2bodydist x  < 0
trigger4   = stateno       = 100
trigger4   = p2movetype    = A
trigger4   = enemynear,hitdefattr = SCA, AA, AP
trigger4   = inguarddist
trigger5   = stateno       = 100
trigger5   = enemynear,movetype = A
trigger5   = enemy,numhelper > 0 || enemy,numproj > 0
trigger5   = inguarddist















[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16000
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = random <= var(59)*300
triggerall = p2bodydist x >= 30
trigger1 = ctrl




[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 20
triggerall = random <= var(59)*800
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10400
triggerall = roundstate = 2
triggerall = var(49)
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 25
triggerall = random <= var(59)*800
trigger1 = ctrl



[State -3, ?????]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),800,10800)
TriggerAll = var(59) =1
TriggerAll = (RoundState = 2) && Alive
TriggerAll = statetype != A
triggerAll = p2bodydist X <= 25
triggerAll = (p2statetype != A) && (p2statetype != L)
triggerall = p2stateno != 5120
triggerAll = p2movetype != H
triggerall = random <= 550*var(59)
trigger1 = ctrl

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10420
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = var(49)
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x = [26,40]
triggerall = random <= var(59)*300
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = A && p2movetype != H
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*700
trigger1 = ctrl

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 23000
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = power >= 1000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*400
trigger1 = ctrl





[State -1, ボヨヨン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = var(59) = 1&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = p2statetype != A
triggerall = p2movetype != A
triggerall = statetype != A
triggerall = p2bodydist x = [40,60]
triggerall = random <= var(59)*500
trigger1 = ctrl

[State -1, ボヨヨン]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = var(59) = 1&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = p2statetype = L
triggerall = statetype != A
triggerall = random <= var(59)*700
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59) = 1&& RoundState = 2
triggerall = !var(30)
triggerall = power >= 100
triggerall = random <= var(59)*500
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4000

[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59) = 1&& RoundState = 2

triggerall = !var(30)
triggerall = power >= 100
triggerall = random <= var(59)*500
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4005



[State -1,ドジュウM]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1160
triggerall = var(59)= 1
triggerall = RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !numhelper(1001)
triggerall = statetype != A
triggerall = p2movetype != A
triggerall = random <= var(59)*300
triggerall = ctrl
Trigger1 = P2bodyDist X > 150

[State -1,ドジュウM]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1130
triggerall = var(59) = 1&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = !numhelper(1001)
triggerall = statetype != A
triggerall = p2movetype != A
triggerall = random <= var(59)*300
triggerall = ctrl
Trigger1 = P2bodyDist X > 150

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*800
trigger1 = ctrl



[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10620
triggerall = var(59) = 1
triggerall = var(49)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall =p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 40
triggerall = random <= var(59)*500
trigger1 = ctrl
trigger2 = stateno = 1950



[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10610
triggerall = var(59) = 1
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A && p2statetype != L
triggerall = p2bodydist x <= 30
triggerall = random <= var(59)*800
trigger1 = ctrl





[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),1000,11000)
triggerall = !numhelper(1001)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype != A
triggerall = random <= var(59)*100
trigger1 = p2bodydist x >100
trigger1 = ctrl










[State -1, クイックスタンドon]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10901
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*800
trigger1 = stateno = 220 && movecontact




[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),400,10400)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x <= 15
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 400 && movecontact
trigger2 = var(49)
trigger2 = stateno = 10400 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*800
trigger1 = p2bodydist x >= 10
trigger1 = !var(49)
trigger1 = stateno = 400 && movecontact




[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(random <= 500,10200,10420)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x >= 15
triggerall = random <= var(59)*800
trigger1 = stateno = 10400 && movecontact



[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = random <= var(59)*800
triggerall = p2movetype = H
trigger1 = stateno = 10420 && movehit

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 240
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2bodydist x >= 15
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 400 && movecontact

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),210,10210)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 200 && movecontact
trigger2 = var(49)
trigger2 = stateno = 10200 && movecontact

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),220,10220)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 210 && movecontact
trigger2 = !var(49)
trigger2 = p2bodydist x >= 20
trigger2 = stateno = 400 && movecontact
trigger3 = var(49)
trigger3 = stateno = 10210 && movecontact

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),1000,11000)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = random <= var(59)*800
triggerall = power < 2000
trigger1 = !var(49)
trigger1 = stateno = 220 && movecontact
trigger2 = var(49)
trigger2 = stateno = 10220 && movecontact
trigger3 = var(49)
trigger3 = p2stateno = [120,159]
trigger3 = stateno = 10420 && movecontact

[State -1, GHA]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),3300,13300)
triggerall = var(59) = 1&& RoundState = 2
triggerall = power >= 2000
triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*700
trigger1 = !var(49)
trigger1 = stateno = 220 && movehit
trigger2 = var(49)
trigger2 = stateno = 10220 && movehit


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = ifelse(!var(49),3000,13000)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype = H
triggerall = random <= var(59)*300
trigger1 = power >= 1000 && power < 2000
trigger1 = !var(49)
trigger1 = stateno = 220 && movehit
trigger2 = power >= 1000 && power < 2000
trigger2 = var(49)
trigger2 = stateno = 10220 && movehit
trigger3 = var(49)
trigger3 = p2stateno != [120,159]
trigger3 = stateno = 11000 && time = [50,75]


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 615
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 600 && movecontact


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 620
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = random <= var(59)*800
trigger1 = !var(49)
trigger1 = stateno = 615 && movecontact






[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1950
triggerall = var(59)      = 1
triggerall = statetype    != A
triggerall = p2statetype  != A && p2statetype != L
triggerall = p2movetype   != H
triggerall = p2bodydist x  = [50,90]
trigger1   = ctrl || stateno = 21
trigger1   = random        < 100*var(59)




[State -1,]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 39
triggerall = var(59) = 2
triggerall = roundstate = 2
triggerall = p2bodydist x = [75,90]
triggerall = p2statetype != L
triggerall = random <= 200*var(59)
trigger1 = statetype != A
trigger1 = ctrl = 1



[State -1,]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 38
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2statetype != L
triggerall = p2bodydist x = [120,250]
triggerall = random <= 200*var(59)
trigger1 = statetype != A
trigger1 = ctrl = 1





[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = enemynear,movetype != A
triggerall = p2bodydist x >= 150
triggerall = random <= 160*var(59)
trigger1 = statetype != A
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = enemynear,statetype = L
trigger1 = stateno = 0
trigger1 = ctrl
trigger1 = p2bodydist x > 50



[State -3, RUN]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = var(59) = 1
triggerall = Random <= 800*var(59)
triggerall = RoundState = 2  && Alive
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 400*var(59)
trigger2 = p2bodydist x = [120,240]
trigger2 = Random <= 200*var(59)
trigger3 = p2bodydist x = [60,120]
trigger3 = Random <= 100*var(59)

[State -3,d]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = var(59) = 1
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = frontedgebodydist >= 90
triggerall = enemynear,movetype != A
Triggerall = EnemyNear,StateType != L
triggerall = ctrl
triggerall = prevstateno != 100
triggerall = prevstateno != 101
triggerall = prevstateno != 102
triggerall = !inguarddist
trigger1 = p2bodydist x = [240,290]
trigger1 = random <= (var(59))*400
trigger2 = p2bodydist x = [120,240]
trigger2 = random <= (var(59))*230
trigger3 = p2bodydist x > 270
trigger3 = random <= (var(59))*350
trigger4 = enemynear,statetype = A && enemynear,movetype = H
trigger4 = p2bodydist x > 120
trigger4 = random <= (var(59))*500


[State -3,bs]
Type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
triggerall = var(59) = 1
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = enemynear,movetype != A
triggerall = enemynear,movetype != H
triggerall = stateno != 104
triggerall = prevstateno != 104
triggerall = ctrl || stateno = 20 || stateno = 21
triggerall = backedgedist > 40
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = p2bodydist x <= 90
trigger1 = !numtarget
trigger1 = random <= var(59)*150
trigger2 = enemynear,statetype = L
trigger2 = p2bodydist x <= 40
trigger2 = random <= var(59)*250

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2statetype != L
trigger1 = stateno = 10901
trigger1 = animelem = 5, >= 1 && animelem = 5, <= 2






[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = Random <= 600*var(59)
triggerall = statetype != A
triggerall = enemynear,MoveType != H
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = P2bodydist X >= 125
trigger1 =Enemy,Numproj != 0
trigger2 = (enemynear,AnimTime <= -35 && !enemynear,Ctrl)
trigger2 = Enemy,Numproj != 0


[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value =702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = Random <= 200*var(59)
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,StateNo >= 200
triggerall =!enemynear,HitDefAttr = SCA, AT
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = BackEdgeBodyDist >= 40 && enemynear,statetype = A
trigger1 = (P2Dist X = [-15,15]) && (enemynear,Pos Y = [-100,-60])
trigger1 = enemynear,Vel Y > 0


[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = enemynear,time >= 50
triggerall = Random <= 200*var(59)
triggerall = Random <= 600*var(59)
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,StateNo >= 200
triggerall =!enemynear,HitDefAttr = SCA, AT
triggerall = enemynear,facing != facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = p2bodydist X = [0,150]
trigger1 = enemynear,animtime <= -30



[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = Random <= 900*var(59)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = enemynear,facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 100*var(59)
trigger2 = p2bodydist X > 100
trigger2 = Random <= 50*var(59)

[State -3, FRoll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 702
triggerall = var(59)=1
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
triggerall = Random <= 900*var(59)
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = movetype = H
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = (PrevStateNo=[5000,5270])
triggerall = enemynear,facing != facing
triggerall = ctrl
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 100*var(59)
trigger2 = p2bodydist X > 100
trigger2 = Random <= 50*var(59)


[state 0]
type = changestate
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114]))
trigger1 = ctrl
trigger1 = statetype != A
trigger1 = numhelper(1200000) = 1
value = 1260000