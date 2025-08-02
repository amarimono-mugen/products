
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
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "SmashKFUpper"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "SmashKFUpper"
command = ~F, D, DF, x+y
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "stk_x"
command = ~B, D, F, x

[Command]
name = "stk_y"
command = ~B, D, F, y

[Command]
name = "stk_z"
command = ~B, D, F, z

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
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_z"
command = ~D, DF, F, z

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
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

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

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "x+y+z"
command = x+y+z

[Command]
name = "a+b"
command = a+b

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
;------------------------------------------------------------------------------

[State -1, ロードローラー]
type = ChangeState
value = 8000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "x+y+a+b"  
triggerall = power >= 10000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = ctrl                        ;コントロールが可能な場合
;------------------------------------------------------------------------------

[State -1, シルチャリ　発動]
type = ChangeState
value = 3300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 1
triggerall = numhelper(1026) = 0
triggerall = NumHelper(1017) = 0 
triggerall = command = "TripleKFPalm"  ;「SmashKFUpper」の名前のコマンドが入力されたら
triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = ctrl                        ;コントロールが可能な場合
;------------------------------------------------------------------------------
[State -1, クレダイ　発動]
type = ChangeState
value = 3305
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 11
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, キンクリ　発動]
type = ChangeState
value = 3310
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 2
triggerall = numhelper(1026) = 0
triggerall = NumHelper(1017) = 0 
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, GE　発動]
type = ChangeState
value = 3315
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 12
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, スティッキー　発動]
type = ChangeState
value = 3320
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 3
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200, 410]
trigger2 = time >= 6
trigger3 = stateno = 320 && time >= 10
trigger4 = stateno = [900,990]
trigger4 = time >= 6
trigger5 = stateno = 420 && time >= 10
trigger6 = stateno = 1451
;------------------------------------------------------------------------------
[State -1, スティッキー　発動(空中)]
type = ChangeState
value = 3322
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 3
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && time >= 6
trigger3 = stateno = 610 && time >= 7
trigger4 = stateno = 720 && time >= 10
trigger5 = stateno = [1900,1990]
trigger5 = time >= 6
trigger6 = stateno = 1450 || stateno = 1460
trigger6 = time >= 11
;------------------------------------------------------------------------------
[State -1, 世界　発動]
type = ChangeState
value = 3325
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 13
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, キラークィーン　発動]
type = ChangeState
value = 3330
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 4
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, DD　発動]
type = ChangeState
value = 3336
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 14
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ジャンピン　発動]
type = ChangeState
value = 3340
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 5
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ハミパ　発動]
type = ChangeState
value = 3350
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 6
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ストフリ　発動]
type = ChangeState
value = 3360
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 7
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, クリーム　発動]
type = ChangeState
value = 3365
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 15
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, サン　発動]
type = ChangeState
value = 3375
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 16
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, GER　発動]
type = ChangeState
value = 3380
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 9
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, マジシャンズレッド　発動]
type = ChangeState
value = 3385
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 17
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, act3　発動]
type = ChangeState
value = 3390
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 10
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, ガーキャン]
type = ChangeState
value = 1800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "holdfwd"
triggerall = command = "b"
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 1500
trigger1 = stateno = [150,153]
trigger1 = time > 0

[State -1, ガーキャンB]
type = ChangeState
value = 1810
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "b"
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 1500
trigger1 = stateno = [150,153]
trigger1 = time > 0
;------------------------------------------------------------------------------
[State -1, ボス昇竜 弱]
type = ChangeState
value = 1400
triggerall = command = "upper_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 410]
trigger2 = time >= 6
trigger3 = stateno = 420
trigger3 = movecontact

[State -1, ボス昇竜 中]
type = ChangeState
value = 1410
triggerall = command = "upper_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 410]
trigger2 = time >= 6
trigger3 = stateno = 420
trigger3 = movecontact
;------------------------------------------------------------------------------
[State -1, 急降下キック]
type = ChangeState
value = 1450
triggerall = command = "QCB_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time >= 6
trigger3 = stateno = 610 && time >= 7
trigger4 = stateno = [700, 795]
trigger4 = time >= 7
trigger5 = stateno = 1601 || stateno = 1611
trigger5 = time >= 10

[State -1, 急降下キック]
type = ChangeState
value = 1460
triggerall = command = "QCB_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time >= 6
trigger3 = stateno = 610 && time >= 7
trigger4 = stateno = [700, 795]
trigger4 = time >= 7
trigger5 = stateno = 1601 || stateno = 1611
trigger5 = time >= 10
;------------------------------------------------------------------------------
[State -1, 水平ボスキック 弱]
type = ChangeState
value = 1600
triggerall = command = "QCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 410]
trigger2 = time >= 6
trigger3 = stateno = 420
trigger3 = movecontact

[State -1, 水平ボスキック 強]
type = ChangeState
value = 1610
triggerall = command = "QCB_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 410]
trigger2 = time >= 6
trigger3 = stateno = 420
trigger3 = movecontact
;------------------------------------------------------------------------------
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
; 特殊技
;==============================================================================
;---------------------------------------------------------------------------
[State -1, ff弾]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 1
triggerall = NumHelper(1301) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 900
;---------------------------------------------------------------------------
[State -1, エメスプ]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 2
triggerall = NumHelper(912) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 910
;---------------------------------------------------------------------------
[State -1, ドヒュウ]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 3
triggerall = NumHelper(922) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 920
;---------------------------------------------------------------------------
[State -1, 灰色の塔]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 4
triggerall = NumHelper(931) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 930
;---------------------------------------------------------------------------
[State -1, ホルス神]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 5
triggerall = NumHelper(941) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 940
;---------------------------------------------------------------------------
[State -1, ff弾 空中]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 1
triggerall = NumHelper(1301) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1900
;---------------------------------------------------------------------------
[State -1, エメスプ 空中] 
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 2
triggerall = NumHelper(912) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1910
;---------------------------------------------------------------------------
[State -1, ドヒュウ 空中]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 3
triggerall = NumHelper(922) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1920
;---------------------------------------------------------------------------
[State -1, 灰色の塔 空中]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 4
triggerall = NumHelper(931) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1930
;---------------------------------------------------------------------------
[State -1, ホルス神 空中]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 5
triggerall = NumHelper(941) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1940
;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "holdfwd"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ピザ]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(3327) = 0 
triggerall = command = "start" 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 420 && time >= 14
value = 1011
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" 
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
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" 
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = (RoundState = 2) && (Alive)
triggerall = NumHelper(1017) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "x+y+z"
value = 30
;------------------------------------------------------------------------------
[State -1, 投げ]
type = ChangeState
value = 500
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 400 && time >= 5
;------------------------------------------------------------------------------
[State -1, シルバーチャリオッツ　攻撃]
type = ChangeState
value = 300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, クレイジーダイヤモンド　攻撃]
type = ChangeState
value = 305
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 11
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, キングクリムゾン　攻撃]
type = ChangeState
value = 310
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 2
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, ゴールドエクスペリエンス　攻撃]
type = ChangeState
value = 315
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 12
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, スティッキーフィンガーズ　攻撃]
type = ChangeState
value = 320
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 3
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, 世界　攻撃]
type = ChangeState
value = 325
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 13
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, キラークィーン　攻撃]
type = ChangeState
value = 330
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 4
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, ダイバーダウン　攻撃]
type = ChangeState
value = 335
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(337) = 0
triggerall = var(9) = 14
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, ジャンピン　攻撃]
type = ChangeState
value = 340
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 5
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, ハミパ　攻撃]
type = ChangeState
value = 350
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 6
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, ストフリ　攻撃]
type = ChangeState
value = 360
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 7
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, クリーム　攻撃]
type = ChangeState
value = 365
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 15
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, サン　攻撃]
type = ChangeState
value = 375
triggerall = var(9) = 16
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, GER　攻撃]
type = ChangeState
value = 380
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 9
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, マジシャンズレッド　攻撃]
type = ChangeState
value = 385
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 17
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------
[State -1, act3　攻撃]
type = ChangeState
value = 390
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 10
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger4 = stateno = 400 && time >= 5
trigger5 = stateno = 410 && time >= 7
;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 5

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 5

[State -1, しゃがみ強キック]
type = ChangeState
value = 420
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

;------------------------------------------------------------------------------
[State -1, シルバーチャリオッツ 空中 攻撃]
type = ChangeState
value = 700
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, クレイジーダイヤモンド 空中 攻撃]
type = ChangeState
value = 705
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 11
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, キングクリムゾン 空中 攻撃]
type = ChangeState
value = 710
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 2
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, ゴールドエクスペリエンス 空中 攻撃]
type = ChangeState
value = 715
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 12
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, スティッキーフィンガーズ  空中 攻撃]
type = ChangeState
value = 720
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 3
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, 世界 空中 攻撃]
type = ChangeState
value = 725
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 13
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, キラークィーン  空中 攻撃]
type = ChangeState
value = 730
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 4
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5

;------------------------------------------------------------------------------
[State -1, ダイバーダウン 空中　攻撃]
type = ChangeState
value = 735
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(337) = 0
triggerall = var(9) = 14
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, ジャンピン  空中 攻撃]
type = ChangeState
value = 740
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 5
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, ハミパ  空中 攻撃]
type = ChangeState
value = 750
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 6
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, ストフリ  空中 攻撃]
type = ChangeState
value = 760
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 7
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, クリーム  空中 攻撃]
type = ChangeState
value = 765
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 15
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, サン  空中 攻撃]
type = ChangeState
value = 775
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 16
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, GER  空中 攻撃]
type = ChangeState
value = 780
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 9
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, マジシャンズレッド  空中 攻撃]
type = ChangeState
value = 785
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 17
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, act3  空中 攻撃]
type = ChangeState
value = 790
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(9) = 10
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, 射撃disc装備]
type = ChangeState
value = 10010
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = power >= 200
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 420 && time >= 14

[State -1, 記憶disc]
type = ChangeState
value = 10050
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = power >= 100
triggerall = var(9) = 8
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 420 && time >= 14

[State -1, 攻撃disc装備]
type = ChangeState
value = 10000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = var(9) != 8
triggerall = command != "holddown"
triggerall = power >= 500
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 420 && time >= 14
ignorehitpause = 1
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
;--------------------------------------------------------------------------
[State -1, ロードローラー]
type = ChangeState
value = 8000
triggerall = var(59)=1&& RoundState = 2 
triggerall = power >= 10000
triggerall = statetype != A
trigger1 = enemynear,statetype = L
trigger1 = random<=var(58)*50 
trigger1 = enemynear,movetype != A  
trigger1 = P2BodyDist X = [100,180] 
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

trigger2 = P2BodyDist X = [-20,150]
trigger2 = NumHelper(944) != 0 
trigger2 = random<=var(58)*50
trigger2 = enemynear,movetype != A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

trigger3 = P2BodyDist X = [100,160]
trigger3 = random<=var(58)*1
trigger3 = enemynear,movetype != A  
trigger3 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;------------------------------------------------------------------------------

[State -1, シルチャリ　発動]
type = ChangeState
value = 3300
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 1
triggerall = numhelper(1026) = 0
triggerall = NumHelper(1017) = 0 
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X >= 100 
trigger1 = enemynear,movetype != A
trigger1= random<=var(58)*10
trigger1 = ctrl

trigger2 = NumHelper(944) != 0 
trigger2 = random<=var(58)*50
trigger2 = enemynear,movetype != A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;------------------------------------------------------------------------------
[State -1, クレダイ　発動]
type = ChangeState
value = 3305
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 11
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X = [-20,100]
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1= random<=var(58)*10
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, キンクリ　発動]
type = ChangeState
value = 3310
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 2
triggerall = numhelper(1026) = 0
triggerall = NumHelper(1017) = 0 
triggerall = power >= 3000
triggerall = statetype != A
trigger1= random<=var(58)*10
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, GE　発動]
type = ChangeState
value = 3315
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 12
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X >= 120 
trigger1 = enemynear,movetype != A
trigger1= random<=var(58)*10
trigger1 = ctrl

trigger2 = NumHelper(944) != 0 
trigger2 = random<=var(58)*50
trigger2 = enemynear,movetype != A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;------------------------------------------------------------------------------
[State -1, スティッキー　発動]
type = ChangeState
value = 3320
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 3
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X = [-20,100]
trigger1 = enemynear,statetype = A
trigger1 = random<=var(58)*10
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, 世界　発動]
type = ChangeState
value = 3325
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 13
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X = [-20,150]
trigger1 = enemynear,movetype != A
trigger1 = enemynear,statetype != L
trigger1= random<=var(58)*10
trigger1 = ctrl

trigger2 = NumHelper(944) != 0 
trigger2 = random<=var(58)*50
trigger2 = enemynear,movetype != A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;------------------------------------------------------------------------------
[State -1, キラークィーン　発動]
type = ChangeState
value = 3330
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 4
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X >= 50
trigger1 = enemynear,movetype != A
trigger1= random<=var(58)*10
trigger1 = ctrl

trigger2 = NumHelper(944) != 0 
trigger2 = random<=var(58)*50
trigger2 = enemynear,movetype != A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;------------------------------------------------------------------------------
[State -1, DD　発動]
type = ChangeState
value = 3336
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 14
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X >= 100
trigger1= random<=var(58)*10
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ジャンピン　発動]
type = ChangeState
value = 3340
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 5
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X >= 100
trigger1 = enemynear,movetype != A
trigger1= random<=var(58)*20
trigger1 = ctrl

trigger2 = NumHelper(944) != 0 
trigger2 = random<=var(58)*50
trigger2 = enemynear,movetype != A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;------------------------------------------------------------------------------
[State -1, ハミパ　発動]
type = ChangeState
value = 3350
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 6
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X >= 100
trigger1 = enemynear,movetype != A
trigger1= random<=var(58)*20
trigger1 = ctrl

trigger2 = NumHelper(944) != 0 
trigger2 = random<=var(58)*50
trigger2 = enemynear,movetype != A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
value = 1011
;------------------------------------------------------------------------------
[State -1, ストフリ　発動]
type = ChangeState
value = 3360
triggerall = var(59)=1&& RoundState = 2  
triggerall = var(9) = 7
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = life <= 500
trigger1= random<=var(58)*10
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, クリーム　発動]
type = ChangeState
value = 3365
triggerall = var(59)=1&& RoundState = 2  
triggerall = var(9) = 15
triggerall = power >= 1000
triggerall = statetype != A
triggerall = P2statetype != A
triggerall = P2statetype != L
triggerall = !inguarddist
trigger1 = P2BodyDist X = [60,140]
trigger1= random<=var(58)*10
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ザ・サン　発動]
type = ChangeState
value = 3375
triggerall = var(59)=1&& RoundState = 2  
triggerall = var(9) = 16
triggerall = power >= 1000
triggerall = statetype != A
triggerall = P2statetype != A
triggerall = P2statetype != L
triggerall = !inguarddist
trigger1= random<=var(58)*10
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, GER　発動]
type = ChangeState
value = 3380
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 9
triggerall = enemynear,life >= 800
triggerall = life <= 50
triggerall = statetype != A
trigger1= random<=var(58)*5
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, マジシャンズレッド　発動]
type = ChangeState
value = 3385
triggerall = var(59)=1&& RoundState = 2  
triggerall = var(9) = 17
triggerall = power >= 1000
triggerall = statetype != A
triggerall = P2statetype != A
triggerall = P2statetype != L
triggerall = !inguarddist
trigger1= random<=var(58)*10
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, act3　発動]
type = ChangeState
value = 3390
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 10
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = P2BodyDist X = [-20,100]
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1= random<=var(58)*15
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)=1&& RoundState = 2 
trigger1= random<=var(58)*5
trigger1 = P2BodyDist X >= 150
trigger1 = enemynear,movetype != A
trigger1 = life >= 999
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2 
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = P2BodyDist X = [-30,30]
trigger1= random<=var(58)*30
trigger1 = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger2 = stateno = 400
trigger2 = movecontact && time > 5

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = var(59)=1&& RoundState = 2 
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*10
trigger1 = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = movecontact && time > 5
;------------------------------------------------------------------------------
[State -1, シルバーチャリオッツ　攻撃]
type = ChangeState
value = 300
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 1
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*20
;------------------------------------------------------------------------------
[State -1, クレイジーダイヤモンド　攻撃]
type = ChangeState
value = 305
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 11
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*20
;------------------------------------------------------------------------------
[State -1, キングクリムゾン　攻撃]
type = ChangeState
value = 310
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 2
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*20
;------------------------------------------------------------------------------
[State -1, ゴールドエクスペリエンス　攻撃]
type = ChangeState
value = 315
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 12
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*20
;------------------------------------------------------------------------------
[State -1, スティッキーフィンガーズ　攻撃]
type = ChangeState
value = 320
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 3
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,150]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, 世界　攻撃]
type = ChangeState
value = 325
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 13
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*20
;------------------------------------------------------------------------------
[State -1, キラークィーン　攻撃]
type = ChangeState
value = 330
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 4
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*20
;------------------------------------------------------------------------------
[State -1, ダイバーダウン　攻撃]
type = ChangeState
value = 335
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(337) = 0
triggerall = var(9) = 14
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,180]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, ジャンピン　攻撃]
type = ChangeState
value = 340
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 5
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*20
;------------------------------------------------------------------------------
[State -1, ハミパ　攻撃]
type = ChangeState
value = 350
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 6
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,120]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, ストフリ　攻撃]
type = ChangeState
value = 360
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 7
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*20
;------------------------------------------------------------------------------
[State -1, クリーム　攻撃]
type = ChangeState
value = 365
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 15
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*25
;------------------------------------------------------------------------------
[State -1, ザ・サン　攻撃]
type = ChangeState
value = 375
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 16
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*25
;------------------------------------------------------------------------------
[State -1, GER　攻撃]
type = ChangeState
value = 380
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 9
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*25
;------------------------------------------------------------------------------
[State -1, act3　攻撃]
type = ChangeState
value = 390
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 10
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1= random<=var(58)*20
;------------------------------------------------------------------------------
[State -1, シルバーチャリオッツ 空中 攻撃]
type = ChangeState
value = 700
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 1
triggerall = enemynear,statetype != L
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, クレイジーダイヤモンド 空中 攻撃]
type = ChangeState
value = 705
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 11
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, キングクリムゾン 空中 攻撃]
type = ChangeState
value = 710
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 2
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, ゴールドエクスペリエンス 空中 攻撃]
type = ChangeState
value = 715
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 12
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, スティッキーフィンガーズ  空中 攻撃]
type = ChangeState
value = 720
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 3
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,150]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, 世界 空中 攻撃]
type = ChangeState
value = 725
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 13
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, キラークィーン  空中 攻撃]
type = ChangeState
value = 730
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 4
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, ダイバーダウン 空中　攻撃]
type = ChangeState
value = 735
triggerall = var(59)=1&& RoundState = 2
triggerall = numhelper(337) = 0
triggerall = var(9) = 14
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, ジャンピン  空中 攻撃]
type = ChangeState
value = 740
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 5
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, ハミパ  空中 攻撃]
type = ChangeState
value = 750
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 6
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,120]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, ストフリ  空中 攻撃]
type = ChangeState
value = 760
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 7
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, クリーム  空中 攻撃]
type = ChangeState
value = 765
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 15
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, ザ・サン  空中 攻撃]
type = ChangeState
value = 775
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 16
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, GER  空中 攻撃]
type = ChangeState
value = 780
triggerall = var(59)=1&& RoundState = 2
triggerall = var(9) = 9
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;------------------------------------------------------------------------------
[State -1, act3  空中 攻撃]
type = ChangeState
value = 790
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9) = 10
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-50,50]
trigger1= random<=var(58)*15
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
[State -1, ff弾]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 1
triggerall = NumHelper(1301) = 0 
Triggerall = EnemyNear,statetype != A 
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,0]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,0]
trigger2 = random<=var(58)*30

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,0]
trigger3 = random<=var(58)*3
value = 900
;---------------------------------------------------------------------------
[State -1, エメスプ]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 2
triggerall = NumHelper(912) = 0
Triggerall = EnemyNear,statetype != A 
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,0]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,0]
trigger2 = random<=var(58)*30

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,0]
trigger3 = random<=var(58)*3
value = 910
;---------------------------------------------------------------------------
[State -1, ドヒュウ]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 3
triggerall = NumHelper(922) = 0
Triggerall = EnemyNear,statetype != A 
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,0]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,0]
trigger2 = random<=var(58)*30

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,0]
trigger3 = random<=var(58)*3
value = 920
;---------------------------------------------------------------------------
[State -1, 灰色の塔]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 4
triggerall = NumHelper(931) = 0
Triggerall = EnemyNear,statetype != A 
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,0]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,0]
trigger2 = random<=var(58)*30

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,0]
trigger3 = random<=var(58)*3
value = 930
;---------------------------------------------------------------------------
[State -1, ホルス神]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 5
triggerall = NumHelper(941) = 0
Triggerall = EnemyNear,statetype != A 
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
triggerall = NumHelper(944) = 0 
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,0]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,0]
trigger2 = random<=var(58)*15

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,0]
trigger3 = random<=var(58)*3
value = 940
;---------------------------------------------------------------------------
[State -1, ff弾 空中]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 1
triggerall = NumHelper(1301) = 0 
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,80]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,80]
trigger2 = random<=var(58)*30

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,80]
trigger3 = random<=var(58)*3
value = 1900
;---------------------------------------------------------------------------
[State -1, エメスプ 空中] 
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 2
triggerall = NumHelper(912) = 0 
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,80]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,80]
trigger2 = random<=var(58)*30

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,80]
trigger3 = random<=var(58)*3
value = 1910
;---------------------------------------------------------------------------
[State -1, ドヒュウ 空中]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 3
triggerall = NumHelper(922) = 0 
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,80]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,80]
trigger2 = random<=var(58)*30

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,80]
trigger3 = random<=var(58)*3
value = 1920
;---------------------------------------------------------------------------
[State -1, 灰色の塔 空中]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 4
triggerall = NumHelper(931) = 0 
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,80]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,80]
trigger2 = random<=var(58)*30

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,80]
trigger3 = random<=var(58)*3
value = 1930
;---------------------------------------------------------------------------
[State -1, ホルス神 空中]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
Triggerall = EnemyNear,StateType != L
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 5
triggerall = NumHelper(941) = 0 
triggerall = statetype = A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
triggerall = NumHelper(944) = 0 
trigger1 = P2BodyDist X >= 150
trigger1 = P2BodyDist Y = [-80,80]
trigger1 = random<=var(58)*30

Trigger2 = EnemyNear,movetype != A 
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y = [-80,80]
trigger2 = random<=var(58)*30

Trigger3 = EnemyNear,movetype != A 
trigger3 = P2BodyDist Y = [-80,80]
trigger3 = random<=var(58)*3
value = 1940
;--------------------------------------------------------------------------
[State -1, 攻撃disc装備]
type = ChangeState
value = 10000
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = power >= 1000
triggerall = var(9)!=8
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150 
trigger1 = var(9)=0 
trigger1 = random<=var(58)*50 

trigger2 = enemynear,movetype != A  
trigger2 = P2BodyDist X >= 80 
trigger2 = var(9)=0 
trigger2 = random<=var(58)*50

trigger3 = enemynear,movetype != A  
trigger3 = P2BodyDist X >= 100 
trigger3 = random<=var(58)*2

trigger4 = var(9)=0 
trigger4 = NumHelper(944) != 0 
trigger4 = random<=var(58)*50
trigger4 = enemynear,movetype != A  
trigger4 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;--------------------------------------------------------------------------
[State -1, 射撃disc装備]
type = ChangeState
value = 10010
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(3327) = 0 
triggerall = power >= 200
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X >= 150 
trigger1 = var(19)=0 
trigger1 = random<=var(58)*50

trigger2 = enemynear,movetype != A  
trigger2 = P2BodyDist X >= 80 
trigger2 = var(19)=0 
trigger2 = random<=var(58)*50

trigger3 = enemynear,movetype != A  
trigger3 = P2BodyDist X >= 100
trigger3 = var(19)!=5 
trigger3 = random<=var(58)*2

trigger4 = enemynear,movetype != A  
trigger4 = P2BodyDist X >= 100
trigger4 = var(19)=1
trigger4 = random<=var(58)*15
;--------------------------------------------------------------------------
[State -1, 記憶disc装備]
type = ChangeState
value = 10050
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(9)=8
triggerall = power >= 500
triggerall = statetype != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = enemynear,movetype != A  
trigger1 = P2BodyDist X >= 150  
trigger1 = random<=var(58)*5 

trigger2 = NumHelper(944) != 0 
trigger2 = random<=var(58)*50
trigger2 = enemynear,movetype != A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
value = 1011
;--------------------------------------------------------------------------
[State -1, 回り込みAI];OFF時回避
type = ChangeState
value = 30
triggerall = var(59)=1&& RoundState = 2 
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType != H
triggerall = var(58) >= 1
triggerall = NumHelper(30) = 0 
triggerall = (RoundState = 2) && (Alive)
triggerall = statetype != A 
triggerall = prevstateno != 30

trigger1 = enemynear,animtime <= -20
trigger1 = random<=var(58)*50 
trigger1 = P2BodyDist X = [30,100] 
trigger1 = enemynear,movetype = A  
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

trigger2 = random<=var(58)*3 
trigger2 = P2BodyDist X = [30,100] 
trigger2 = enemynear,movetype = A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

trigger3 = BackEdgeBodyDist < 100 
trigger3 = random<=var(58)*30
trigger3 = P2BodyDist X = [-30,100] 
trigger3 = enemynear,movetype = A  
trigger3 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;--------------------------------------------------------------------------
[State -1, バックステッポ]
type = ChangeState
value = 105
triggerall = var(59)=1&& RoundState = 2 
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType != H
triggerall = (RoundState = 2) && (Alive)
triggerall = statetype != A 
triggerall = prevstateno != 30
triggerall = BackEdgeBodyDist > 100 

trigger1 = enemynear,movetype != A 
trigger1 = Random <= var(58)*20
Trigger1 = EnemyNear,MoveType != H 
trigger1 = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [80,180]

trigger2 = Random <= var(58)*40
Trigger2 = EnemyNear,StateType = L
trigger2 = statetype != A
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
trigger2 = P2BodyDist X = [-30,100]
 
trigger3 = Random <= var(58)*2
Trigger3 = EnemyNear,MoveType != H 
trigger3 = statetype != A
trigger3 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
;------------------------------------------------------------------------------
[State -1, ピザ]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = NumHelper(3327) = 0
triggerall = statetype != A
triggerall = power != 10000
trigger1 = P2BodyDist X >= 130 
trigger1 = random<=var(58)*50 
trigger1 = enemynear,movetype != A  
trigger1 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

trigger2 = P2BodyDist X >= 80 
trigger2 = random<=var(58)*5 
trigger2 = enemynear,movetype != A  
trigger2 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41

trigger3 = NumHelper(944) != 0 
trigger3 = random<=var(58)*50
trigger3 = enemynear,movetype != A  
trigger3 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
value = 1011

trigger4 = NumHelper(3327) != 0 
trigger4 = random<=var(58)*30
trigger4 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
value = 1011
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 0
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,150]
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*15
trigger1 = inguarddist
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
triggerall = P2BodyDist X = [-20,150]
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*15
trigger1 = inguarddist
value = 4105
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
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
