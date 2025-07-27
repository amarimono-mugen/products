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
x = y      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = a      ;Ｙボタン　　　　　　　　　〃
z = b      ;Ｚボタン　　　　　　　　　〃
a = c      ;Ａボタン　　　　　　　　　〃
b = z      ;Ｂボタン　　　　　　　　　〃
c = x      ;Ｃボタン　　　　　　　　　〃
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
Time = 0
[Command]
Name = "AI_61"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 0
[Command]
Name = "AI_62"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 0
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "3button"
command = ~D, DF, F, x+y+z
time = 15

[Command]
name = "3button_r"
command = ~D, DB, B, x+y+z
time = 15

[Command]
name = "act3sp1"
command = ~D, DF, F, a
time = 20

[Command]
name = "backsp"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "236c"
command = ~D, DF, F, c

[Command]
name = "22xy"
command = ~D, D, x+y
time = 15

[Command]
name = "22a"
command = ~D, D, a
time = 15
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "63214x"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "63214y"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "63214z"
command = ~F, DF, D, DB, B, z
time = 20

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
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_b"
command = ~D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCFr_a"
command = ~F, B, a

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, z

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "46_x"
command = B, F, x

[Command]
name = "46_y"
command = B, F, y

[Command]
name = "46_z"
command = B, F, z

[Command]
name = "46_a"
command = B, F, a
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

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = y+z
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x+z
time = 1

[Command]
name = "recovery" ;必須コマンド名
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
;-| 方向キー |-----------------------------------------------------------------

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

[Command]
name = "upc"
command = ~$U ;$上を放したとき
time = 1
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
[State -1, GHA]
type = ChangeState
value = 3300
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "b" || command = "3button"
triggerall = power >= 2000
triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, GHA2];最後の波紋
type = ChangeState
value = 3600
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "3button_r"; || command = "236c"
triggerall = power >= 500
;triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
triggerall = !var(30)
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, HHA2];ゲージレベル１
type = null;ChangeState
value = 3200
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "backsp"; || command = "236c"
triggerall = power >= 1000
;triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
triggerall = !var(30)
trigger1 = statetype = S
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
;------------------------------------------------------------------------------
[State -1, HHA];ゲージレベル１
type = ChangeState
value = 3000
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "TripleKFPalm" || command = "236c"
triggerall = power >= 1000
;triggerall = numhelper(1001) = 0
triggerall = var(10) = 0
triggerall = !var(30)
trigger1 = statetype = S
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
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1,緋色の波紋疾走L]
type = ChangeState
value = 1100
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "upper_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1,緋色の波紋疾走M]
type = ChangeState
value = 1110
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "upper_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1,緋色の波紋疾走H]
type = ChangeState
value = 1110
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "upper_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1,緋色の波紋疾走H]
type = ChangeState
value = 1160
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = command = "upper_a"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9
;------------------------------------------------------------------------------
[State -1, ラップラ]
type = ChangeState
value = 1200
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, ラップラ]
type = ChangeState
value = 1200
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, ラップラ]
type = ChangeState
value = 1200
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "QCB_xy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, ラップラEX]
type = ChangeState
value = 1260
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "QCB_a"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9
;------------------------------------------------------------------------------
[State -1, 波紋疾走連打]
type = ChangeState
value = 1300
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "46_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, 波紋疾走連打]
type = ChangeState
value = 1300
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "46_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, 波紋疾走連打]
type = ChangeState
value = 1300
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "46_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, 波紋疾走連打EX]
type = ChangeState
value = 1360
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "46_a"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9
;------------------------------------------------------------------------------
[State -1, AIRラップラ]
type = ChangeState
value = 1800
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_xy"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 7
trigger4 = (stateno = 620) && time >= 5
;------------------------------------------------------------------------------
[State -1,伝われ波紋！]
type = ChangeState
value = 1000
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, 伝われ波紋！]
type = ChangeState
value = 1000
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, 伝われ波紋！]
type = ChangeState
value = 1000
triggerall = var(59)<=0;&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, 伝われ波紋！裏]
type = ChangeState
value = 1070
triggerall = var(59)<=0;&& RoundState = 2 
triggerall = !var(49)
triggerall = BackEdgeBodyDist < 40
triggerall = command = "QCFr_a"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9

[State -1, 伝われ波紋！EX]
type = ChangeState
value = 1060
triggerall = var(59)<=0;&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCF_a"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 230) && time >= 11
trigger6 = (stateno = 240) && time >= 12
trigger7 = (stateno = 250) && time >= 11
trigger8 = (stateno = 400) && time >= 7
trigger9 = (stateno = 410) && time >= 7
trigger10 = (stateno = 420) && time >= 9
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = null;ChangeState
value = 1800
triggerall = var(59)<=0;&& RoundState = 2 
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
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 前転]
type = ChangeState
value = 102
triggerall = var(59)<=0;&& RoundState = 2
triggerall = var(30)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59)<=0;&& RoundState = 2 
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 後転]
type = ChangeState
value = 107
triggerall = var(59)<=0;&& RoundState = 2
triggerall = var(30)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)<=0;&& RoundState = 2 
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, エアダッシュ]
type = null;ChangeState
value = 12000
triggerall = var(59)<=0;&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, エアBダッシュ]
type = null;ChangeState
value = 12010
triggerall = var(59)<=0;&& RoundState = 2
triggerall = var(49)
triggerall = !var(30)
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;==============================================================================
; 特殊技
;==============================================================================
[State -1, 投げ]
type = ChangeState
value = 800
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "c"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0 
;triggerall = NumHelper(1003) = 0 
trigger1 = command != "holdback"

[State -1, 投げ(後方)]
type = ChangeState
value = 801
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "c"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0 
;triggerall = NumHelper(1003) = 0 
trigger1 = command = "holdback"
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = (RoundState = 2) && (Alive)
triggerall = !numhelper(701)
trigger1 = statetype != A && ctrl
trigger1 = command = "a" && command = "x"
value = 702
;------------------------------------------------------------------------------
[State -1, クイック波紋の呼吸]
type = ChangeState
value = 1950
triggerall = var(59)<=0;&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "22a"
triggerall = statetype != A
triggerall = life > 100
triggerall = power < 3000
trigger1 = ctrl

[State -1, 波紋の呼吸]
type = ChangeState
value = 1900
triggerall = var(59)<=0;&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "a"
triggerall = statetype != A
triggerall = power < 3000
trigger1 = ctrl
;===========================================================================
[State -1, プッツンキャンセルOF]
type = ChangeState
triggerall = var(59)<=0;&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = (stateno = 200) && time >= 5
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 220) && time >= 9
trigger4 = (stateno = 230) && time >= 27
trigger5 = (stateno = 240) && time >= 12
trigger6 = (stateno = 250) && time >= 11
trigger7 = (stateno = 400) && time >= 7
trigger8 = (stateno = 410) && time >= 7
trigger9 = (stateno = 420) && time >= 9
trigger10 = stateno = 1000 || stateno = 1010 || stateno = 1020 || stateno = 1060
trigger10 = time >= 8
trigger11 = stateno = 1100 || stateno = 1130 || stateno = 1160
trigger11 = time >= 25
trigger12 = stateno = 1201 || stateno = 1211 || stateno = 1221 || stateno = 1261
trigger12 = time >= 19
trigger13 = stateno = 1301 || stateno = 1311 || stateno = 1321 || stateno = 1361
trigger13 = time >= 11
trigger14 = stateno = 1801 || stateno = 1811 || stateno = 1821 || stateno = 1861
trigger14 = time >= 3
value = 700
ignorehitpause = 1
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0;&& RoundState = 2
;triggerall = !var(49)
triggerall = !var(30)
triggerall = power >= 100
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 4000
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0;&& RoundState = 2
;triggerall = !var(49)
triggerall = !var(30)
triggerall = power >= 100
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4005
;---------------------------------------------------------------------------
[State -1,2段ジャンプ]
type = null;ChangeState
value = 41
;triggerall = !Ishelper
triggerall = var(49) = 10000
triggerall = !var(30)
triggerall = var(4) = 1
triggerall = command = "up"
triggerall = command != "upc"
triggerall = stateno = 50 && time > 5
trigger1 = ctrl
;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 立ち中];EBver
type = ChangeState
value = 210
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = var(8) = 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact
trigger1 = (stateno = 200) && time >= 3
ignorehitpause = 1

[State -1, 5H];EBver
type = ChangeState
value = 220
triggerall = var(59)<=0;&& RoundState = 2
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

[State -1, ゆるさないぞ];EBver
type = null;ChangeState
value = 1000
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = var(8) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = movecontact
trigger1 = (stateno = 220) && time >= 9
ignorehitpause = 1

[State -1, 蝉の声];EBver
type = null;ChangeState
value = 3000
triggerall = !var(49)
triggerall = !var(30)
triggerall = var(8) = 1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = helper(1001),movecontact || helper(1001),stateno = 1003
trigger1 = stateno = 1000 && time >= 18
;------------------------------------------------------------------------------
[State -1, ズムパン]
type = ChangeState
value = 230
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = var(10) = 0
triggerall = command = "holdfwd"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 400) && time >= 7
trigger6 = (stateno = 410) && time >= 7
trigger7 = (stateno = 420) && time >= 9

[State -1, 前立ち強]
type = ChangeState
value = 250
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = var(10) = 0
triggerall = command = "holdfwd"
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 400) && time >= 7
trigger6 = (stateno = 410) && time >= 7
trigger7 = (stateno = 420) && time >= 9
;------------------------------------------------------------------------------
[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(10) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 7
ignorehitpause = 1

[State -1, 前立ち中]
type = null;ChangeState
value = 230
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !var(30)
triggerall = var(10) = 0
triggerall = command = "holdfwd"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 15
trigger5 = (stateno = 400) && time >= 7
trigger6 = (stateno = 410) && time >= 7
trigger7 = (stateno = 420) && time >= 9
ignorehitpause = 1

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(59)<=0;;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 7
ignorehitpause = 1

[State -1, 5H]
type = ChangeState
value = 220
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 7
trigger5 = (stateno = 410) && time >= 7
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, 挑発2]
type = ChangeState
value = 196
triggerall = var(59)<=0;&& RoundState = 2
;triggerall = !var(49)
triggerall = command = "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)<=0;&& RoundState = 2
;triggerall = !var(49)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 7
ignorehitpause = 1

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 7

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = !numhelper(1001)
triggerall = !numhelper(221)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 7
trigger5 = (stateno = 410) && time >= 7
;------------------------------------------------------------------------------

[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 14

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = var(59)<=0;&& RoundState = 2
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
value = 620
triggerall = var(59)<=0;&& RoundState = 2
triggerall = !var(49)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;AI--------------------------------------------------------------------------
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
Trigger16 = Command = "AI_58" || Command = "AI_59" || Command = "AI_60" || Command = "AI_61"
Trigger17 = Command = "AI_62"
;trigger18 = RoundState = 2  ;常時AI起動トリガー　
V = 59
Value = 1
IgnoreHitPause = 1
;------------------------------------------------------------------------------
[State -1, TEST];(基本対空)
type = null;ChangeState
value = 195
triggerall = var(59)=1&& RoundState = 2
triggerall = stateno != 195
triggerall = statetype != A
trigger1 = facing*(helper(37000+(facing=-1)*10),pos x-pos x) < 100
;------------------------------------------------------------------------------
;素出し拾い
;------------------------------------------------------------------------------
[State -1, GHA];(基本)
type = ChangeState
value = 3300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 2000 && target,life > 180
triggerall = p2statetype != L
trigger1 = stateno = 1301 && movehit
trigger1 = facing*(helper(37000+(facing=-1)*10),pos x-pos x) < 100
trigger1 = P2BodyDist X = [-20,40]
trigger1 = var(50) = 0
trigger1 = numtarget

[State -1, HHA];(基本)
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000
triggerall = p2statetype != L
trigger1 = stateno = 1301 && movehit
trigger1 = P2BodyDist X = [-20,120]
trigger1 = var(50) = 0
trigger1 = numtarget
;------------------------------------------------------------------------------
[State -1, GHA2];最後の波紋
type = ChangeState
value = 3600
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 500
triggerall = life < 150
triggerall = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100
triggerall = enemyNear,life > 300
triggerall = enemyNear,life < 800
trigger1 = inguarddist
;trigger1 = P2BodyDist X = [-20,80]
trigger1 = enemyNear,animtime < -15
trigger1 = enemyNear,HitDefAttr=SCA,AA
trigger1 = random<=var(58)*60
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1,緋色SP];割り込み
type = null;ChangeState
value = 1160
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(58) >= 6
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = enemynear,ctrl = 0 && enemynear,alive
triggerall = enemynear,animtime <= -15
triggerall = power >= 250
trigger1 = P2BodyDist X = [20,100]
trigger1 = P2BodyDist Y = [-240,10]
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100
;trigger1 = inguarddist
;trigger1 = enemyNear,animtime < -15
;trigger1 = enemyNear,HitDefAttr=SCA,AA
trigger1 = random<=var(58)*60
ignorehitpause = 1

[State -1,緋色SP];割り込み
type = ChangeState
value = 1160
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(58) >= 6
triggerall = life <= 800
triggerall = power >= 250
trigger1 = P2BodyDist X = [20,80]
trigger1 = P2BodyDist Y > -140
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100
trigger1 = random<=var(58)*60
trigger1 = inguarddist
trigger1 = enemyNear,animtime < -15
ignorehitpause = 1

[State -1,緋色SP];暗転返し
type = null;ChangeState
value = 1160
triggerall = var(59)=1&& RoundState = 2 
triggerall = life < 500
triggerall = enemynear,life < 200
triggerall = power >= 250
triggerall = numhelper(1001) = 0
triggerall = helper(50000),var(15) > 50
triggerall = random<=var(58)*20
triggerall = P2BodyDist X = [-20,100]
triggerall = P2BodyDist Y > -80
triggerall = statetype != A
triggerall = enemynear,ctrl = 0 && enemynear,alive
triggerall = enemynear,animtime <= -15
triggerall = ifelse(enemynear,life < 200,power >= 1000,power >= 2000)
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 9
trigger6 = (stateno = 400) && time >= 7
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 9
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, 前掴み];前投げ
type = ChangeState
value = 800
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = facing*(helper(37000+(facing=1)*10),pos x-pos x) < -300
;trigger1 = !inguarddist
trigger1 = ctrl || stateno = 20 || stateno = 100 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,45]
trigger1 = random<=var(58)*20

trigger2 = time = 0
trigger2 = stateno = 200 || stateno = 400
trigger2 = P2BodyDist X = [-20,45]
trigger2 = enemynear,stateno != [150,153] 

[State -1, 前掴み];後ろ投げ
type = ChangeState
value = 801
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = facing*(helper(37000+(facing=1)*10),pos x-pos x) >= -300
;trigger1 = !inguarddist
trigger1 = ctrl || stateno = 20 || stateno = 100 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,45]
trigger1 = random<=var(58)*20

trigger2 = time = 0
trigger2 = stateno = 200 || stateno = 400
trigger2 = P2BodyDist X = [-20,45]
trigger2 = enemynear,stateno != [150,153] 
;------------------------------------------------------------------------------
[State -1, 立ち弱];(基本対空)
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 0
triggerall = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100
triggerall = p2statetype != L
triggerall = p2statetype != C
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-20,40]
trigger1 = P2BodyDist Y = [-70,-20]
trigger1 = ifelse(!inguarddist,random<=var(58)*24,random<=var(58)*8)

trigger2 = p2statetype != C && p2statetype != A
trigger2 = P2BodyDist X = [-20,40]
trigger2 = ifelse(!inguarddist,random<=var(58)*100,random<=var(58)*12)
;------------------------------------------------------------------------------
[State -1, 屈弱];コンボ始動
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
trigger1 = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = P2BodyDist X = [-20,40]
trigger1 = ifelse(!inguarddist,random<=var(58)*8,random<=var(58)*4)

trigger2 = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger2 = P2BodyDist X = [-20,20]
trigger2 = ifelse(!inguarddist,random<=var(58)*24,random<=var(58)*8)

trigger3 = stateno = 52 && time = 6
trigger3 = P2BodyDist X = [-20,40]
trigger3 = numtarget

trigger4 = p2statetype != A
trigger4 = stateno = 100
trigger4 = P2BodyDist X = [-20,45]
trigger4 = ifelse(!inguarddist,random<=var(58)*24,random<=var(58)*8)

trigger5 = stateno = 950 && !animtime
trigger5 = P2BodyDist X = [-20,40]
;------------------------------------------------------------------------------
[State -1, 空中中];空中攻撃
type = ChangeState
value = 610
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
triggerall = !var(49)
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = random<=var(58)*5
trigger1 = vel x >= 0
trigger1 = vel y > 0
trigger1 = pos y < -50
trigger1 = pos y > -80
trigger1 = P2BodyDist X = [-20,60]

trigger2 = random<=var(58)*20
trigger2 = vel x >= 0
trigger2 = vel y > 0
trigger2 = pos y < -30
trigger2 = pos y > -50
trigger2 = P2BodyDist X = [-20,60]

[State -1, 空中強];空中攻撃
type = ChangeState
value = 620
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = p2statetype = S
trigger1 = random<=var(58)*30
trigger1 = vel x >= 0
trigger1 = vel y >= 0
trigger1 = pos y < -50
trigger1 = pos y > -90
trigger1 = P2BodyDist X = [0,70]

trigger2 = p2statetype = C
trigger2 = random<=var(58)*30
trigger2 = vel x >= 0
trigger2 = vel y >= 0
trigger2 = pos y < -40
trigger2 = pos y > -80
trigger2 = P2BodyDist X = [0,70]

trigger3 = p2statetype = A
trigger3 = random<=var(58)*30
trigger3 = vel x >= 0
trigger3 = vel y >= 0
trigger3 = pos y < -20
trigger3 = P2BodyDist X = [0,80]

[State -1, おりゃあ]
type = ChangeState
value = 1800
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
triggerall = p2statetype != A
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,80]
trigger1 = P2BodyDist Y = [200,0]
trigger2 = stateno = 610
trigger2 = movehit
trigger2 = pos y < -40
trigger2 = pos y > -120

trigger3 = stateno = 620
trigger3 = movehit
trigger3 = pos y < -60
trigger3 = pos y > -120
;------------------------------------------------------------------------------
[State -1, 波紋疾走];飛び道具
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = prevstateno != 2100
triggerall = !inguarddist
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = !numtarget && var(50) = 0
trigger1 = P2BodyDist X = [110,180]
trigger1 = P2BodyDist Y = [-40,20]
trigger1 = random<=var(58)*4

[State -1, 波紋疾走SPR];飛び道具
type = ChangeState
value = 1070
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = !inguarddist
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = !numtarget && var(50) = 0
triggerall = BackEdgeBodyDist < 40
triggerall = !numhelper(1071)
triggerall = power >= 250
trigger1 = P2BodyDist X > 80
trigger1 = random<=var(58)*8
;------------------------------------------------------------------------------
[State -1, 緋色];対空
type = ChangeState
value = 1110
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = prevstateno != 2100
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = !numtarget && var(50) = 0
trigger1 = enemynear,vel x > 0
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [60,100]
trigger1 = P2BodyDist Y = [-100,-30]
trigger1 = random<=var(58)*8

trigger2 = enemynear,vel x <= 0
trigger2 = p2statetype = A
trigger2 = P2BodyDist X = [0,40]
trigger2 = P2BodyDist Y = [-100,-30]
trigger2 = random<=var(58)*8

[State -1, 緋色];ミスカット
type = ChangeState
value = 1110
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !numtarget && var(50) = 0
triggerall = !movecontact

trigger1 = stateno = 200 && time >= 3
trigger1 = p2movetype = A
trigger1 = P2BodyDist X = [-20,90]
trigger1 = P2BodyDist Y > -60
trigger1 = random<=var(58)*8

trigger2 = stateno = 400 && time >= 7
trigger2 = p2movetype = A
trigger2 = P2BodyDist X = [-20,90]
trigger2 = P2BodyDist Y > -60
trigger2 = random<=var(58)*8

trigger3 = stateno = 250 && time >= 13
trigger3 = p2movetype = A
trigger3 = P2BodyDist X = [-20,90]
trigger3 = P2BodyDist Y > -60
trigger3 = random<=var(58)*16

trigger4 = stateno = 420 && time >= 11
trigger4 = p2movetype = A
trigger4 = P2BodyDist X = [-20,90]
trigger4 = P2BodyDist Y > -60
trigger4 = random<=var(58)*16
;------------------------------------------------------------------------------
[State -1, 波紋疾走];波紋疾走連打
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = prevstateno != 2100
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = !inguarddist
triggerall = !numtarget && var(50) = 0
triggerall = life < 300
trigger1 = P2BodyDist X = [40,80]
trigger1 = P2BodyDist Y = [-50,20]
trigger1 = random<=var(58)*2
;------------------------------------------------------------------------------
[State -1, 波紋疾走];ラップラ
type = ChangeState
value = 1200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype = C
triggerall = p2statetype != L
triggerall = prevstateno != 2100
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = !inguarddist
triggerall = !numtarget && var(50) = 0
triggerall = life > 600
trigger1 = P2BodyDist X = [60,120]
trigger1 = P2BodyDist Y = [-50,20]
trigger1 = random<=var(58)*3
;------------------------------------------------------------------------------
[State -1, ラップラ];ラップラ
type = ChangeState
value = 1260
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = prevstateno != 2100
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = !inguarddist
triggerall = !numtarget && var(50) = 0
triggerall = life > 200
triggerall = enemynear,alive && enemynear,life < 50
triggerall = power >= 250
trigger1 = P2BodyDist X = [20,160]
trigger1 = P2BodyDist Y = [-50,20]
trigger1 = random<=var(58)*40
;------------------------------------------------------------------------------
[State -1, ズムパン];ズムパン
type = ChangeState
value = 230
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2statetype != L
triggerall = prevstateno != 2100
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = !inguarddist
triggerall = !numtarget && var(50) = 0
trigger1 = P2BodyDist X = [80,100]
trigger1 = P2BodyDist Y = [-50,20]
trigger1 = random<=var(58)*2
;------------------------------------------------------------------------------
[State -1, 波紋疾走];Q波紋の呼吸
type = ChangeState
value = 1950
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = !inguarddist
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
triggerall = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = power < 2000
triggerall = p2stateno != 5120
trigger1 = life > 600
trigger1 = P2BodyDist X > 80
trigger1 = p2statetype = L
trigger1 = random<=var(58)*20

trigger2 = life > 600
trigger2 = P2BodyDist X > 60
trigger2 = p2statetype = L
trigger2 = random<=var(58)*12

trigger3 = life > 600
trigger3 = P2BodyDist X > 120
trigger3 = random<=var(58)*8

trigger4 = life = [300,600]
trigger4 = P2BodyDist X > 120
trigger4 = random<=var(58)*4

trigger5 = stateno = 3010 && !animtime
trigger5 = P2BodyDist X > 60

trigger6 = life > 300
trigger6 = P2BodyDist X > 60
trigger6 = p2statetype = L
trigger6 = random<=var(58)*8

trigger7 = life > 300
trigger7 = stateno = 810 || stateno = 811 || stateno = 1270
trigger7 = !animtime
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = var(59)=1;&& RoundState = 2
triggerall = statetype != A
triggerall = !numtarget
triggerall = prevstateno != 950
triggerall = enemynear,HitDefAttr != SCA, NT,ST,HT

Trigger1 = EnemyNear,MoveType = A
Trigger1 = EnemyNear,ctrl = 0
Trigger1 = EnemyNear,alive && enemynear,animtime < -25
trigger1 = random<=var(58)*25
trigger1 = P2BodyDist X = [-20,100]
trigger1 = ctrl || stateno = 20 || stateno = 100 || (stateno = [120,149]) || stateno = 40 || stateno = 41

Trigger2 = EnemyNear,MoveType != H
Trigger2 = EnemyNear,StateType != L
Trigger2 = EnemyNear,ctrl = 0
trigger2 = random<=var(58)*30
trigger2 = P2BodyDist X >= 0
Trigger2 = enemynear,animtime < -20
trigger2 = var(47) <= 90
trigger2 = var(47) >= -10
trigger2 = var(47) != 0
trigger2 = ctrl || stateno = 20 || stateno = 100 || (stateno = [120,149]) || stateno = 40 || stateno = 41
value = 702
;------------------------------------------------------------------------------
[State -1, ワゴン];ゲージレベル１
type = helper
triggerall = var(59)=1&& RoundState = 2
triggerall = !numhelper(7000)
triggerall = power >= 500
triggerall = backedgedist > 160
triggerall = movetype != H && roundstate = 2

trigger1 = time = 130
trigger1 = numtarget
trigger1 = stateno = 3010 

trigger2 = life < 500
trigger2 = power >= 1000
trigger2 = movetype != A
trigger2 = !numtarget
trigger2 = random<=var(58)*2

;trigger3 = movetype = A
;trigger3 = !numtarget
;trigger3 = random<=var(58)*1

stateno = 7000
id = 7000
pos = -20,-60
pausemovetime = 0
supermovetime = 0
sprpriority = -1
postype = back
ownpal = 1
size.xscale = 1.00
size.yscale = 1.00
;------------------------------------------------------------------------------
[State -1, プッツンキャンセル]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000
triggerall = power >= 1000
trigger1 = stateno = 1000 || stateno = 1060 || stateno = 1070
trigger1 = time >= 6
trigger1 = inguarddist
trigger1 = p2bodydist x = [-20,80]

trigger2 = stateno = 1201 || stateno = 1211 || stateno = 1221 || stateno = 1261
trigger2 = time >= 19
trigger2 = inguarddist
trigger2 = p2bodydist x = [-20,80]

trigger3 = stateno = 1201 || stateno = 1260
trigger3 = animelem = 8 && movecontact
trigger3 = p2statetype != A
value =700
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, AAAジャンプ];前ジャンプ攻め
type = ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
triggerall = statetype != A
;triggerall = !inguarddist ||p2statetype = C
triggerall = p2statetype != L
triggerall = !numtarget
trigger1 = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = P2BodyDist X = [30,120]
trigger1 = P2BodyDist Y > -80
trigger1 = ifelse(p2statetype != A,random<=var(58)*8,random<=var(58)*2)

trigger2 = stateno = 100
trigger2 = P2BodyDist X = [120,180]
trigger2 = P2BodyDist Y > -80
trigger2 = ifelse(p2statetype != A,random<=var(58)*3,random<=var(58)*1)

trigger3 = stateno != 100
trigger3 = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger3 = P2BodyDist X = [20,100]
trigger3 = P2BodyDist Y > -80
trigger3 = ifelse(p2statetype != A,random<=var(58)*2,random<=var(58)*0)

trigger4 = stateno != 100
triggerall = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger4 = P2BodyDist X = [-20,30]
trigger4 = P2BodyDist Y > -80
trigger4 = ifelse(p2statetype != A,random<=var(58)*3,random<=var(58)*0)

[State -1, ジャンプ];対飛び道具ジャンプ
type = 	ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !numtarget
triggerall = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = var(47) <= 60
trigger1 = var(47) >= -20
trigger1 = var(47) != 0
trigger1 = enemynear,ctrl = 0 && enemynear,animtime < -20

[State -1, ジャンプ];後ジャンプ後退
type = ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
;triggerall = !var(49)
triggerall = statetype != A
triggerall = !inguarddist
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = P2BodyDist X = [50,90]
trigger1 = P2BodyDist Y > -80
trigger1 = ifelse(p2statetype != A,random<=var(58)*4,random<=var(58)*0)

[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
triggerall = facing*(helper(37000+(facing=-1)*10),pos x-pos x) > 20
triggerall = statetype != A
;triggerall = !inguarddist
triggerall = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41
;triggerall = p2statetype != L && P2BodyDist X > 40
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
triggerall = P2BodyDist X = [20,400]
trigger1 = P2BodyDist X > 20
trigger1 = random<=var(58)*3
trigger2 = P2BodyDist X > 60
trigger2 = random<=var(58)*8
trigger3 = P2BodyDist X > 100
trigger3 = numhelper(1061) || numhelper(1071)
trigger3 = random<=var(58)*12
trigger4 = enemynear,stateno = [235,236]
trigger5 = !inguarddist
trigger5 = enemynear,ctrl = 0
trigger5 = random<=var(58)*20

[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = var(59)=1&& RoundState = 2
triggerall = facing*(helper(37000+(facing=-1)*10),pos x-pos x) > 40
;triggerall = statetype != A
;triggerall = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41
triggerall = p2statetype != L
;triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
trigger1 = stateno = 1162 && !animtime && numtarget
;trigger1 = target,pos y < -20

[State -1, バクステ]
type = ChangeState
value = 105
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
;triggerall = !var(49)
triggerall = statetype != A
triggerall = ctrl || (stateno = [120,149])|| stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100
triggerall = backedgedist > 60

trigger1 = !inguarddist
trigger1 = p2statetype = L
trigger1 = P2BodyDist X = [-20,10]
trigger1 = random<=var(58)*30

trigger2 = !inguarddist
trigger2 = p2statetype = L
trigger2 = P2BodyDist X = [10,30]
trigger2 = random<=var(58)*10

trigger3 = p2movetype = A
trigger3 = P2BodyDist X = [30,50]
trigger3 = random<=var(58)*3
;---------------------------------------------------------------------------
;Soffアドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = power >= 100
triggerall = statetype = S
triggerall = enemynear,animtime > -20
triggerall = frontedgedist > 50
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = power <= 2000
trigger1 = P2BodyDist X = [-20,80]
trigger1 = random<=var(58)*4

trigger2 = stateno = 150 || stateno = 151
trigger2 = prevstateno != 4000 && prevstateno != 4005
trigger2 = power > 2000
trigger2 = P2BodyDist X = [-20,80]
trigger2 = random<=var(58)*8

trigger3 = stateno = 150 || stateno = 151
trigger3 = prevstateno != 4000 && prevstateno != 4005
trigger3 = P2BodyDist X = [-20,20]
trigger3 = random<=var(58)*12
ignorehitpause = 1
value = 4000

;Soffアドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = power >= 100
triggerall = statetype = C
triggerall = enemynear,animtime > -20
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = power <= 2000
trigger1 = P2BodyDist X = [-20,80]
trigger1 = random<=var(58)*4

trigger2 = stateno = 152 || stateno = 153
trigger2 = prevstateno != 4000 && prevstateno != 4005
trigger2 = power > 2000
trigger2 = P2BodyDist X = [-20,80]
trigger2 = random<=var(58)*8

trigger3 = stateno = 152 || stateno = 153
trigger3 = prevstateno != 4000 && prevstateno != 4005
trigger3 = P2BodyDist X = [-20,20]
trigger3 = random<=var(58)*12
value = 4005
;------------------------------------------------------------------------------
;コンボルート3(Soff,序盤ゲージ温存コン)
;------------------------------------------------------------------------------
[State -1, varset]
type = varset
triggerall = var(59)=1&& RoundState = 2
triggerall = var(50) = 0
trigger1 = stateno = 200 ||  stateno = 400
trigger1 = movehit
trigger1 = life > 700 && power < 2000
var(50) = 30
ignorhitpause = 1

[State -1, しゃがみ弱];(基本)
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 30
trigger1 = stateno = 400 && time = 7 && movecontact
trigger1 = P2BodyDist X = [-20,20]

[State -1, 立ち中];(基本)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 30
trigger1 = stateno = 400 && time = 7 && movecontact
trigger1 = P2BodyDist X = [-20,60]
trigger2 = stateno = 200 && time = 3 && movecontact
trigger2 = P2BodyDist X = [-20,60]

[State -1, しゃがみ強];(基本)
type = ChangeState
value = 420
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 30
trigger1 = stateno = 210 && time = 7 && movecontact
trigger1 = P2BodyDist X = [-20,90]

trigger2 = stateno = 410 && time = 7 && movecontact
trigger2 = P2BodyDist X = [-20,90]

[State -1, タックル];(基本)
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 30
trigger1 = stateno = 420 && movecontact
trigger1 = P2BodyDist X = [-20,100]

[State -1, ラップラ];(基本)
type = ChangeState
value = 1200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 30
trigger1 = stateno = 250 && movehit
trigger1 = P2BodyDist X = [-20,150]

[State -1, 波紋疾走];(基本)
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 30
trigger1 = stateno = 250 && moveguarded
trigger1 = P2BodyDist X = [-20,150]

[State -1, HHA];(基本)
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 1500
trigger1 = stateno = 1201 && movecontact && animelem = 13
trigger1 = P2BodyDist X = [-20,120]
trigger1 = var(50) = 30
trigger1 = numtarget

[State -1, GHA];(基本)
type = null;ChangeState
value = 3300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = stateno = 1201 && movecontact && animelem = 12
trigger1 = P2BodyDist X = [-20,120]
trigger1 = var(50) = 30
trigger1 = numtarget
;------------------------------------------------------------------------------
;コンボルート2(画面端)
;------------------------------------------------------------------------------
[State -1, 立ち強];(基本)
type = ChangeState
value = 220
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 0
trigger1 = facing*(helper(37000+(facing=-1)*10),pos x-pos x) < 100
trigger1 = stateno = 210 && time = 7 && movecontact
trigger1 = P2BodyDist X = [-20,100]

[State -1, タックル];(基本)
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 0
trigger1 = stateno = 220 && movecontact
trigger1 = P2BodyDist X = [-20,100]

[State -1, 緋色SP];(画面端)
type = ChangeState
value = 1160
triggerall = var(59)=1&& RoundState = 2
triggerall = power >= 250
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = var(50) = 0
trigger1 = facing*(helper(37000+(facing=-1)*10),pos x-pos x) < 160
trigger1 = stateno = 250 && movehit
trigger1 = var(40) < 20

[State -1, varset]
type = varset
triggerall = var(59)=1&& RoundState = 2
triggerall = var(50) = 0
trigger1 = stateno = 1161 && movehit
var(50) = 2
ignorhitpause = 1

[State -1, 立ち弱];(画面端)
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 2
triggerall = ctrl || (stateno = [120,149]) || stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = facing*(helper(37000+(facing=-1)*10),pos x-pos x) < 160
trigger1 = P2BodyDist X = [-20,40]
trigger1 = P2BodyDist Y = [-90,-20]

[State -1, 立ち中];(基本)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,70]
trigger1 = var(50) = 2
trigger1 = numtarget
trigger1 = target,pos y > -80 && target,pos y < -20

[State -1, 立ち強];(基本)
type = null;ChangeState
value = 220
trigger1 = stateno = 210 && movecontact
trigger1 = P2BodyDist X = [-20,90]
trigger1 = var(50) = 2
trigger1 = numtarget
trigger1 = target,pos y > -120 && target,pos y < -50

[State -1, タックル];(基本)
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 220 && movecontact
trigger1 = P2BodyDist X = [-20,90]
trigger1 = var(50) = 2
trigger1 = numtarget
trigger1 = target,pos y > -120 && target,pos y < -20

trigger2 = var(50) = 2
trigger2 = p2statetype = A;取りこぼし防止
trigger2 = stateno = 210 && time >= 9
trigger2 = P2BodyDist X = [-20,100]
trigger2 = target,pos y > -120 && target,pos y < -10

[State -1, varset]
type = varset
triggerall = var(59)=1&& RoundState = 2
triggerall = var(50) = 2
triggerall = var(40) < 10
trigger1 = stateno = 250 && movehit
var(50) = 3
ignorhitpause = 1

[State -1, varset]
type = varset
triggerall = var(59)=1&& RoundState = 2
triggerall = var(50) = 2
triggerall = var(40) >= 10
trigger1 = stateno = 250 && movehit
var(50) = 4
ignorhitpause = 1

[State -1, 緋色SP];(基本)
type = ChangeState
value = 1160
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 250
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,80]
trigger1 = P2BodyDist Y = [-80,-10]
trigger1 = var(50) = 3
trigger1 = numtarget

[State -1, 連打];(基本)
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-80,-10]
trigger1 = var(50) = 3
trigger1 = numtarget

[State -1, varset]
type = varset
triggerall = var(59)=1&& RoundState = 2
triggerall = var(50) = 3
trigger1 = stateno = 1161 && movehit
var(50) = 4
ignorhitpause = 1

[State -1, ダッシュ];(画面端)
type = null;ChangeState
value = 100
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 4
triggerall = stateno != 100
triggerall = ctrl || (stateno = [120,149]) || stateno = 20 || stateno = 40 || stateno = 41
trigger1 = facing*(helper(37000+(facing=-1)*10),pos x-pos x) < 160

[State -1, 立弱];(画面端)
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 4
triggerall = ctrl || (stateno = [120,149]) || stateno = 20 || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,45]
trigger1 = P2BodyDist Y = [-90,-10]

[State -1, 連打SP];(基本)
type = ChangeState
value = 1360
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 250
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-30,-10]
trigger1 = var(50) = 4
trigger1 = numtarget

[State -1, 立ち中];(基本)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,70]
trigger1 = var(50) = 4
trigger1 = numtarget
trigger1 = target,pos y > -80 && target,pos y < -20

[State -1, 立ち強];(基本)
type = ChangeState
value = 220
trigger1 = stateno = 210 && movecontact
trigger1 = P2BodyDist X = [-20,90]
trigger1 = var(50) = 4
trigger1 = numtarget
trigger1 = target,pos y > -120 && target,pos y < -50

[State -1, タックル];(基本)
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 220 && movecontact
trigger1 = P2BodyDist X = [-20,90]
trigger1 = var(50) = 4
trigger1 = numtarget
trigger1 = target,pos y > -120 && target,pos y < -20

trigger2 = var(50) = 4
trigger2 = p2statetype = A;取りこぼし防止
trigger2 = stateno = 210 && time >= 9
trigger2 = P2BodyDist X = [-20,100]
trigger2 = target,pos y > -120 && target,pos y < -20

[State -1, 連打SP];(基本)
type = ChangeState
value = 1360
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 250
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-80,-10]
trigger1 = var(50) = 4
trigger1 = numtarget

[State -1, 連打];(基本)
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power < 250
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-80,-20]
trigger1 = var(50) = 4
trigger1 = numtarget

[State -1, varset]
type = varset
triggerall = var(59)=1&& RoundState = 2
triggerall = var(50) = 4
trigger1 = stateno = 1361 && movehit
var(50) = 5
ignorhitpause = 1

[State -1, 立弱];(画面端)
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 5
triggerall = ctrl || (stateno = [120,149]) || stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = facing*(helper(37000+(facing=-1)*10),pos x-pos x) < 160
trigger1 = P2BodyDist X = [-20,40]
trigger1 = P2BodyDist Y = [-80,-20]

[State -1, 立ち中];(基本)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,70]
trigger1 = var(50) = 5
trigger1 = numtarget
trigger1 = target,pos y > -70 && target,pos y < -20

[State -1, タックル];(基本)
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 210 && movecontact
trigger1 = P2BodyDist X = [-20,90]
trigger1 = var(50) = 5
trigger1 = numtarget
trigger1 = target,pos y > -120 && target,pos y < -20

trigger2 = var(50) = 5
trigger2 = p2statetype = A;取りこぼし防止
trigger2 = stateno = 210 && time >= 9
trigger2 = P2BodyDist X = [-20,100]
trigger2 = target,pos y > -120 && target,pos y < -20

[State -1, ラップラ];(画面端)
type = ChangeState
value = 1200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 5
triggerall = var(40) < 30
triggerall = stateno = 250 && movehit
trigger1 = P2BodyDist X = [-20,80]
trigger1 = P2BodyDist Y < -40

[State -1, 連打];(画面端)
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 5
triggerall = stateno = 250 && movehit
trigger1 = P2BodyDist X = [-20,80]
;trigger1 = P2BodyDist Y = [-20,-50]

[State -1, GHA];(基本)
type = ChangeState
value = 3300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 2000 && target,life > 200
trigger1 = stateno = 1201 && movehit && animelem = 13
trigger1 = facing*(helper(37000+(facing=-1)*10),pos x-pos x) < 100
trigger1 = var(50) = 5
trigger1 = numtarget

trigger2 = stateno = 1301 && movehit
trigger2 = P2BodyDist X = [-20,110]
trigger2 = var(50) = 5
trigger2 = numtarget

[State -1, HHA];(基本)
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 1201 && movecontact && animelem = 13
trigger1 = P2BodyDist X = [-20,120]
trigger1 = var(50) = 5
trigger1 = numtarget

trigger2 = stateno = 1301 && movehit
trigger2 = P2BodyDist X = [-20,110]
trigger2 = var(50) = 5
trigger2 = numtarget
;------------------------------------------------------------------------------
;コンボルート1.5(Soff,基本対空)
;------------------------------------------------------------------------------
[State -1, 立ち中];(基本対空)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = var(50) = 0
trigger1 = stateno = 200 && time = 3 && movecontact
trigger1 = P2BodyDist X = [-20,80]
trigger1 = P2BodyDist Y = [-80,-20]

[State -1, D立ち強];(基本対空)
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = var(50) = 0
trigger1 = stateno = 210 && time = 7 && movecontact
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-80,-20]
trigger2 = stateno = 210 && time = 7
trigger2 = P2BodyDist X = [-20,100]
trigger2 = P2BodyDist Y = [-90,-40]

[State -1, 連打SP];(基本対空)
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 0
triggerall = p2statetype = A
trigger1 = power < 250
trigger1 = stateno = 210 && time = 7 && movecontact
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [0,100]
trigger1 = P2BodyDist Y = [-120,-20]

[State -1, 連打SP];(基本対空)
type = ChangeState
value = 1360
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 0
trigger1 = power >= 250
trigger1 = stateno = 210 && time = 7 && movecontact
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [0,100]
trigger1 = P2BodyDist Y = [-120,-20]
;------------------------------------------------------------------------------
;コンボルート1.6(崩し)
;------------------------------------------------------------------------------
[State -1, しゃがみ中];(基本)
type = ChangeState
value = 410
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 0
trigger1 = stateno = 400 && time = 7 && moveguarded
trigger1 = P2BodyDist X = [-20,50]

[State -1, ラップラ];(基本)
type = ChangeState
value = 1200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 0

trigger1 = random < 100
trigger1 = stateno = 400 && time = 7 && moveguarded
trigger1 = P2BodyDist X = [-20,120]

trigger2 = random < 300
trigger2 = stateno = 410 && time = 7 && moveguarded
trigger2 = P2BodyDist X = [-20,120]

trigger3 = random < 200
trigger3 = stateno = 420 && time = 11 && moveguarded
trigger3 = P2BodyDist X = [-20,120]
;------------------------------------------------------------------------------
;コンボルート1(Soff,基本)
;------------------------------------------------------------------------------
[State -1, しゃがみ弱];(基本)
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 0
trigger1 = stateno = 400 && time = 7 && movecontact
trigger1 = P2BodyDist X = [-20,20]

[State -1, 立ち中];(基本)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 0
trigger1 = stateno = 400 && time = 7 && movecontact
trigger1 = P2BodyDist X = [-20,60]
trigger2 = stateno = 200 && time = 3 && movecontact
trigger2 = P2BodyDist X = [-20,60]

[State -1, しゃがみ強];(基本)
type = ChangeState
value = 420
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 0
trigger1 = stateno = 210 && time = 7 && movecontact
trigger1 = P2BodyDist X = [-20,90]

trigger2 = stateno = 410 && time = 7 && movecontact
trigger2 = P2BodyDist X = [-20,90]

[State -1, タックル];(基本)
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 0
trigger1 = stateno = 420 && movecontact
trigger1 = P2BodyDist X = [-20,100]

[State -1, 波紋疾走];(基本)
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(50) = 0
trigger1 = stateno = 250 && moveguarded
trigger1 = P2BodyDist X = [-20,150]

[State -1, 緋色];(基本)
type = ChangeState
value = 1110
triggerall = var(59)=1&& RoundState = 2
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = var(50) = 0
trigger1 = power < 250 || target,life < 30
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,90]

[State -1, 連打SP];(基本)
type = ChangeState
value = 1360
triggerall = var(59)=1&& RoundState = 2
triggerall = p2statetype != L
triggerall = statetype != A
triggerall = var(50) = 0
trigger1 = power >= 250
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,100]

[State -1, varset]
type = varset
triggerall = var(59)=1&& RoundState = 2
triggerall = var(50) = 0
trigger1 = stateno = 1361 && movehit
var(50) = 1
ignorhitpause = 1

[State -1, 歩き]
type = ChangeState
value = 20
triggerall = var(59)=1&& RoundState = 2
trigger1 = ctrl
trigger1 = var(50) = 1
trigger1 = numtarget
trigger1 = P2BodyDist X >= 5

[State -1, 立ち弱];(基本)
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = ctrl || stateno = 20
trigger1 = P2BodyDist X = [-20,40]
trigger1 = var(50) = 1
trigger1 = numtarget
trigger1 = target,vel y >= 0
trigger1 = target,pos y > -110 && target,pos y < -60

[State -1, 立ち中];(基本)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,70]
trigger1 = var(50) = 1
trigger1 = numtarget
trigger1 = target,pos y > -85 && target,pos y < -40

[State -1, 立ち強];(基本)
type = ChangeState
value = 220
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 210 && movecontact
trigger1 = P2BodyDist X = [-20,100]
trigger1 = var(50) = 1
trigger1 = numtarget
trigger1 = target,pos y > -90 && target,pos y < -40

trigger2 = var(50) = 1
trigger2 = p2statetype = A;取りこぼし防止
trigger2 = stateno = 210 && time = 7
trigger2 = P2BodyDist X = [-20,100]
trigger2 = target,pos y > -120 && target,pos y < -40

[State -1, タックル];(基本)
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 220 && movecontact
trigger1 = P2BodyDist X = [-20,120]
trigger1 = var(50) = 1
trigger1 = numtarget
trigger1 = target,pos y > -120 && target,pos y < -10

trigger2 = var(50) = 1
trigger2 = p2statetype = A;取りこぼし防止
trigger2 = stateno = 220 && time = 15
trigger2 = P2BodyDist X = [-20,100]
trigger2 = target,pos y > -120 && target,pos y < -20

[State -1, varset]
type = varset
triggerall = var(59)=1&& RoundState = 2
triggerall = var(50) = 1
trigger1 = stateno = 250 && movehit
var(50) = 10
ignorhitpause = 1

[State -1, 連打];(基本)
type = ChangeState
value = 1360
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power > 500 || target,life < 100
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,130]
trigger1 = var(50) = 10
trigger1 = numtarget
trigger1 = target,pos y > -120 && target,pos y < -10

[State -1, varset]
type = varset
triggerall = var(59)=1&& RoundState = 2
triggerall = var(50) = 10
trigger1 = stateno = 1361 && movehit
var(50) = 11
ignorhitpause = 1

[State -1, 連打];(基本)
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,100]
trigger1 = var(50) = 10
trigger1 = numtarget
trigger1 = P2BodyDist Y < -10

[State -1, ラップラ];(基本)
type = null;ChangeState
value = 1200
triggerall = var(59)=1&& RoundState = 2
triggerall = p2statetype = A
triggerall = statetype != A
trigger1 = var(40) <= 20
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,90]
trigger1 = var(50) = 10
trigger1 = numtarget
;trigger1 = P2BodyDist Y < -60

[State -1, 歩き];(基本)
type = null;ChangeState
value = 20
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = var(50) = 11
trigger1 = stateno = 1361 && !animtime
trigger1 = numtarget

[State -1, 立ち弱];(基本)
type = null;ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = [120,149]) || stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100
trigger1 = P2BodyDist X = [-20,0]
trigger1 = var(50) = 11
trigger1 = numtarget
trigger1 = target,vel y >= 0
trigger1 = target,pos y > -110 && target,pos y < -60

[State -1, 立ち強];(基本)
type = ChangeState
value = 220
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = [120,149]) || stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100
trigger1 = P2BodyDist X = [-20,70]
trigger1 = var(50) = 11
trigger1 = numtarget
trigger1 = target,pos y > -140 && target,pos y < -70

[State -1, タックル];(基本)
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 220 && movecontact
trigger1 = P2BodyDist X = [-20,90]
trigger1 = var(50) = 11
trigger1 = numtarget
trigger1 = target,pos y > -120 && target,pos y < -20

trigger2 = var(50) = 11
trigger2 = p2statetype = A;取りこぼし防止
trigger2 = stateno = 220 && time >= 15
trigger2 = P2BodyDist X = [-20,100]
trigger2 = target,pos y > -120 && target,pos y < -40

[State -1, 連打];(基本)
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 250 && movecontact
trigger1 = P2BodyDist X = [-20,100]
trigger1 = var(50) = 11
trigger1 = numtarget
trigger1 = P2BodyDist Y < -10

[State -1, GHA];(基本)
type = ChangeState
value = 3300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 2000 && target,life > 200
trigger1 = stateno = 1201 && movehit && animelem = 13
trigger1 = P2BodyDist X = [-20,60]
trigger1 = var(50) = 10 || var(50) = 11
trigger1 = numtarget

trigger2 = stateno = 1301 && movehit
trigger2 = P2BodyDist X = [-20,60]
trigger2 = var(50) = 10 || var(50) = 11
trigger2 = numtarget

[State -1, HHA];(基本)
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 1201 && movecontact && animelem = 13
trigger1 = P2BodyDist X = [-20,120]
trigger1 = var(50) = 10 || var(50) = 11
trigger1 = numtarget

trigger2 = stateno = 1301 && movehit
trigger2 = P2BodyDist X = [-20,110]
trigger2 = var(50) = 10 || var(50) = 11
trigger2 = numtarget
;------------------------------------------------------------------------------
;ガード
[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59)
triggerall = roundstate = 2
triggerall = InGuardDist
triggerall = ctrl || (stateno = [120,149]) || stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = statetype != A
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
triggerall = ctrl || (stateno = [120,149]) || stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = statetype = A
triggerall = NumHelper(1001) != 1
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random = [0,40]

;ガード 
[State -1, guard] 
type = ChangeState 
value = 120
triggerall = var(59) = 1 && RoundState = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = [120,149]) || stateno = 20 || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
triggerall = stateno != [120,155] 
triggerall = stateno !=100&&stateno !=105&&stateno !=0
trigger1 = random <=700 
trigger1 = p2movetype = A || enemynear,movetype = A || InGuardDist 
trigger2 = p2movetype = A || enemynear,movetype = A || InGuardDist || enemynear,NumProj != 0 
trigger2 = P2BodyDist X >= 90 || statetype = A 
trigger3 = p2movetype = A || enemynear,movetype = A || InGuardDist || enemynear,NumProj != 0
trigger4 = var(47) <= 30
trigger4 = var(47) >= -10
trigger4 = var(47) != 0