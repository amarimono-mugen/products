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
triggerall = command = "x+y+a+b"  
triggerall = power >= 10000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = ctrl                        ;コントロールが可能な場合
;------------------------------------------------------------------------------

[State -1, シルチャリ　発動]
type = ChangeState
value = 3300
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
triggerall = var(9) = 11
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, キンクリ　発動]
type = ChangeState
value = 3310
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
triggerall = var(9) = 12
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, スティッキー　発動]
type = ChangeState
value = 3320
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
triggerall = var(9) = 13
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, キラークィーン　発動]
type = ChangeState
value = 3330
triggerall = var(9) = 4
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, DD　発動]
type = ChangeState
value = 3336
triggerall = var(9) = 14
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ジャンピン　発動]
type = ChangeState
value = 3340
triggerall = var(9) = 5
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ハミパ　発動]
type = ChangeState
value = 3350
triggerall = var(9) = 6
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ストフリ　発動]
type = ChangeState
value = 3360
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
[State -1, GER　発動]
type = ChangeState
value = 3380
triggerall = var(9) = 9
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, マジシャンズレッド　発動]
type = ChangeState
value = 3385
triggerall = var(9) = 17
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, act3　発動]
type = ChangeState
value = 3390
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
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;---------------------------------------------------------------------------
[State -1, ff弾]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 1
triggerall = NumHelper(1301) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 900
;---------------------------------------------------------------------------
[State -1, エメスプ]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 2
triggerall = NumHelper(912) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 910
;---------------------------------------------------------------------------
[State -1, ドヒュウ]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 3
triggerall = NumHelper(922) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 920
;---------------------------------------------------------------------------
[State -1, 灰色の塔]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 4
triggerall = NumHelper(931) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 930
;---------------------------------------------------------------------------
[State -1, ホルス神]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 5
triggerall = NumHelper(941) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "c"
value = 940
;---------------------------------------------------------------------------
[State -1, ff弾 空中]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 1
triggerall = NumHelper(1301) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1900
;---------------------------------------------------------------------------
[State -1, エメスプ 空中] 
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 2
triggerall = NumHelper(912) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1910
;---------------------------------------------------------------------------
[State -1, ドヒュウ 空中]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 3
triggerall = NumHelper(922) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1920
;---------------------------------------------------------------------------
[State -1, 灰色の塔 空中]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 4
triggerall = NumHelper(931) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1930
;---------------------------------------------------------------------------
[State -1, ホルス神 空中]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = var(19) = 5
triggerall = NumHelper(941) = 0 
trigger1 = statetype = A && ctrl
trigger1 = command = "c"
value = 1940
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
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
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" 
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
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
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time > 6
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 400 && time >= 5
;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "holdfwd"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ピザ]
type = ChangeState
triggerall = NumHelper(3327) = 0 
triggerall = command = "start" 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 420 && time >= 14
value = 1011
;------------------------------------------------------------------------------
[State -1, シルバーチャリオッツ　攻撃]
type = ChangeState
value = 300
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
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
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
triggerall = var(9) = 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, クレイジーダイヤモンド 空中 攻撃]
type = ChangeState
value = 705
triggerall = var(9) = 11
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, キングクリムゾン 空中 攻撃]
type = ChangeState
value = 710
triggerall = var(9) = 2
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, ゴールドエクスペリエンス 空中 攻撃]
type = ChangeState
value = 715
triggerall = var(9) = 12
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, スティッキーフィンガーズ  空中 攻撃]
type = ChangeState
value = 720
triggerall = var(9) = 3
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, 世界 空中 攻撃]
type = ChangeState
value = 725
triggerall = var(9) = 13
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, キラークィーン  空中 攻撃]
type = ChangeState
value = 730
triggerall = var(9) = 4
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5

;------------------------------------------------------------------------------
[State -1, ダイバーダウン 空中　攻撃]
type = ChangeState
value = 735
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
triggerall = var(9) = 5
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, ハミパ  空中 攻撃]
type = ChangeState
value = 750
triggerall = var(9) = 6
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, ストフリ  空中 攻撃]
type = ChangeState
value = 760
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
triggerall = var(9) = 9
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, マジシャンズレッド  空中 攻撃]
type = ChangeState
value = 785
triggerall = var(9) = 17
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, act3  空中 攻撃]
type = ChangeState
value = 790
triggerall = var(9) = 10
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
;------------------------------------------------------------------------------
[State -1, 射撃disc装備]
type = ChangeState
value = 10010
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
triggerall = NumHelper(3327) = 0 
triggerall = power >= 100
triggerall = command = "holdfwd"
triggerall = var(9) = 8
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 420 && time >= 14

[State -1, 攻撃disc装備]
type = ChangeState
value = 10000
triggerall = NumHelper(3327) = 0 
triggerall = var(9) != 8
triggerall = command != "holddown"
triggerall = power >= 500
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 420 && time >= 14
ignorehitpause = 1

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
