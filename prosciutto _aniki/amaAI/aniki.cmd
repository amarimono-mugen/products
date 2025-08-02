;『プロシュート兄貴』のコマンドファイルです。
; コマンドに関する設定は４部構成になっています。
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
; ここはWin版から（正確にはLinux版から）追加された要素の二つ。
; コマンド関連の初期設定を任意に指定出来るようになった(`・ω・´)
;
;『ボタンリマップ』はボタン配置変更用の項目。
; 定義パートでいちいち変更しなくても良いようになっちゃった。
; 面倒臭い人用かな！（ﾏﾃｺﾗ
;
;『デフォルト設定』では各[Command]で省略した場合の
; 入力受付時間と入力記憶時間を予め決めておく項目。
;
;
; この２項目は省略可能。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;
;------------------------------------------------------------------------------
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
Name = "AI_60"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。
[Command]
name = "GHD_xy"
command = ~D, DB, B, x+y

[Command]
name = "GHD_yz"
command = ~D, DB, B, y+z

[Command]
name = "GHD_xz"
command = ~D, DB, B, x+z

[Command]
name = "SPHxyz"
command = ~D, DF, F, x+y+z
time = 20

[Command]
name = "SPHxy"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "SPHyz"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "SPHxz"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "USEF"
command = ~D, DF, F, b
time = 15

[Command]
name = "USEB"
command = ~D, DB, B, b
time = 15
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 12

[Command]
name = "upper_y"
command = ~F, D, DF, y
time = 12

[Command]
name = "upper_z"
command = ~F, D, DF, z
time = 12

[Command]
name = "upper_b"
command = ~F, D, DF, b
time = 12

[Command]
name = "COU_x"
command = ~B, D, DB, x
time = 12

[Command]
name = "COU_y"
command = ~B, D, DB, y
time = 12

[Command]
name = "COU_z"
command = ~B, D, DB, z
time = 12

[Command]
name = "GHD_a"
command = ~D, DB, B, a
time = 12

[Command]
name = "SNK_x"
command = ~$B, F, x
time = 12

[Command]
name = "SNK_y"
command = ~$B, F, y
time = 12

[Command]
name = "SNK_z"
command = ~$B, F, z
time = 12

[Command]
name = "HD_a"
command = ~D, DF, F, a
time = 12

[Command]
name = "HD_x"
command = ~D, DF, F, x
time = 12

[Command]
name = "HD_y"
command = ~D, DF, F, y
time = 12

[Command]
name = "HD_z"
command = ~D, DF, F, z
time = 12

[Command]
name = "GUN_x"
command = ~D,D,x
time = 10

[Command]
name = "GUN_y"
command = ~D,D,y
time = 10

[Command]
name = "GUN_z"
command = ~D,D,z
time = 10

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y
time = 12

[Command]
name = "GTSP_x"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "GTSP_y"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "GTSP_z"
command = ~F, DF, D, DB, B, z
time = 20
;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

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
;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

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
;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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

;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_c"
command = /c

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
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
;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
;------------------------------------------------------------------------------
; ■準常時監視ステート（－１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================

[State -1, 直に叩き込む！]
type = ChangeState
value = 3300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49) 
triggerall = command = "SPHxyz"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = NumHelper(1001) = 0 
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = NumHelper(1001) = 0 
trigger4 = (stateno = 410) && time >= 5

[State -1, 老いてもらうぞ！]
type = ChangeState
value = 3000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "GHD_xy" || command = "GHD_yz" || command = "GHD_xz" || command = "USEB"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = var(29)=0
trigger1 = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = NumHelper(1001) = 0 
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = NumHelper(1001) = 0 
trigger4 = (stateno = 410) && time >= 5

[State -1, 直は素早いんだぜ！]
type = ChangeState
value = 3200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "SPHxy" || command = "SPHyz" || command = "SPHxz" || command = "USEF"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = NumHelper(1001) = 0 
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = NumHelper(1001) = 0 
trigger4 = (stateno = 410) && time >= 5
;------------------------------------------------------------------------------
[State -1, ON直に叩き込む！]
type = ChangeState
value = 13300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "SPHxyz"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = var(29)=0
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 8

[State -1, ON老いてもらうぞ！]
type = ChangeState
value = 13000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "GHD_xy" || command = "GHD_yz" || command = "GHD_xz" || command = "USEB"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = var(29)=0
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 8

[State -1, 直は素早いんだぜ！]
type = ChangeState
value = 13200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "SPHxy" || command = "SPHyz" || command = "SPHxz" || command = "USEF"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 8
;------------------------------------------------------------------------------
[State -1, デム]
type = ChangeState
value = 3900
triggerall = var(59)<=0&& RoundState = 2 
;triggerall = var(43) = 0
triggerall = numhelper(4657) = 0
triggerall = command = "GHD_a"
triggerall = power >= 1000
triggerall = NumHelper(1001) = 0 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
ignorehitpause = 0
;------------------------------------------------------------------------------
; ここで↑にて実際に使っている「スマッシュカンフーアッパーのChangeState」を例に
; 見て行きましょ！m9っ｀Д´)
;
; まず特定のコマンドを入力したいならば、
; 必ず『呼び出すコマンドのトリガー』は設定しましょう。
; 特殊な条件でない限り、コマンドは通常「triggerall」の方で設定した方が良い。
;
;「triggerall」とは『有効になる状況を限定するための条件』を指定する。
; triggerallの条件が有効にならない限り、trigger1以降の条件も有効にはならない。
; 何個でも増やせる。ステート作成の基本テクニックの一つなので覚えておいてね。
; しかしtriggerallはtrigger1以降が無いと「単体では」使えないので注意。
;（trigger1以降を全てコメント化してM.U.G.E.Nでそのキャラを選んで試してみよう）
;
;
; ※『パワーゲージ』は「スーパーコンボゲージ」や「超必殺技ゲージ」などで
; 　呼ばれてる部分のゲージです。
; 　ゲージが「１０００ポイント」なら『レベル１』と同じ意味になります。
;
; 　まぁパッと見、M.U.G.E.Nのパワーゲージって仕組みが
; 　ストＺＥＲＯシリーズの「スーパーコンボレベルゲージ」まんまだよね（苦笑
;------------------------------------------------------------------------------
; 変数の使い方の例。
;
; カンフーマンの「地上で必殺技が出せる状況」や、
; 通常技から必殺技へ繋ぐ時の「キャンセル」の部分を設定している。
; 地上で成功すれば、『変数の例２』のステートコントローラで設定した
; 変数が実行され、それ以外なら『変数の例１』でリセットする、という処理。
;
; 個人的にはこの方法はオススメしない。kfmcでの方法を推薦します。
------------------------------------------------------------------------------
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59)<=0&& RoundState = 2 
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)<=0&& RoundState = 2 
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 朽ち果てろ！]
type = ChangeState
value = 1100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "GTSP_x" || command = "GTSP_y" || command = "GTSP_z"
triggerall = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ON朽ち果てろ！]
type = ChangeState
value = 11100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "GTSP_x" || command = "GTSP_y" || command = "GTSP_z" 
triggerall = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, カウンター]
type = ChangeState
value = 1300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "COU_x" 
triggerall = statetype != A
trigger1 = ctrl

[State -1, カウンター中]
type = ChangeState
value = 1340
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "COU_y" 
triggerall = statetype != A
trigger1 = ctrl

[State -1, カウンター屈]
type = ChangeState
value = 1350
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "COU_z"
triggerall = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, 対空弱]
type = ChangeState
value = 11300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "GUN_x"
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1, 対空中]
type = ChangeState
value = 11310
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "GUN_y"
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1, 対空強]
type = ChangeState
value = 11320
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "GUN_z"
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8
;------------------------------------------------------------------------------
[State -1, 連打　弱]
type = ChangeState
value = 1200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "HD_x" || command = "USEF"
triggerall = statetype != A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 210) && anim = 210 && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = (stateno = 410) && anim = 410 && time >= 5

[State -1, 連打　中]
type = ChangeState
value = 1210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "HD_y"
triggerall = statetype != A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 210) && anim = 210 && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = (stateno = 410) && anim = 410 && time >= 5

[State -1, 連打　強]
type = ChangeState
value = 1220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "HD_z"
triggerall = statetype != A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 210) && anim = 210 && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = (stateno = 410) && anim = 410 && time >= 5
;------------------------------------------------------------------------------
[State -1,ON連打弱]
type = ChangeState
value = 11200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "HD_x" || command = "USEF"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1,ON連打中]
type = ChangeState
value = 11210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "HD_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1,ON連打強]
type = ChangeState
value = 11220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "HD_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8
;------------------------------------------------------------------------------
[State -1, 空中連打　弱]
type = ChangeState
value = 1400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "HD_x" || command = "USEF"
triggerall = statetype = A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 3
trigger3 = (stateno = 610) && time >= 8
trigger4 = (stateno = 620) && time >= 8

[State -1, 空中連打　中]
type = ChangeState
value = 1400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "HD_y"
triggerall = statetype = A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 3
trigger3 = (stateno = 610) && time >= 8
trigger4 = (stateno = 620) && time >= 8

[State -1, 空中連打　強]
type = ChangeState
value = 1400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "HD_z"
triggerall = statetype = A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 3
trigger3 = (stateno = 610) && time >= 8
trigger4 = (stateno = 620) && time >= 8
;------------------------------------------------------------------------------
[State -1, ON空中連打]
type = ChangeState
value = 11400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "HD_x" || command = "HD_y"  || command = "HD_z" || command = "USEF"
triggerall = statetype = A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 10600) && time >= 4
trigger3 = (stateno = 10615) && time >= 4
trigger4 = (stateno = 10610) && time >= 6
trigger5 = (stateno = 10650) && time >= 6
trigger6 = (stateno = 10620) && time >= 10
trigger7 = (stateno = 10670) && time >= 10
;trigger8 = (stateno = 11301) && time >= 10
;trigger9 = (stateno = 11311) && time >= 10
;trigger10 = (stateno = 11321) && time >= 10
;------------------------------------------------------------------------------
[State -1, 銃]
type = ChangeState
value = 1000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && anim = 210 && time >= 7
trigger3 = (stateno = 410) && anim = 410 && time >= 5
trigger4 = (stateno = 1130) && time >= 60
trigger5 = (stateno = 1330) && time >= 60
;------------------------------------------------------------------------------
[State -1, 銃 弱]
type = ChangeState
value = 11000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = command = "x"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1, 銃 中]
type = ChangeState
value = 11010
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = command = "y"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1, 銃 強]
type = ChangeState
value = 11020
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8
;==============================================================================
; 特殊技
;==============================================================================
---------------------------------------------------------------------------
ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z" || command = "upper_b"
trigger1 = (stateno = 151 || stateno = 153)

ONガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z" || command = "upper_b"
trigger1 = (stateno = 151 || stateno = 153)
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = (command = "holdfwd" || command = "holdback") && command = "z"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;投げ on
[State -1, Kung Fu Throw]
type = ChangeState
value = 10900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = (command = "holdfwd" || command = "holdback") && command = "z"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(310) = 0 
triggerall = statetype != A 
triggerall = command = "b"
trigger1 = ctrl
trigger2 = (stateno = 1320) && time <= 5
trigger3 = (stateno = 1370) && time <= 5
value = 300
;------------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 180   ;挑発
trigger3 = stateno = 220 || stateno = 420
trigger4 = stateno = 1000 || stateno = 1003 || stateno = 1005
trigger5 = stateno = 1100 || stateno = 1103 || stateno = 1105
trigger6 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger7 = stateno = 1300 || stateno = 1340 || stateno = 1350
trigger8 = stateno = 11000 || stateno = 11010 || stateno = 11040
trigger9 = stateno = 11100 || stateno = 11110 || stateno = 11140
trigger10 = stateno = 240 || stateno = 10240
value = 700
ignorehitpause = 1
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(4010) = 0
triggerall = power >= 250
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
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(4010) = 0
triggerall = power >= 250
trigger1 = command = "x+y+z" || command = "b"
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
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 14000 && prevstateno != 14005
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
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 14000 && prevstateno != 14005
value = 14005
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
[State -1,発現立ち弱]
type = ChangeState
value = 10215
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = stateno = 200 && anim = 200 && time > 4
trigger3 = stateno = 400 && anim = 400 && time >= 4

[State -1,発現立中]
type = ChangeState
value = 10250
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = stateno = 200 && anim = 200 && time > 3
trigger3 = stateno = 400 && anim = 400 && time > 3

[State -1,発現立強]
type = ChangeState
value = 10270
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = stateno = 200 && anim = 200 && time > 3
trigger3 = stateno = 210 && anim = 210 && time >= 7
trigger4 = stateno = 400 && anim = 400 && time > 3
trigger5 = stateno = 410 && anim = 410 && time >= 4
;------------------------------------------------------------------------------
[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && anim = 200 && time > 4
trigger3 = stateno = 400 && anim = 400 && time >= 4
trigger4 = (stateno = 100) && time >= 0
trigger5 = (stateno = 105) && time >= 0

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time > 3
trigger3 = (stateno = 400) && anim = 400 && time > 3
trigger4 = (stateno = 100) && time >= 0
trigger5 = (stateno = 105) && time >= 0

[State -1, 前立ち強]
type = ChangeState
value = 240
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time > 3
trigger3 = (stateno = 210) && anim = 210 && time >= 7
trigger4 = (stateno = 400) && anim = 400 && time > 3
trigger5 = (stateno = 410) && anim = 410 && time >= 4

[State -1, 立ち強]
type = ChangeState
value = 220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time > 3
trigger3 = (stateno = 210) && anim = 210 && time >= 7
trigger4 = (stateno = 400) && anim = 400 && time > 3
trigger5 = (stateno = 410) && anim = 410 && time >= 4

[State -1, 立ち強（スタンド出てる場合）]
type = ChangeState
value = 230
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) != 0 
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time >= 0
trigger3 = (stateno = 105) && time >= 0

[State -1, D立ち強]
type = ChangeState
value = 250
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (stateno = 100) && time >= 0
trigger2 = (stateno = 105) && time >= 0
;------------------------------------------------------------------------------
[State -1,ON立ち弱]
type = ChangeState
value = 10200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10400) && time >= 4
trigger5 = (stateno = 10415) && time >= 4

[State -1,ON立ち中]
type = ChangeState
value = 10210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10400) && time >= 4
trigger5 = (stateno = 10415) && time >= 4
trigger6 = (stateno = 100) && time >= 0
trigger7 = (stateno = 105) && time >= 0

[State -1,ON後立ち強]
type = ChangeState
value = 10230
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10210) && time >= 10
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1,ON前立ち強]
type = ChangeState
value = 10240
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1,ON立ち強]
type = ChangeState
value = 10220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8
;------------------------------------------------------------------------------
[State -1, 発現攻撃]
type = ChangeState
value = 10300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "HD_a"
triggerall = statetype != A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1,発現しゃがみ弱]
type = ChangeState
value = 10415
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "x+a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 200 && anim = 200 && time > 4
trigger4 = stateno = 400 && anim = 400 && time >= 4

[State -1,発現しゃがみ中]
type = ChangeState
value = 10450
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "y+a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 200 && anim = 200 && time > 3
trigger4 = stateno = 400 && anim = 400 && time > 3

[State -1,発現しゃがみ強]
type = ChangeState
value = 10470
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z+a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 200 && anim = 200 && time > 3
trigger4 = stateno = 210 && anim = 210 && time >= 8
trigger5 = stateno = 400 && anim = 400 && time > 3
trigger6 = stateno = 410 && anim = 410 && time >= 4
;------------------------------------------------------------------------------
[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && anim = 400 && time >= 4
trigger3 = (stateno = 200) && anim = 200 && time > 4
trigger4 = (stateno = 100) && time > 2
trigger5 = (stateno = 105) && time > 2

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 400) && anim = 400 && time >= 4
trigger4 = (stateno = 100) && time > 2
trigger5 = (stateno = 105) && time > 2

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 400) && anim = 400 && time >= 4
trigger4 = (stateno = 410) && time > 8
trigger5 = (stateno = 100) && time > 2
trigger6 = (stateno = 105) && time > 2

[State -1, しゃがみ強 （スタンド出てる場合）]
type = ChangeState
value = 410
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) != 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 400) && anim = 400 && time >= 4
trigger4 = (stateno = 100) && time > 2
trigger5 = (stateno = 105) && time > 2
;------------------------------------------------------------------------------
[State -1,ON屈弱]
type = ChangeState
value = 10400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = (stateno = 10200) && time >= 4
trigger4 = (stateno = 10215) && time >= 4
trigger5 = (stateno = 10400) && time >= 4
trigger6 = (stateno = 10415) && time >= 4

[State -1,ON屈中]
type = ChangeState
value = 10410
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = (stateno = 10200) && time >= 4
trigger4 = (stateno = 10215) && time >= 4
trigger5 = (stateno = 10400) && time >= 4
trigger6 = (stateno = 10415) && time >= 4

[State -1,ON屈強]
type = ChangeState
value = 10420
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = (stateno = 10415) && time >= 4
trigger4 = (stateno = 10450) && time >= 8
;------------------------------------------------------------------------------
[State -1,発現ジャンプ弱]
type = ChangeState
value = 10615
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "x+a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact

[State -1,発現ジャンプ中]
type = ChangeState
value = 10650
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "y+a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact

[State -1,発現ジャンプ強]
type = ChangeState
value = 10670
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z+a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
;------------------------------------------------------------------------------
[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "z"
triggerall = NumHelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact

[State -1, ジャンプ強 （スタンド出てる場合）]
type = ChangeState
value = 610
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "z"
triggerall = NumHelper(1001) != 0
trigger1 = statetype = A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ONジャンプ弱]
type = ChangeState
value = 10600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = (stateno = 11301) && time >= 10
;trigger3 = (stateno = 11311) && time >= 10
;trigger4 = (stateno = 11321) && time >= 10

[State -1, ONジャンプ中]
type = ChangeState
value = 10610
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = (stateno = 11301) && time >= 10
;trigger3 = (stateno = 11311) && time >= 10
;trigger4 = (stateno = 11321) && time >= 10

[State -1, ONジャンプ強]
type = ChangeState
value = 10620
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10610
trigger2 = movecontact
;trigger3 = (stateno = 11301) && time >= 10
;trigger4 = (stateno = 11311) && time >= 10
;trigger5 = (stateno = 11321) && time >= 10
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
Trigger16 = Command = "AI_58" || Command = "AI_59" || Command = "AI_60" 
trigger17 = Helper(50000),var(59)
;trigger18 = RoundState = 2  ;常時AI起動トリガー　
V = 59
Value = 1
IgnoreHitPause = 1---
;------------------------------------------------------------------------------
;ぶっぱデム(ノーマル)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3900
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(1001) = 0
triggerall = !numhelper(4657)
triggerall = life <= 300
triggerall = power >= 1000
Triggerall= EnemyNear,moveType = A
Triggerall= EnemyNear,StateType != A
Triggerall= EnemyNear,StateType != L
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,100] 
triggerall = enemynear,animtime <= -15
triggerall = var(58) <= 10
triggerall = var(58) >= 7
trigger1 = Random = [200,999]
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = stateno = 200 || stateno = 210
trigger3 = stateno = 400 || stateno = 410
trigger4 = stateno = 10200 || stateno = 10400 || stateno = 10210 || stateno = 10410
trigger5 = stateno = 10220 || stateno = 10420

;ぶっぱデム(ハード)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3900
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(1001) = 0
triggerall = !numhelper(4657)
triggerall = life <= 1000
triggerall = power >= 1000
Triggerall= EnemyNear,moveType = A
Triggerall= EnemyNear,StateType != A
Triggerall= EnemyNear,StateType != L
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,100] 
triggerall = enemynear,animtime <= -15
triggerall = var(58) >= 11
triggerall = var(56) >= 2
trigger1 = Random = [200,999]
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = stateno = 200 || stateno = 210
trigger3 = stateno = 400 || stateno = 410
trigger4 = stateno = 10200 || stateno = 10400 || stateno = 10210 || stateno = 10410
trigger5 = stateno = 10220 || stateno = 10420
;------------------------------------------------------------------------------
[State -1, 老化けむり]
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype = A
triggerall = statetype != A
triggerall = power >= 1000
triggerall = NumHelper(1001) = 0
trigger1 = var(56) <= 6
trigger1 = var(56) > 2
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,ctrl = 0
trigger1 = P2BodyDist X = [-20,80]
trigger1 = P2BodyDist Y = [-60,0]
trigger1 = enemynear,animtime <= -15
trigger1 = random<=var(58)*5

trigger2 = var(56) <= 2
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = P2BodyDist X = [-20,60]
trigger2 = P2BodyDist Y = [-30,0]
trigger2 = random<=var(58)*50

trigger3 = var(56) <= 2
trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger3 = P2BodyDist X >= 200
trigger3 = random<=var(58)*5

[State -1, ON老化けむり]
type = ChangeState
value = 13000
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype = A
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(56) <= 6
trigger1 = var(56) > 2
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,ctrl = 0
trigger1 = P2BodyDist X = [-20,80]
trigger1 = P2BodyDist Y = [-70,0]
trigger1 = enemynear,animtime <= -15
trigger1 = random<=var(58)*5

trigger2 = var(56) <= 2
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = P2BodyDist X = [-20,60]
trigger2 = P2BodyDist Y = [-30,0]
trigger2 = random<=var(58)*50

trigger3 = var(56) <= 2
trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger3 = P2BodyDist X >= 200
trigger3 = random<=var(58)*5

;ぶっぱ直すば
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 13200
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000 
triggerall = life <= 1000
triggerall = power >= 1000
Triggerall= EnemyNear,moveType = A
Triggerall= EnemyNear,StateType != L
Triggerall= EnemyNear,vel x >= 0
Triggerall= EnemyNear,vel y >= 0
triggerall = statetype != A
triggerall = P2BodyDist X = [30,120]
triggerall = P2BodyDist Y = [-80,-20] 
;triggerall = enemynear,animtime <= -10
triggerall = var(58) >= 7
trigger1 = random<=var(58)*40
;trigger1 = Random = [200,999]
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = random<=var(58)*40
trigger2 = stateno = 10200 || stateno = 10400 || stateno = 10210 || stateno = 10410

[State -1, ON叩き込む!光返し]
type = ChangeState
value = 13300
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = power >= 2000
triggerall = helper(50000),var(15) >= 40
triggerall = P2MoveType = A
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,80] 
triggerall = enemynear,animtime <= -8
TriggerAll= EnemyNear,StateType != A
triggerall = random<=var(58)*40
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger2 = stateno = 10200
trigger3 = stateno = 10210
trigger4 = stateno = 10400
trigger5 = stateno = 10410
;------------------------------------------------------------------------------
[State -1, 朽ち果てろ！]
type = ChangeState
value = 1100
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = (enemynear,stateno = [120,155]) || enemynear,stateno = 0 || enemynear,stateno = 11
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = enemynear,movetype != A
trigger1 = P2BodyDist X = [-20,30]
trigger1 = random<=var(58)*30
;------------------------------------------------------------------------------
[State -1, 連打　弱]
type = ChangeState
value = 1200
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = var(58)>=7
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = enemynear,movetype != A
trigger1= random<=var(58)*1
trigger1 = P2BodyDist X = [60,80]

trigger2 = var(58)<=6
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype != A
trigger2 = enemynear,movetype != A
trigger2= random<=var(58)*2
trigger2 = P2BodyDist X = [30,70]

[State -1, 連打　中]
type = ChangeState
value = 1210
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = enemynear,statetype != L
trigger1 = var(58)>=7
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = enemynear,movetype != A
trigger1= random<=var(58)*2
trigger1 = P2BodyDist X = [80,90]

trigger2 = enemynear,statetype != L
trigger2 = var(58)<=6
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype != A
trigger2 = enemynear,movetype != A
trigger2= random<=var(58)*3
trigger2 = P2BodyDist X = [70,90]

trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger3 = enemynear,stateno = 5120
trigger3 = P2BodyDist X = [-20,60] 
trigger3 = random<=var(58)*5

[State -1, 連打　強]
type = ChangeState
value = 1220
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = var(58)>=7
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = enemynear,movetype != A
trigger1= random<=var(58)*5
trigger1 = P2BodyDist X = [90,110]

trigger2 = var(58)<=6
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype != A
trigger2 = enemynear,movetype != A
trigger2= random<=var(58)*10
trigger2 = P2BodyDist X = [90,110]
;------------------------------------------------------------------------------
[State -1, カウンター高]
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = var(58)>=7
trigger1 = enemynear,animtime <= -10
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype = A
trigger1 = P2BodyDist X = [-20,60]
trigger1 = enemynear,pos y > -60
trigger1 = random<=var(58)*20

trigger2 = var(58)>=7
trigger2 = var(47) = 0
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype = A
trigger2 = enemynear,movetype != A
trigger2 = P2BodyDist X = [-20,50]
trigger2 = enemynear,pos y > -60
trigger2 = random<=var(58)*10

trigger3 = var(58)<=6
trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger3 = enemynear,statetype = A
trigger3 = enemynear,movetype != A
trigger3 = P2BodyDist X = [-20,60]
trigger3 = enemynear,pos y > -80
trigger3 = random<=var(58)*15

[State -1, カウンター中]
type = ChangeState
value = 1340
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = var(58)>=7
trigger1 = enemynear,animtime <= -10
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype = S
trigger1 = enemynear,movetype = A
trigger1 = P2BodyDist X = [-20,60]
trigger1= enemynear,pos y > -60
trigger1= random<=var(58)*20

trigger2 = var(58)>=7
trigger2 = var(47) = 0
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype = S
trigger2 = enemynear,movetype != A
trigger2 = P2BodyDist X = [-20,50]
trigger2 = enemynear,pos y > -60
trigger2 = random<=var(58)*10

trigger3 = var(58)<=6
trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger3 = enemynear,statetype = S
trigger3 = enemynear,movetype != A
trigger3 = P2BodyDist X = [-20,60]
trigger3 = enemynear,pos y > -80
trigger3 = random<=var(58)*15

[State -1, カウンター低]
type = ChangeState
value = 1350
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != H
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = var(58)>=7
trigger1 = enemynear,animtime <= -10
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype = C
trigger1 = enemynear,movetype = A
trigger1 = P2BodyDist X = [-20,60]
trigger1 = enemynear,pos y > -60
trigger1= random<=var(58)*20

trigger2 = var(58)>=7
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype = C
trigger2 = enemynear,movetype != A
trigger2 = P2BodyDist X = [-20,50]
trigger2 = enemynear,pos y > -60
trigger2 = random<=var(58)*10

trigger3 = var(58)<=6
trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger3 = enemynear,statetype = C
trigger3 = enemynear,movetype != A
trigger3 = P2BodyDist X = [-20,60]
trigger3 = enemynear,pos y > -80
trigger3 = random<=var(58)*15

;------------------------------------------------------------------------------
[State -1, 連打　空中]
type = ChangeState
value = 1400
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = statetype = A
triggerall = NumHelper(1001) = 0
trigger1 = var(58)>=7
trigger1 = ctrl
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype != A
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [40,80]
trigger1 = P2BodyDist Y = [-50,30]

trigger2 = var(58)<=6
trigger2 = ctrl
trigger2 = enemynear,statetype = A
trigger2 = random<=var(58)*3
trigger2 = P2BodyDist X = [40,80]
trigger2 = P2BodyDist Y = [-50,30]
;------------------------------------------------------------------------------
[State -1, 銃]
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = statetype != A
trigger1 = var(58)>=7
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype = S
trigger1 = enemynear,movetype != A
trigger1 = P2BodyDist X = [10,80]
trigger1= random<=var(58)*1
trigger2 = (stateno = 1130) && time >= 65 && enemynear,movetype = H
trigger3 = (stateno = 1330) && time >= 65 && enemynear,movetype = H
trigger4 = var(58)<=6
trigger4 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger4 = enemynear,statetype != A
trigger4 = enemynear,movetype != A
trigger4 = P2BodyDist X = [-20,90]
trigger4= random<=var(58)*5
;------------------------------------------------------------------------------
[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = statetype != A
trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != C
trigger1= EnemyNear,Stateno != 1110
trigger1 = random<=var(58)*10
trigger1 = P2BodyDist X = [-20,55] 
trigger1 = P2BodyDist Y = [-30,0] 

trigger2 = var(58)>=7
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype != C
trigger2= EnemyNear,Stateno != 1110
trigger2 = random<=var(58)*15
trigger2 = P2BodyDist X = [-20,55]
trigger2 = P2BodyDist Y = [-30,0]
;------------------------------------------------------------------------------
[State -1, 屈弱]
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = statetype != A
trigger1 = var(58)>=7
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1= EnemyNear,Stateno != 1110
trigger1 = random<=var(58)*20
trigger1 = P2BodyDist X = [-20,50]

trigger2 = var(58)<=6
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype != A
trigger2= EnemyNear,Stateno != 1110
trigger2 = random<=var(58)*10
trigger2 = P2BodyDist X = [-20,50] 
;------------------------------------------------------------------------------
[State -1, 立ち強]
type = ChangeState
value = 220
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1= random<=var(58)*8
trigger1 = P2BodyDist X = [50,100]
trigger1 = P2BodyDist Y = [-80,-20]
trigger1 = enemynear,pos y >= -100
;------------------------------------------------------------------------------
[State -1, 前立ち強]
type = ChangeState
value = 240
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = enemynear,statetype = C
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [50,100]

trigger1 = enemynear,statetype = S
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = random<=var(58)*3
trigger2 = P2BodyDist X = [50,100]
;------------------------------------------------------------------------------
[State -1, 屈中]
type = ChangeState
value = 410
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = statetype != A
trigger1 = enemynear,statetype = S
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1= random<=var(58)*10
trigger1 = P2BodyDist X = [30,70]

trigger2 = enemynear,statetype = C
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2= random<=var(58)*5
trigger2 = P2BodyDist X = [30,70]
;------------------------------------------------------------------------------
[State -1, 屈強]
type = ChangeState
value = 420
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,statetype != L
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = var(58)>=7
trigger1 = enemynear,statetype = S
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1= random<=var(58)*3
trigger1 = P2BodyDist X = [50,90]

trigger2 = var(58)<=6
trigger2 = enemynear,statetype = S
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2= random<=var(58)*6
trigger2 = P2BodyDist X = [30,100]
;------------------------------------------------------------------------------
[State -1, D立ち強]
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = enemynear,movetype != H
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != C
triggerall = statetype != A
triggerall = NumHelper(1001) = 0
trigger1 = var(58)>=7
trigger1 = ((stateno = 100 || stateno = 105) && time >= 1)
trigger1= random<=var(58)*12
trigger1 = P2BodyDist X = [-20,120]
trigger1 = enemynear,pos y > -60

trigger2 = var(58)<=6
trigger2 = ((stateno = 100 || stateno = 105) && time >= 1)
trigger2= random<=var(58)*4
trigger2 = P2BodyDist X = [30,100]
trigger2 = enemynear,pos y > -60
;------------------------------------------------------------------------------
;空中弱
[State -1, Jump Strong Kick]
type = ChangeState
value = 600
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1 = random<=var(58)*30
trigger1 = P2BodyDist X = [-30,30]
trigger1 = pos y >= -50
trigger1 = pos y <= -20

trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2 = random<=var(58)*30
trigger2 = P2BodyDist X = [-30,30]
trigger2 = pos y >= -50
trigger2 = pos y <= -20

trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*40
trigger3 = P2BodyDist X = [-30,30]
trigger3 = P2BodyDist Y = [0,60]
trigger3 = pos y <= -65
;------------------------------------------------------------------------------
;空中中
[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1 = random<=var(58)*30
trigger1 = P2BodyDist X = [-30,50]
trigger1 = pos y >= -90
trigger1 = pos y <= -70

trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2 = random<=var(58)*30
trigger2 = P2BodyDist X = [-30,50]
trigger2 = pos y >= -80
trigger2 = pos y <= -60

trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*40
trigger3 = P2BodyDist X = [-30,50]
trigger3 = P2BodyDist Y = [0,100]
trigger3 = pos y <= -65
;------------------------------------------------------------------------------
;空中強
[State -1, Jump Strong Kick]
type = ChangeState
value = 620
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1 = random<=var(58)*20
trigger1 = P2BodyDist X = [50,100]
trigger1 = pos y >= -85
trigger1 = pos y <= -65

trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2 = random<=var(58)*20
trigger2 = P2BodyDist X = [50,100]
trigger2 = pos y >= -85
trigger2 = pos y <= -65

trigger3 = vel y >= .1
trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*40
trigger3 = P2BodyDist X = [50,100]
trigger3 = P2BodyDist Y = [-100,100]
trigger3 = pos y <= -65

trigger4 = vel y >= .1
trigger4 = ctrl
trigger4 = enemynear,statetype != A
trigger4 = enemynear,stateno = 5120
trigger4 = enemynear,animtime <= -10
trigger4 = random<=var(58)*40
trigger4 = P2BodyDist X = [-20,80]
trigger4 = pos y <= -65
;------------------------------------------------------------------------------
[State -1, ON拳銃弱]
type = ChangeState
value = 11000
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1= EnemyNear,Stateno != 1110
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*10
trigger1 = P2BodyDist X = [40,70] 
trigger1 = P2BodyDist Y = [-30,0]

[State -1, ON拳銃中]
type = ChangeState
value = 11010
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1= EnemyNear,Stateno != 1110
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*10
trigger1 = P2BodyDist X = [70,120] 
trigger1 = P2BodyDist Y = [-40,0] 

[State -1, ON拳銃強]
type = ChangeState
value = 11020
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1= EnemyNear,Stateno != 1110
trigger1 = enemynear,statetype = A
trigger1 = random<=var(58)*10
trigger1 = P2BodyDist X = [50,80] 
trigger1 = P2BodyDist Y = [-70,0] 
;------------------------------------------------------------------------------
[State -1, ON立ち弱]
type = ChangeState
value = 10200
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != C
trigger1 = random<=var(58)*12
trigger1 = P2BodyDist X = [30,70] 
trigger1 = P2BodyDist Y = [-30,0] 

[State -1, ON立ち中]
type = ChangeState
value = 10210
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != C
trigger1 = random<=var(58)*8
trigger1 = P2BodyDist X = [70,120] 
trigger1 = P2BodyDist Y = [-40,0] 

[State -1, ON立ち強]
type = ChangeState
value = 10220
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != C
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [110,130] 
trigger1 = P2BodyDist Y = [-50,0]

[State -1, ON前立ち強]
type = ChangeState
value = 10240
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*2
trigger1 = P2BodyDist X = [50,80] 

[State -1, ON後立ち強]
type = ChangeState
value = 10230
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype = A
trigger1 = random<=var(58)*3
trigger1 = P2BodyDist X = [50,80] 
trigger1 = P2BodyDist Y = [-100,0] 
;------------------------------------------------------------------------------
[State -1, ON屈弱]
type = ChangeState
value = 10400
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*12
trigger1 = P2BodyDist X = [30,70] 

[State -1, ON屈中]
type = ChangeState
value = 10410
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*8
trigger1 = P2BodyDist X = [40,100] 

[State -1, ON屈強]
type = ChangeState
value = 10420
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [110,130]
;------------------------------------------------------------------------------
[State -1,ON空中弱]
type = ChangeState
value = 10600
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1 = random<=var(58)*15
trigger1 = P2BodyDist X = [-30,60]
trigger1 = pos y >= -50
trigger1 = pos y <= -20

trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2 = random<=var(58)*15
trigger2 = P2BodyDist X = [-30,60]
trigger2 = pos y >= -50
trigger2 = pos y <= -20

trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*30
trigger3 = P2BodyDist X = [-30,60]
trigger3 = P2BodyDist Y = [0,60]
trigger3 = pos y <= -65

[State -1,ON空中中]
type = ChangeState
value = 10610
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1 = random<=var(58)*15
trigger1 = P2BodyDist X = [-30,60]
trigger1 = pos y >= -90
trigger1 = pos y <= -40

trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2 = random<=var(58)*15
trigger2 = P2BodyDist X = [-30,60]
trigger2 = pos y >= -90
trigger2 = pos y <= -40

trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*30
trigger3 = P2BodyDist X = [-30,60]
trigger3 = P2BodyDist Y = [0,60]
trigger3 = pos y <= -55

[State -1,ON空中強]
type = ChangeState
value = 10620
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
trigger1 = vel y >= .1
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1 = random<=var(58)*10
trigger1 = P2BodyDist X = [50,100]
trigger1 = pos y >= -85
trigger1 = pos y <= -65

trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2 = random<=var(58)*10
trigger2 = P2BodyDist X = [50,100]
trigger2 = pos y >= -85
trigger2 = pos y <= -65

trigger3 = vel y >= .1
trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*30
trigger3 = P2BodyDist X = [50,100]
trigger3 = P2BodyDist Y = [-100,100]
trigger3 = pos y <= -65

trigger4 = vel y >= .1
trigger4 = ctrl
trigger4 = enemynear,statetype != A
trigger4 = enemynear,stateno = 5120
trigger4 = enemynear,animtime <= -10
trigger4 = random<=var(58)*30
trigger4 = P2BodyDist X = [-20,80]
trigger4 = pos y <= -65
;------------------------------------------------------------------------------
[State -1, 対空弱]
type = ChangeState
value = 11300
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = random<=var(58)*3
trigger1 = P2BodyDist X = [-30,30] 
trigger1 = P2BodyDist Y = [-80,0]

[State -1, 対空中]
type = ChangeState
value = 11310
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = random<=var(58)*3
trigger1 = P2BodyDist X = [-30,30] 
trigger1 = P2BodyDist Y = [-100,-80]

[State -1, 対空強]
type = ChangeState
value = 11320
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
;trigger1 = var(58)<=6
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || ((stateno = 100 || stateno = 105) && time >= 0) || stateno = 40 || stateno = 41
trigger1 = random<=var(58)*3
trigger1 = P2BodyDist X = [-30,30] 
trigger1 = P2BodyDist Y = [-120,-100]
;------------------------------------------------------------------------------
[State -1, ON朽ち果てろ！]
type = ChangeState
value = 11100
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
trigger1 = (enemynear,stateno = [120,155]) || enemynear,stateno = 0 || enemynear,stateno = 11
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = enemynear,movetype != A
trigger1 = P2BodyDist X = [30,65]
trigger1 = random<=var(58)*12
;------------------------------------------------------------------------------
[State -1, ON空中連打]
type = ChangeState
value = 11400
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype = A
trigger1 = var(58)>=7
trigger1 = ctrl
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype != A
trigger1 = random<=var(58)*10
trigger1 = P2BodyDist X = [60,90]
trigger1 = P2BodyDist Y = [-70,30]

trigger2 = var(58)<=6
trigger2 = ctrl
trigger2 = enemynear,statetype = A
trigger2 = random<=var(58)*5
trigger2 = P2BodyDist X = [60,90]
trigger2 = P2BodyDist Y = [-70,30]
;------------------------------------------------------------------------------
[State -1, ON連打　強]
type = ChangeState
value = 11220
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = enemynear,statetype != L
triggerall = statetype != A
trigger1 = var(58)>=7
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,movetype != A
trigger1= random<=var(58)*8
trigger1 = P2BodyDist X = [70,110]
trigger1 = P2BodyDist Y = [-40,0]
;---------------------------------------------------------------------------
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
triggerall = var(59)=1&& RoundState = 2
triggerall = Numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype = S
trigger1 = random<=var(58)*1
trigger1 = fvar(5) >= 30
trigger1 = ctrl
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
trigger1 = fvar(5) <= 30
trigger1 = ctrl
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
trigger1 = fvar(5) <= 30
trigger1 = ctrl
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
trigger1 = fvar(5) <= 30
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
[State -1, 投げ]
type = ChangeState
value = 900
triggerall = var(59) = 1 && RoundState = 2
triggerall = !var(49)
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = Numhelper(1001) = 0
triggerall = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = statetype != A
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*10
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random<=var(58)*10
trigger3 = enemynear,animtime <= -10
trigger3 = random<=var(58)*30

[State -1, ON投げ]
type = ChangeState
value = 10900
triggerall = var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = Numhelper(1001) = 0
triggerall = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = statetype != A
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*10
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random<=var(58)*10
trigger3 = enemynear,animtime <= -10
trigger3 = random<=var(58)*30
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,70]
trigger1 = var(58)>=7
trigger1 = random<=var(58)*5
trigger1 = (stateno = [150,153])
trigger1 = enemynear,animtime <= -30

;ONガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,70]
trigger1 = var(58)>=7
trigger1 = random<=var(58)*2
trigger1 = (stateno = [150,153])
trigger1 = enemynear,animtime <= -20
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3
trigger1 = inguarddist
ignorehitpause = 1
value = 4100

;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
triggerall = power >= 250
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3
trigger1 = inguarddist
value = 4105

;ONアドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = P2BodyDist X = [-20,100]
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3
trigger1 = inguarddist
ignorehitpause = 1
value = 14000

;ONアドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
triggerall = P2BodyDist X = [-20,100]
triggerall = power >= 250
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3
trigger1 = inguarddist
value = 14005
;--------------------------------------------------------------------------
[State -1, 回り込みAI];OFF時回避
type = ChangeState
value = 300
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = var(58) >= 1
triggerall = NumHelper(310) = 0 
triggerall = (RoundState = 2) && (Alive)
triggerall = statetype != A 
triggerall = prevstateno != 300

trigger1 = var(58)>=7
Trigger1 = EnemyNear,MoveType != H
Trigger1 = EnemyNear,StateType != L
trigger1 = frontedgebodydist>=150
trigger1 = random<=var(58)*10
trigger1 = enemynear,statetype = A && P2BodyDist X = [0,80] 
trigger1 = enemynear,movetype = A  
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

trigger2 = var(58)>=7
Trigger2 = EnemyNear,MoveType != H
Trigger2 = EnemyNear,StateType != L
trigger2 = frontedgebodydist>=150
trigger2 = NumHelper(1001) != 0 
trigger2 = random<=var(58)*10
trigger2 = P2BodyDist X = [0,100] 
trigger2 = enemynear,movetype = A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = enemynear,animtime <= -20

trigger3 = var(58)>=7
Trigger3 = EnemyNear,MoveType != H
Trigger3 = EnemyNear,StateType != L
trigger3 = frontedgebodydist>=150
trigger3 = random<=var(58)*6
trigger3 = P2BodyDist X = [0,100] 
trigger3 = enemynear,movetype = A
trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger3 = enemynear,animtime <= -30

trigger4 = var(58)>=7
Trigger4 = EnemyNear,MoveType != H
Trigger4 = EnemyNear,StateType != L
trigger4 = random<=var(58)*50
trigger4 = P2BodyDist X >= 0
trigger4 = var(47) <= 90
trigger4 = var(47) >= -10
trigger4 = var(47) != 0
trigger4 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

trigger5 = var(58)>=7
Trigger5 = EnemyNear,MoveType != H
Trigger5 = EnemyNear,StateType != L
trigger5 = frontedgebodydist>=150
trigger5 = random<=var(58)*5
Trigger5 = EnemyNear,movetype = A  
trigger5 = P2BodyDist X = [0,120] 
trigger5 = P2BodyDist Y = [-100,0] 
trigger5 = enemynear,animtime <= -15
trigger5 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

trigger6 = var(58)>=7
Trigger6 = EnemyNear,MoveType != H
Trigger6 = EnemyNear,StateType != L
trigger6 = frontedgebodydist>=150
trigger6 = random<=var(58)*5
Trigger6 = EnemyNear,movetype = A 
trigger6 = P2BodyDist X = [130,180] 
trigger6 = P2BodyDist Y = [-100,0] 
trigger6 = enemynear,animtime <= -30
trigger6 = p2movetype = A  
trigger6 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

trigger7 = random<=var(58)*10
trigger7 = P2BodyDist X = [0,80] 
trigger7 = BackEdgeBodyDist <= 60
trigger7 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

trigger8 = var(58)<=6
trigger8 = frontedgebodydist>=100
trigger8 = random<=var(58)*2
trigger8 = P2BodyDist X = [-20,60] 
trigger8 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

trigger9 = var(58)<=6
Trigger9 = EnemyNear,MoveType != H
Trigger9 = EnemyNear,StateType != L
trigger9 = random<=var(58)*25
trigger9 = P2BodyDist X >= 0
trigger9 = var(47) <= 90
trigger9 = var(47) >= -10
trigger9 = var(47) != 0
trigger9 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
;-----------------------------------------------------------------------------
;ガード
[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59)
triggerall = NumHelper(1001) = 0
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
;------------------------------------------------------------------------------
[State -1, 歩き]
type = ChangeState
value = 10020
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = stateno != 10020
triggerall = stateno != 100 && stateno != 105
trigger1 = ctrl || stateno = 21 || (stateno = [120,149])
trigger1 = P2BodyDist X >= 60
;------------------------------------------------------------------------------
[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = stateno != 100
triggerall = !inguarddist
Triggerall = EnemyNear,vel x <= 0
Triggerall = EnemyNear,ctrl= 0

trigger1 = var(58)>=7
trigger1 = EnemyNear,movetype != A
trigger1 = !inguarddist
trigger1 = var(47) = 0
trigger1 = NumHelper(1001) = 0
trigger1 = random<=var(58)*25
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) 
trigger1 = P2BodyDist X >=100

trigger2 = var(58)>=7
trigger2 = enemynear,statetype != L
trigger2 = EnemyNear,movetype != A
trigger2 = !inguarddist
trigger2 = var(47) = 0
trigger2 = FrontEdgeBodyDist <= 150
trigger2 = NumHelper(1001) = 0
trigger2 = random<=var(58)*25
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) 
trigger2 = P2BodyDist X = [100,150]

trigger3 = var(58)>=7
trigger3 = enemynear,statetype != L
trigger3 = EnemyNear,movetype != A
trigger3 = !inguarddist
trigger3 = var(47) = 0
trigger3 = FrontEdgeBodyDist <= 150
trigger3 = NumHelper(1001) = 0
trigger3 = random<=var(58)*25
trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) 
trigger3 = P2BodyDist X >= 80

trigger4 = enemynear,statetype != L
trigger4 = var(58)<=6
trigger4 = NumHelper(1001) = 0
trigger4 = random<=var(58)*5
trigger4 = ctrl || stateno = 21 || (stateno = [120,131])
trigger4 = P2BodyDist X >= 130

trigger5 = enemynear,statetype != L
trigger5 = var(58)<=6
trigger5 = FrontEdgeBodyDist <= 150
trigger5 = NumHelper(1001) = 0
trigger5 = random<=var(58)*5
trigger5 = ctrl || stateno = 21 || (stateno = [120,149]) 
trigger5 = P2BodyDist X = [120,150]

[State -1, 距離を取る]
type = ChangeState
value = 105
triggerall = var(59)=1&& RoundState = 2 
triggerall = BackEdgeBodyDist >= 100
trigger1 = var(58)<=6
trigger1 = Random <= var(58)*10
Trigger1 = EnemyNear,MoveType != H 
trigger1 = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist X = [95,120]

trigger2 = var(58)<=6
trigger2 = Random <= var(58)*40
Trigger2 = EnemyNear,StateType = L
trigger2 = statetype != A
trigger2 = ctrl
trigger2 = P2BodyDist X = [-30,100]

trigger3 = var(58)<=6
trigger3 = Random <= var(58)*10
Trigger3 = EnemyNear,vel x >= 1 
trigger3 = statetype != A
trigger3 = !inguarddist
trigger3 = ctrl
trigger3 = P2BodyDist X = [30,130]

[State -1, ジャンプ]
type = ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2 
Triggerall = EnemyNear,MoveType != H 
triggerall = statetype != A
triggerall = enemynear,statetype != L

trigger1 = ctrl || stateno = 21 || (stateno = [120,149])
trigger1 = enemynear,statetype = S
Trigger1 = EnemyNear,MoveType != A
trigger1 = !inguarddist
trigger1 = P2BodyDist X = [-20,160] 
trigger1 = random<=var(58)*5

trigger2 = ctrl || stateno = 21 || (stateno = [120,149])
trigger2 = enemynear,statetype = C
trigger2 = P2BodyDist X = [-20,160] 
trigger2 = random<=var(58)*25

trigger3 = stateno = 100 && time > 5
trigger3 = enemynear,movetype != A
trigger3 = P2BodyDist X >= 200
trigger3 = random<=var(58)*5

trigger4 = ctrl || stateno = 21 || (stateno = [120,149])
trigger4 = enemynear,statetype = A
trigger4 = P2BodyDist X = [-60,180] 
trigger4 = random<=var(58)*5

[State -1, 起き攻めジャンプ]
type = ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
trigger1 = ctrl || stateno = 21 || (stateno = [120,149])
trigger1 = enemynear,statetype = L
trigger1 = P2BodyDist X = [-20,60] 
trigger1 = random<=var(58)*15
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
