; サンプルキャラクター『カンフーマン』のコマンドファイルです。
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
Name = "AI_60"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。
[Command]
name = "SGS"
command = ~F, z, x, F, a
time = 40

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
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "GTS_x"
command = ~F, DF, D, DB, B, x
time = 30

[Command]
name = "GTS_y"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "GTS_z"
command = ~F, DF, D, DB, B, z
time = 30

[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 12

[Command]
name = "upper_y"
command = ~F, D, DF, x
time = 12

[Command]
name = "upper_z"
command = ~F, D, DF, x
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
name = "COU_x"
command = ~D, DB, B, x
time = 12

[Command]
name = "COU_y"
command = ~D, DB, B, y
time = 12

[Command]
name = "COU_z"
command = ~D, DB, B, z
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
name = "QCF_xy"
command = ~D, DF, F, x+y
time = 12

[Command]
name = "TSP_x"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "TSP_y"
command = ~B, DB, D, DF, F, y
time = 20

[Command]
name = "TSP_z"
command = ~B, DB, D, DF, F, z
time = 20

[Command]
name = "DB_x"
command = ~D, B, F, x
time = 25

[Command]
name = "DB_y"
command = ~D, B, F, y
time = 25

[Command]
name = "DB_z"
command = ~D, B, F, z
time = 25
;---------------------------
;(「板投げ」用にコマンドを追加してます)
[Command]
name = "board"
command = ~D, DF, F, a

[Command]
name = "board"
command = ~D, DF, F, b

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
name = "x+y+a+b"
command = x+y+a+b

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
[State -1, 静止の世界！]
type = ChangeState
value = 4000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "SGS"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 10
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 5
trigger7 = (stateno = 420) && time >= 9
trigger8 = (stateno = 195) && time >= 5
trigger9 = (stateno = 7000) && time >= 8
trigger10 = (stateno = 194) && time >= 5

[State -1, 氷塊結界A]
type = ChangeState
value = 3500
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "GHD_xy"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = NumHelper(3510) <= 12
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, 氷塊結界B]
type = ChangeState
value = 3501
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "GHD_yz"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = NumHelper(3510) <= 12 
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, 氷塊結界C]
type = ChangeState
value = 3502
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "GHD_xz"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = NumHelper(3510) <= 12
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, 全てを止める！]
type = ChangeState
value = 3000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = command = "SPHxy"
trigger1 = ctrl
trigger2 = command = "SPHyz"
trigger2 = ctrl
trigger3 = command = "SPHxz"
trigger3 = ctrl
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
;==============================================================================
; 必殺技
;==============================================================================
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
---------------------------------------------------------------------------
ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = (stateno = 151 || stateno = 153)
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = (command = "holdfwd" || command = "holdback") && command = "z"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
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

[State -1, 急加速ダッシュ]
type = ChangeState
value = 10100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(26) != 4
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 10
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 8
trigger7 = (stateno = 420) && time >= 9
ignorehitpause = 1

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)<=0&& RoundState = 2 
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,2段ジャンプ]
type = ChangeState
value = 41
triggerall = var(59)<=0&& RoundState = 2
;triggerall = !Ishelper	     
triggerall = var(4) = 1     
triggerall = command = "up"
triggerall = stateno = 50 
triggerall = command != "upc"
trigger1 = ctrl
;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, ガークラ]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A 
triggerall = command = "x+y+z"
trigger1 = ctrl
value = 700
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(310) = 0 
triggerall = statetype != A 
triggerall = command = "b"
trigger1 = ctrl
trigger2 = (stateno = 194) && time >= 5
value = 300
;===========================================================================
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command != "holdfwd"
triggerall = command = "c"
trigger1 = (stateno = 200) && time >= 3
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 220) && time >= 10
trigger4 = (stateno = 230) && time >= 10
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 8
trigger7 = (stateno = 420) && time >= 9
trigger8 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger9 = stateno = 1100 || stateno = 1110 || stateno = 1120
trigger10 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger11 = stateno = 700 || stateno = 701
value = 750
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, ジェントリー・ウィープス]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(7001) = 0 
triggerall = NumHelper(7060) = 0 
triggerall = power != 0
trigger1 = statetype != A && ctrl
trigger1 = command = "a"
value = 7000

[State -1, ジェントリー・ウィープス解除]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(7001) != 0 
triggerall = NumHelper(7060) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "a"
value = 7050
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(4010) = 0
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
triggerall = NumHelper(4010) = 0
triggerall = power >= 250
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------
[State -1, ブチ割れな！]
type = ChangeState
value = 1100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "DB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorhitpause = 1

[State -1, ブチ割れな！中]
type = ChangeState
value = 1110
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "DB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorhitpause = 1

[State -1, ブチ割れな！強]
type = ChangeState
value = 1120
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "DB_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorhitpause = 1
;------------------------------------------------------------------------------
[State -1, ホワイトアルバム！]
type = ChangeState
value = 1000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "TSP_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorhitpause = 1

[State -1, ホワイトアルバム！中]
type = ChangeState
value = 1010
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "TSP_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorhitpause = 1

[State -1, ホワイトアルバム！強]
type = ChangeState
value = 1020
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "TSP_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorhitpause = 1
;------------------------------------------------------------------------------
[State -1, 凍りつきな！]
type = ChangeState
value = 1200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "GTS_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 410) && time >= 5
ignorhitpause = 1

[State -1, 凍りつきな！中]
type = ChangeState
value = 1210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "GTS_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 410) && time >= 5
ignorhitpause = 1

[State -1, 凍りつきな！強]
type = ChangeState
value = 1220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "GTS_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 410) && time >= 5
ignorhitpause = 1
;------------------------------------------------------------------------------
[State -1, 攻撃は無駄だ！]
type = ChangeState
value = 1300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "COU_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 20
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 5
trigger7 = (stateno = 420) && time >= 12
trigger8 = (stateno = 194) && time >= 5
ignorhitpause = 1

[State -1, 攻撃は無駄だ！中]
type = ChangeState
value = 1301
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "COU_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 20
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 5
trigger7 = (stateno = 420) && time >= 12
trigger8 = (stateno = 194) && time >= 5
ignorhitpause = 1

[State -1, 攻撃は無駄だ！強]
type = ChangeState
value = 1302
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "COU_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 20
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 5
trigger7 = (stateno = 420) && time >= 12
trigger8 = (stateno = 194) && time >= 5
ignorhitpause = 1
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 4
trigger4 = stateno = 10100 && time >= 0
ignorhitpause = 1

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 4
trigger4 = stateno = 10100 && time >= 3
ignorhitpause = 1

[State -1, D立ち強キック]
type = ChangeState
value = 230
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, 立ち強キック]
type = ChangeState
value = 220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = (stateno = 410) && time > 8
trigger5 = (stateno = 210) && time >= 8
trigger6 = stateno = 10100 && time > 0
ignorhitpause = 1
;------------------------------------------------------------------------------
[State -1, 超挑発]
type = ChangeState
value = 194
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 4
trigger4 = (stateno = 100) && time >= 6
trigger5 = (stateno = 100) && time >= 6
trigger6 = stateno = 10100 && time >= 0
ignorhitpause = 1

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 4
trigger4 = (stateno = 100) && time >= 6
trigger5 = (stateno = 100) && time >= 6
trigger6 = stateno = 10100 && time > 0
ignorhitpause = 1

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time > 8
trigger6 = (stateno = 100) && time >= 6
trigger7 = stateno = 10100 && time > 0
ignorhitpause = 1
;------------------------------------------------------------------------------

[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
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
;全てを止める！
[State -1, 余ったゲージを捌く]
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
Triggerall = EnemyNear,vel X <= 10
Triggerall = EnemyNear,StateType != A
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType != A
Triggerall = EnemyNear,MoveType != H

trigger1 = life <= 400
trigger1 = power >= 5000
trigger1 = ctrl = 1
trigger1 = P2BodyDist X = [180,500]
trigger1 = var(47) = 0 

trigger2 = life <= 100
trigger2 = power >= 3000
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [180,500]
trigger2 = var(47) = 0 
;------------------------------------------------------------------------------
;超挑発
[state -1, 試合開始時挑発]
type = ChangeState
value = 194
triggerall = var(59)=1&& RoundState = 2 
TriggerAll = !inguarddist
triggerall = var(57) = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = P2BodyDist X = [60,999]
;------------------------------------------------------------------------------
;氷塊結界A
[State -1, 対空]
type = ChangeState
value = 3500
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType = A
Triggerall = P2MoveType != A
Triggerall = P2MoveType != H
triggerall = statetype != A
triggerall = power >= 2000
triggerall = NumHelper(3510) <= 12
Triggerall = EnemyNear,vel X <= 10

trigger1 = Random <= var(58)*40
trigger1 = ctrl = 1
trigger1 = P2BodyDist X = [-20,20]
trigger1 = P2Dist Y = [-200,0]
Trigger1 = EnemyNear,vel X <= 0

trigger2 = Random <= var(58)*40
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [100,120]
trigger2 = P2Dist Y = [-200,0]
Trigger2 = EnemyNear,vel X > 0

Trigger3 = P2StateType != L
trigger3 = Random <= var(58)*6
trigger3 = !inguarddist
trigger3 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger3 = P2BodyDist X >= 80
Trigger3 = power >= 3000

Trigger4 = P2StateType = L
trigger4 = Random <= var(58)*12
trigger4 = !inguarddist
trigger4 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger4 = P2BodyDist X >= 80
Trigger4 = power >= 3000

;氷塊結界B
[State -1, 切り返し]
type = ChangeState
value = 3501
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType = A
Triggerall = P2MoveType = A
triggerall = statetype != A
triggerall = power >= 2500
triggerall = NumHelper(3510) <= 12
triggerall = Random <= var(58)*80
Triggerall = EnemyNear,vel X <= 10

trigger1 = life <= 700
trigger1 = (enemynear,stateno = [200,700]) || (enemynear,stateno = [10200,10700]) 
trigger1 = ctrl = 1
trigger1 = P2BodyDist X = [-30,30]
trigger1 = P2Dist Y = [-20,0]
Trigger1 = EnemyNear,vel X <= 0

trigger2 = life <= 700
trigger2 = (enemynear,stateno = [200,700]) || (enemynear,stateno = [10200,10700]) 
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [60,80]
trigger2 = P2Dist Y = [-20,0]
Trigger2 = EnemyNear,vel X > 0

trigger3 = life <= 300
trigger3 = (enemynear,stateno = [200,700]) || (enemynear,stateno = [10200,10700]) 
trigger3 = ctrl = 1
trigger3 = P2BodyDist X = [-30,60]
trigger3 = P2Dist Y = [-30,0]

Trigger4 = P2StateType != L
trigger4 = Random <= var(58)*6
trigger4 = !inguarddist
trigger4 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger4 = P2BodyDist X >= 80
Trigger4 = power >= 3000

Trigger5 = P2StateType = L
trigger5 = Random <= var(58)*12
trigger5 = !inguarddist
trigger5 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger5 = P2BodyDist X >= 80
Trigger5 = power >= 3000

;氷塊結界C
[State -1, 起き攻め]
type = ChangeState
value = 3502
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType = L
Triggerall = EnemyNear,Ctrl = 0
triggerall = statetype != A
triggerall = power >= 3000
triggerall = NumHelper(3510) <= 12
triggerall = Random <= var(58)*80
triggerall = life <= 700
 
trigger1 = ctrl = 1
trigger1 = P2BodyDist X = [-50,50]
;------------------------------------------------------------------------------
;ブチ割れな！X
[state -1, 中距離攻撃]
type = ChangeState
value = 1100
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType != L
Triggerall = P2StateType != A
triggerall = statetype != A

trigger1 = !inguarddist
trigger1 = enemynear,ctrl = 0 && enemynear,alive
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger1 = P2BodyDist X = [-20,40]
trigger1 = Random <= var(58)*2

trigger2 = inguarddist
trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger2 = P2BodyDist X = [-20,40]
trigger2 = Random <= var(58)*8

;ブチ割れな！Z
[state -1, 中距離攻撃]
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType != L
Triggerall = P2StateType != A
triggerall = statetype != A

trigger1 = !inguarddist
trigger1 = enemynear,ctrl = 0 && enemynear,alive
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger1 = P2BodyDist X = [40,80]
Trigger1 = EnemyNear,vel X <= 0
trigger1 = Random <= var(58)*2

trigger2 = inguarddist
trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger2 = P2BodyDist X = [40,80]
Trigger2 = EnemyNear,vel X <= 0
trigger2 = Random <= var(58)*8
;------------------------------------------------------------------------------
;立ち弱
[State -1, 対超接近時]
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType != L
Triggerall = P2MoveType != H
triggerall = statetype != A
triggerall = Random <= 35
trigger1 = ctrl = 1 || stateno = 20
trigger1 = P2BodyDist X = [8,44]
trigger1 = P2Dist Y = [-50,0]
Trigger1 = EnemyNear,vel X <= 0

trigger2 = ctrl = 1 || stateno = 20 || stateno = 100
trigger2 = P2BodyDist X = [10,55]
trigger2= P2Dist Y = [-50,0]
Trigger2 = EnemyNear,vel X > 0

;しゃがみ弱
[State -1, 対接近時]
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType != L
Triggerall = P2StateType != A
Triggerall = P2MoveType != H
triggerall = statetype != A
triggerall = Random <= var(58)*12+(stateno=100)*16
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger1 = P2BodyDist X = [-20,55]

trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger2 = P2BodyDist X = [-20,65]

;しゃがみ中
[State -1, 近距離牽制]
type = ChangeState
value = 410
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType != L
Triggerall = P2StateType != A
Triggerall = P2MoveType != H
triggerall = statetype != A
triggerall = Random <= 36-(inguarddist)*10
trigger1 = ctrl = 1 || stateno = 20 || stateno = 100
trigger1 = P2BodyDist X = [20,75]
Trigger1 = EnemyNear,vel X <= 0

trigger2 = ctrl = 1 || stateno = 20 || stateno = 100
trigger2 = P2BodyDist X = [45,110]
Trigger2 = EnemyNear,vel X > 0

;立ち中
[State -1, 中距離対空牽制]
type = ChangeState
value = 210
triggerall = var(59) && RoundState = 2 
Triggerall = P2StateType != L
Triggerall = P2MoveType != H
triggerall = statetype != A
triggerall = Random <= 2-(inguarddist)*1

trigger1 = ctrl = 1 || stateno = 20 || stateno = 100
trigger1 = P2BodyDist X = [0,110]
trigger1 = P2Dist Y < -50

trigger2 = ctrl = 1 || stateno = 20
trigger2 = P2BodyDist X = [30,80]
trigger1 = P2Dist Y < -50

;立ち強
[State -1, 中距離対空牽制]
type = ChangeState
value = 220
triggerall = var(59) && RoundState = 2 
Triggerall = P2StateType != L
Triggerall = P2MoveType != H
triggerall = statetype != A
triggerall = life >= 700
triggerall = !inguarddist
triggerall = Random <= 25-(inguarddist)*12

trigger1 = ctrl = 1 || stateno = 20 || stateno = 100
trigger1 = P2BodyDist X = [0,100]
trigger1 = P2Dist Y < -60

trigger2 = ctrl = 1 || stateno = 20
trigger2 = P2BodyDist X = [40,90]
trigger2 = P2Dist Y < -60

;------------------------------------------------------------------------------
;ホワイトアルバム！X
[state -1, 中距離牽制]
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType != L
Triggerall = P2MoveType != H
TriggerAll = !inguarddist
triggerall = statetype != A
Triggerall = EnemyNear,vel X <= 10
triggerall = var(11)<=5

;Trigger1 = P2MoveType != A
trigger1 = Random <= var(58)*2
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger1 = P2BodyDist X = [100,120]
trigger1 = P2Dist Y = [-20,0]
Trigger1 = EnemyNear,vel X <= 0

trigger1 = Random <= var(58)*2
trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger2 = P2BodyDist X = [120,140]
trigger2 = P2Dist Y = [-20,0]
Trigger2 = EnemyNear,vel X > 0

trigger3 = Random <= var(58)*8
trigger3 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger3 = enemynear,alive
trigger3 = enemynear,ctrl = 0
trigger3 = P2BodyDist X = [80,130]
;------------------------------------------------------------------------------
;ホワイトアルバム！Z
[state -1, 遠距離牽制]
type = ChangeState
value = 1020
triggerall = var(59)=1&& RoundState = 2 
Triggerall = P2StateType != L
Triggerall = P2MoveType != H
;Triggerall = P2MoveType != A
TriggerAll = !inguarddist
triggerall = statetype != A
Triggerall = p2StateType != A

trigger1 = Random <= var(58)*2
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger1 = P2BodyDist X = [180,200]
trigger1 = P2Dist Y = [-20,0]
Trigger1 = EnemyNear,vel X <= 0

trigger2 = Random <= var(58)*2
trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger2 = P2BodyDist X = [180,230]
trigger2 = P2Dist Y = [-20,0]
Trigger2 = EnemyNear,vel X > 0

trigger3 = Random <= var(58)*8
trigger3 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger3 = P2BodyDist X = [170,230]
trigger3 = enemynear,alive
trigger3 = enemynear,ctrl = 0
;------------------------------------------------------------------------------
;攻撃は無駄だ！X
[state -1, 中距離対空カウンター]
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
;Triggerall = P2StateType = A
triggerall = statetype != A
triggerall = !numtarget

trigger1 = Random <= var(58)*8
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger1 = p2movetype = A
trigger1 = P2BodyDist X = [80,90]

trigger2 = Random <= var(58)*1
trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger2 = P2BodyDist X = [60,70]
;------------------------------------------------------------------------------
;攻撃は無駄だ！Y
[state -1, 近距離対空カウンター]
type = ChangeState
value = 1301
triggerall = var(59)=1&& RoundState = 2
;Triggerall = P2StateType = A
triggerall = statetype != A
triggerall = !numtarget

trigger1 = Random <= var(58)*8
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger1 = p2movetype = A
trigger1 = P2BodyDist X = [40,80]

trigger2 = Random <= var(58)*1
trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger2 = P2BodyDist X = [40,60]
;------------------------------------------------------------------------------
;攻撃は無駄だ！Z
[state -1, 超近距離対空カウンター]
type = ChangeState
value = 1302
triggerall = var(59)=1&& RoundState = 2
;Triggerall = P2StateType = A
triggerall = statetype != A
triggerall = !numtarget

trigger1 = Random <= var(58)*8
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger1 = p2movetype = A
trigger1 = P2BodyDist X = [-20,40]

trigger2 = Random <= var(58)*1
trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger2 = P2BodyDist X = [-20,20]

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59)&& RoundState = 2 
triggerall = statetype != A
triggerall = ctrl
triggerall = enemynear,ctrl = 0
trigger1 = p2bodydist x > 60
trigger1 = random < 25+(p2bodydist x>120)*18-(inguarddist)*10

;---------------------------------------------------------------------------
[State -1, ガークラ]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A 
TriggerAll= P2StateType != A
TriggerAll= P2StateType != L
TriggerAll= P2MoveType != H
TriggerAll= P2MoveType != A
TriggerAll = !inguarddist
Trigger1 = EnemyNear,vel X <= 0
trigger1 = P2BodyDist X = [20,60]
trigger1 = ctrl
trigger1 = random<=var(58)*15 
value = 700
;---------------------------------------------------------------------------
;投げ
[State -1, 投げ]
type = ChangeState
value = 900
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59) = 1 && RoundState = 2 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*5 
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random<=var(58)*5
;------------------------------------------------------------------------------
;回り込み
[State -1, 回避]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(310) = 0 
triggerall = (RoundState = 2) && (Alive)
triggerall = statetype != A 
Triggerall = EnemyNear,MoveType != H
triggerall = !(enemynear,hitdefattr = SCA,AT)

trigger1 = random<=var(58)*10 
trigger1 = enemynear,statetype != L && p2BodyDist X = [0,60] 
trigger1 = enemynear,movetype = A && enemynear,time > 10
trigger1 = enemynear,stateno = [1000,4999]
trigger1 = statetype != A && ctrl

trigger2 = random<=var(58)*10 
trigger2 = enemynear,statetype != L && p2BodyDist X = [0,60] 
trigger1 = enemynear,movetype = A && enemynear,time > 10 
trigger2 = enemynear,stateno = [11000,14999]
trigger2 = statetype != A && ctrl

trigger3 = power <= 1000
trigger3 = NumHelper(40005) != 0 
trigger3 = random<=var(58)*80 
trigger3 = var(47) <= 50
trigger3 = statetype != A && ctrl
value = 300
;------------------------------------------------------------------------------
;ジェントリー・ウィープス
[State -1, 飛び道具反射]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(7001) = 0 
triggerall = NumHelper(7060) = 0 
triggerall = ctrl
triggerall = statetype != A 
trigger1 = power >= 500
trigger1 = random<=var(58)*80 
trigger1 = NumHelper(40005) != 0 
trigger1 = var(47) <= 50
trigger1 = P2BodyDist X = [80,500]

trigger2 = P2BodyDist X = [150,500]
Trigger2 = EnemyNear,MoveType != A
trigger2 = power >= 3000
trigger2 = random<=var(58)*80 
trigger2 = NumHelper(40005) != 0 
value = 7000

;ジェントリー・ウィープス解除
[State -1, ]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(7001) != 0 
triggerall = NumHelper(7060) = 0 
Triggerall = EnemyNear,MoveType != H
Triggerall = EnemyNear,MoveType != A
trigger1 = P2BodyDist X = [150,500]
trigger1 = statetype != A && ctrl
trigger1 = power <= 1000
value = 7050
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(4010) = 0 
triggerall = statetype = S
triggerall = stateno = 150 || stateno = 151
triggerall = prevstateno != 4000 && prevstateno != 4005
triggerall = power >= 250
trigger1 = random<=var(58)*20 
trigger1 = P2BodyDist X = [-20,60] 
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(4010) = 0 
triggerall = command = "x+y+z" || command = "b" || command = "z"
triggerall = statetype = C
triggerall = stateno = 152 || stateno = 153
triggerall = prevstateno != 4000 && prevstateno != 4005
triggerall = power >= 250
trigger1 = random<=var(58)*20 
trigger1 = P2BodyDist X = [-20,60] 
value = 4105
;------------------------------------------------------------------------------
;ガード
[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59)
triggerall = roundstate = 2
triggerall = InGuardDist
triggerall = ctrl
triggerall = statetype != A
triggerall = NumHelper(1001) != 1
triggerall = NumHelper(2) != 1
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random = [0,400]
trigger3 = inguarddist
trigger3 = enemy,numhelper > 0 || enemy,numproj > 0
trigger3 = random = [0,500]

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
trigger2 = random = [0,500]
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
trigger1 = random <=20
trigger1 = p2movetype = A || enemynear,movetype = A || InGuardDist 
trigger2 = p2movetype = A || enemynear,movetype = A || InGuardDist || enemynear,NumProj != 0 
trigger2 = P2BodyDist X >= 90 || statetype = A 
trigger3 = p2movetype = A || enemynear,movetype = A || InGuardDist || enemynear,NumProj != 0 
;------------------------------------------------------------------------------
;前進
[State -1, 接近]
type = ChangeState
value = 20
triggerall = var(59)=1&& RoundState = 2 
triggerall = Random <= var(58)*80
triggerall = statetype = S
trigger1 = ctrl
trigger1 = P2BodyDist X = [50,500]

;後退
[State -1, 距離を取る]
type = ChangeState
value = 20
triggerall = var(59)=1&& RoundState = 2 
triggerall = Random <= var(58)*80
triggerall = statetype = S
trigger1 = ctrl
trigger1 = P2BodyDist X = [10,60]

;ジャンプ
[State -1, ]
type = ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2 
triggerall = Random <= var(58)*20
triggerall = statetype != A
triggerall = var(10) = 0
Triggerall = !inguarddist
Triggerall = P2StateType != L
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149])
trigger1 = P2BodyDist X = [20,100]

trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149])
trigger2 = P2BodyDist X = [-20,80]
trigger2 = (enemynear,hitdefattr = SCA,AT)

trigger3 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149])
trigger3 = P2BodyDist X = [20,80]
trigger3 = p2stateno = 5120

;バックステッポ
[State -1, 素早く距離を取る]
type = ChangeState
value = 105
triggerall = var(59)=1&& RoundState = 2 
triggerall = BackEdgeBodyDist >= 100
triggerall = statetype != A
trigger1 = Random <= var(58)*5
Trigger1 = P2MoveType != H 
Trigger1 = !inguarddist
trigger1 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger1 = P2BodyDist X = [-20,70]

Trigger2 = !inguarddist
trigger2 = Random <= var(58)*50
Trigger2 = P2StateType = L
trigger2 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger2 = P2BodyDist X = [-20,70]

Trigger3 = !inguarddist
trigger3 = Random <= var(58)*20
Trigger3 = P2movetype = A
trigger3 = ctrl || stateno = 20 || stateno = 21 || (stateno = [120,149]) || stateno = 40
trigger3 = P2BodyDist X = [-20,80]


;飛び道具感知
[State -1, ];相手のprojもしくはhelperが増えた瞬間ヘルパー呼び出し
type=helper
triggerall = !ishelper
triggerall = !NumHelper(40005)
triggerall = NumEnemy
trigger1 = var(33) <= 0 ; 以下,監視で代入しといた値より相手のprojやhelperが大きい時
trigger1 = Enemy(0),numproj > 0 ;
trigger2 = var(34)< Enemy(0),numhelper ;
trigger3 = var(35) <= 0 ;
trigger3 = Enemy(numenemy=2),numproj > 0 ;
trigger4 = var(36) < Enemy(numenemy=2),numhelper ;
helpertype=normal
name = "P-H"
stateno = 40005
ID = 40005
pos = 0,9999
keyctrl = 1
pausemovetime = 2147483647
supermovetime = 2147483647
persistent = 0

[State 30006, 飛び道具監視];上の処理の後に相手のprojとhelperの最新の数を代入する
type = null
triggerall = !ishelper
triggerall = NumEnemy
trigger1 = var(33) := Enemy(0),numproj
trigger2 = var(34) := Enemy(0),numhelper

[State 30006, 飛び道具監視タッグ二人目用]
type = null
triggerall = !ishelper
triggerall = NumEnemy
trigger1 = var(35) := Enemy(numenemy=2),numproj
trigger2 = var(36) := Enemy(numenemy=2),numhelper

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
