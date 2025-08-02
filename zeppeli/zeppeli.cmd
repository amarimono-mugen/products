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
z = x      ;Ｚボタン　　　　　　　　　〃
a = z      ;Ａボタン　　　　　　　　　〃
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
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[command]
name = "fwd"
command = F
time = 1
[command]
name = "back"
command = B
time = 1
[command]
name= "up"
command  =U
time = 1
[command]
name = "start"
command = s
time = 1
[command]
name = "down"
command = D
time = 1
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI51"
command = z,z,z,a,a,z,z,z,z,a,z,z,z,z,a,a,z,z,z
time = 0


;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "HHAF"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "HHAFyb"
command = ~D, DF, F, y+b
time = 20

[Command]
name = "HHAFxb"
command = ~D, DF, F, x+b
time = 20

[Command]
name = "HHAB"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "HHAByb"
command = ~D, DB, B, y+b
time = 20

[Command]
name = "HHABxb"
command = ~D, DB, B, x+b
time = 20

[Command]
name = "GHA"
command = ~D, DF, F, x+y+b
time = 20

[Command]
name = "GHAE"
command = ~D, DF, F, a
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "ashura-001"
command = ~D, DB, B, z

[Command]
name = "ashura-002"
command = ~D, DF, F, z

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c

[Command]
name = "upper_xy"
command = ~D, DF, F, b

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "421_x"
command = ~B, D, DB, x

[Command]
name = "421_y"
command = ~B, D, DB, y

[Command]
name = "421_b"
command = ~B, D, DB, b

[Command]
name = "421_c"
command = ~B, D, DB, c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "x+y+z"
command = x+y+z

[Command]
name = "Sjump"
command = ~2U
time = 99

[Command]
name = "Ljump"
command = $D,$U
time = 15


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
time = 1

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
;---------------------------------------------------------------------------
;師
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3777
triggerall = !var(59)
triggerall = command = "GHA" || command = "GHAE"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = stateno = 200 && time > 3 && movecontact
trigger3 = stateno = 210 && time > 4 && movecontact
trigger4 = stateno = 400 && time > 4 && movecontact
trigger5 = stateno = 430 && time > 5 && movecontact
trigger6 = stateno = 240 && time > 7 && movecontact
trigger7 = stateno = 440 && time > 7 && movecontact
trigger8 = stateno = 230 && time > 16 && movecontact
;------------------------------------------------------------------------------

[State -1, るおおおおお];ゲージレベル１
type = ChangeState
value = 3050
triggerall = !var(59)
triggerall = command = "HHAB" || command = "HHAByb" || command = "HHABxb"
triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = ctrl                        ;コントロールが可能な場合
trigger2 = stateno = 200 && time > 3 && movecontact
trigger3 = stateno = 210 && time > 4 && movecontact
trigger4 = stateno = 400 && time > 4 && movecontact
trigger5 = stateno = 430 && time > 5 && movecontact
trigger6 = stateno = 240 && time > 7 && movecontact
trigger7 = stateno = 440 && time > 7 && movecontact
trigger8 = stateno = 230 && time > 16 && movecontact
trigger9 = stateno = 1000 && time > 19
trigger10 = stateno = 1010 && time > 26
trigger11 = stateno = 1020 && time > 25

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

[State -1, 波紋カッターSP];ゲージレベル１
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "HHAF" || command = "HHAFyb" || command = "HHAFxb"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time > 3 && movecontact
trigger3 = stateno = 210 && time > 4 && movecontact
trigger4 = stateno = 400 && time > 4 && movecontact
trigger5 = stateno = 430 && time > 5 && movecontact
trigger6 = stateno = 240 && time > 7 && movecontact
trigger7 = stateno = 440 && time > 7 && movecontact
trigger8 = stateno = 230 && time > 16 && movecontact
trigger9 = stateno = 1000 && time > 19
trigger10 = stateno = 1010 && time > 26
trigger11 = stateno = 1020 && time > 25


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

[State -1, 変数の例１];必殺技の発生条件リセット
type = null;VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = null;VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1


[State -1, トルネーディオーバードライブL]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = command = "421_x"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, トルネーディオーバードライブM]
type = ChangeState
value = 1310
triggerall = !var(59)
triggerall = command = "421_y"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, トルネーディオーバードライブH]
type = ChangeState
value = 1320
triggerall = !var(59)
triggerall = command = "421_b"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, トルネーディオーバードライブ 空中版]
type = ChangeState
value = 1330
triggerall = !var(59)
triggerall = command = "421_x" || command = "421_y" || command = "421_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 640
trigger2 = movecontact

[State -1, トルネーディオーバードライブEX]
type = ChangeState
value = 1370
triggerall = !var(59)
triggerall = power >= 250
triggerall = command = "421_c"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, 生命磁気]
type = ChangeState
value = 1700
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = power >= 200
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -1, 仙道ウェーブキックL]
type = ChangeState
value = 1050
triggerall = !var(59)
triggerall = command = "upper_x"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, 仙道ウェーブキックM]
type = ChangeState
value = 1060
triggerall = !var(59)
triggerall = command = "upper_y"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, 仙道ウェーブキックH]
type = ChangeState
value = 1070
triggerall = !var(59)
triggerall = command = "upper_b"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, 仙道ウェーブキックEX]
type = ChangeState
value = 1080
triggerall = !var(59)
triggerall = power >= 250
triggerall = command = "upper_c"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

[State -1, ズームパンチL]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "QCF_x"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, ズームパンチM]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "QCF_y"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, ズームパンチH]
type = ChangeState
value = 1120
triggerall = !var(59)
triggerall = command = "upper_xy"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, ズームパンチEX]
type = ChangeState
value = 1030
triggerall = !var(59)
triggerall = power >= 250
triggerall = command = "QCF_c"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

;------------------------------------------------------------------------------

[State -1, 仙道波紋L]
type = ChangeState
value = 2500
triggerall = !var(59)
triggerall = command = "QCB_x" 
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, 仙道波紋M]
type = ChangeState
value = 2505
triggerall = !var(59)
triggerall = command = "QCB_y"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, 仙道波紋H]
type = ChangeState
value = 1007
triggerall = !var(59)
triggerall = command = "QCB_xy" 
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

[State -1, 仙道波紋EX]
type = ChangeState
value = 2560
triggerall = !var(59)
triggerall = command = "QCB_c" 
triggerall = power >= 250
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16

;------------------------------------------------------------------------------




;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
[State -1, 投げ]
type = ChangeState
value = 801
triggerall = !var(59)
triggerall = command = "b"
triggerall = (command = "holdfwd" || command = "holdback") && command = "b"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;------------------------------------------------------------------------------
[State -1, 軽やかな身のこなし front]
type = ChangeState
triggerall = !var(59)
triggerall = command = "ashura-001"
triggerall = power >= 500
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16
value = 1011
;------------------------------------------------------------------------------
[State -1, 軽やかな身のこなし back]
type = ChangeState
triggerall = !var(59)
triggerall = command = "ashura-002"
triggerall = power >= 500
trigger1 = (StateType != A) && (Ctrl)
trigger2 = stateno = 200 && time > 3
trigger3 = stateno = 210 && time > 4
trigger4 = stateno = 400 && time > 4
trigger5 = stateno = 430 && time > 5
trigger6 = stateno = 240 && time > 7
trigger7 = stateno = 440 && time > 7
trigger8 = stateno = 230 && time > 16
value = 1012

;------------------------------------------------------------------------------

[State -1, パワー溜め]
type = ChangeState
triggerall = !var(59)
triggerall = command = "c"
triggerall = power < 3000 ;ゲージが満タンの時は出せない
trigger1 = statetype != A && ctrl
value = 700

;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
triggerall = !var(59)
triggerall = (RoundState = 2) && (Alive)
trigger1 = statetype != A && ctrl
trigger1 = command = "z"
value = 702

;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = !var(59)
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
triggerall = !var(59)
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4005
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = !var(59)
triggerall = numhelper(4010) = 0
trigger1 = command = "upper_xy" || command = "QCF_x" || command = "QCF_y"
triggerall = var(2) = 0
triggerall = statetype != A
trigger1 = (stateno = [150,153])

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 5L]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 6 && movecontact
trigger3 = stateno = 400 && time > 4 && movecontact

[State -1, 6M]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 3 && movecontact
trigger3 = stateno = 210 && time > 4 && movecontact
trigger4 = stateno = 400 && time > 4 && movecontact
trigger5 = stateno = 430 && time > 5 && movecontact
trigger6 = stateno = 240 && time > 7 && movecontact
trigger7 = stateno = 440 && time > 7 && movecontact

[State -1, 5M]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 3 && movecontact
trigger3 = stateno = 400 && time > 4 && movecontact

[State -1, 5H]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 3 && movecontact
trigger3 = stateno = 210 && time > 4 && movecontact
trigger4 = stateno = 400 && time > 4 && movecontact
trigger5 = stateno = 430 && time > 5 && movecontact

[State -1, 傘]
type = ChangeState
value = 807
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5 && movecontact
trigger3 = (stateno = 230) && time > 6 && movecontact

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 3 && movecontact
trigger3 = stateno = 400 && time > 4 && movecontact

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 3 && movecontact
trigger3 = stateno = 400 && time > 4 && movecontact

[State -1, しゃがみ強キック]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 3 && movecontact
trigger3 = stateno = 210 && time > 4 && movecontact
trigger4 = stateno = 400 && time > 4 && movecontact
trigger5 = stateno = 430 && time > 5 && movecontact

;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630
;trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい


[State -1, ジャンプ強キック]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630
;trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

;------------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -3, AI起動]
type = VarSet
triggerall =!ishelper
triggerall = stateno!=0&&RoundState = 2||ctrl&&roundstate!=3
trigger1 = Command = "AI0" || Command = "AI1" || Command = "AI2" || Command = "AI3"
trigger2 = Command = "AI4" || Command = "AI5" || Command = "AI6" || Command = "AI7"
trigger3 = Command = "AI8" || Command = "AI9" || Command = "AI10"|| Command = "AI11"
trigger4 = Command = "AI12"|| Command = "AI13"|| Command = "AI14"|| Command = "AI15"
trigger5 = Command = "AI16"|| Command = "AI17"|| Command = "AI18"|| Command = "AI19"
trigger6 = Command = "AI20"|| Command = "AI21"|| Command = "AI22"|| Command = "AI23"
trigger7 = Command = "AI24"|| Command = "AI25"|| Command = "AI26"|| Command = "AI27"
trigger8 = Command = "AI28"|| Command = "AI29"|| Command = "AI30"|| Command = "AI31"
trigger9 = Command = "AI32"|| Command = "AI33"|| Command = "AI34"|| Command = "AI35"
trigger10= Command = "AI36"|| Command = "AI37"|| Command = "AI38"|| Command = "AI39"
trigger11= Command = "AI40"|| Command = "AI41"|| Command = "AI42"|| Command = "AI43"
trigger12= Command = "AI44"|| Command = "AI45"|| Command = "AI46"|| Command = "AI47"
trigger13= Command = "AI48"|| Command = "AI49"|| Command = "AI50"|| Command = "AI51"
trigger14= var(59)>=1
trigger15= numhelper(35)
trigger15= helper(35),var(59)>=1
var(59)  = 1
[State 100000]
type=varset
triggerall=var(59)
trigger1 = stateno !=[120,155]
trigger1 = roundstate!=2
var(59)=-1

[State -3,常駐ヘルパー]
type = helper
trigger1 = roundstate = 2
trigger1 = !NumHelper(35)
helpertype=normal
name="hourai"
stateno=35
ID=35
pos=0,0
keyctrl=1
pausemovetime=99999999
supermovetime=99999999
persistent = 0
;---------------------------------------------------------------------------


;ガード
[State 100000]
type=varset
triggerall=var(59)=1
Triggerall=NumHelper(35)
trigger1=inguarddist
trigger2=p2bodydist X=[-80,60]
trigger2=p2movetype=A
trigger2=p2stateno>=200
trigger2=p2statetype=A
trigger3=p2stateno=var(45)||p2stateno=var(46)
trigger3=p2stateno=[200,4999]
trigger4=Helper(35),var(49)&&Helper(35),var(56)>=Helper(35),var(49)
trigger5=Helper(35),var(50)
trigger6=Helper(35),var(51)
var(59)=2
ignorehitpause = 1
[State -3,crouch]
type = VarSet
triggerall = var(59) = [2,4]
triggerall = statetype!=A
trigger1 = p2statetype=C
trigger2 = p2statetype=S
trigger2 = enemynear,time < 15
var(59) = 4
ignorehitpause = 1
[State -3,stand]
type = VarSet
triggerall = var(59)
triggerall = var(59) = [2,4]
triggerall = statetype!=A
trigger1 = p2statetype =A
trigger2 = p2statetype=S
trigger2 = stateno=[120,155]
trigger2 = enemynear,time >= 15;発生の遅い攻撃に対して切り替える
trigger2 = enemynear,moveguarded=0
trigger2 = enemynear,movetype=A
var(59) = 3
ignorehitpause = 1


[State 100000]
type=varset
triggerall=var(59)=[3,4]
Triggerall = NumHelper(35)
triggerall = p2stateno!=0
trigger1 = p2stateno=Helper(35),var(41)
trigger2 = p2stateno=Helper(35),var(42)
trigger3 = p2stateno=Helper(35),var(43)
trigger4 = p2stateno=Helper(35),var(44)
var(59)=ifelse(var(40)=3,4,3)


[State -3,COUNTER]
type = VarSet
triggerall = var(59)=[2,4]
Triggerall = NumHelper(35)
triggerall = statetype!=A
triggerall=helper(35),var(50)=0
triggerall=helper(35),var(51)=0
trigger1 = EnemyNear,HitDefAttr = SCA, NT, ST, HT
trigger2 = p2stateno=Helper(35),var(47)||p2stateno=Helper(35),var(48)
var(59) = 9
ignorehitpause = 1


;p2nameでの対応
[State -3,crouch]
type = VarSet
triggerall = var(59)=[2,4]
trigger1=enemynear,authorname = "mikage_th105"&&p2name="Komachi Onoduka"
trigger1=(p2stateno = [220,221])||p2stateno =701||p2stateno=1100
trigger2=enemynear,authorname = "mikage_th105"&&p2name="Remilia Scarlet"
trigger2=p2stateno=204||p2stateno=401
trigger3=enemynear,authorname = "mikage_th105"&&p2name="Youmu Konpaku"
trigger3=p2stateno=202||p2stateno=702||(p2stateno=[860,861])
trigger4=enemynear,authorname = "mikage_th105"&&p2name="Aya Syameimaru"
trigger4=(p2stateno=[401,403])
trigger5=enemynear,authorname = "mikage_th105"&&p2name="Meiling Hong"
trigger5=p2stateno=701
trigger6=enemynear,authorname = "mikage_th105"&&p2name="Alice Margatroid"
trigger6=p2stateno=702
trigger7=p2name ="Mashiro Mito"
trigger7=p2stateno = 240
trigger8=enemynear,authorname = "mikage_th105"&&p2name="Reisen Udongein Inaba"
trigger8=p2stateno=701||p2stateno=402
trigger9 = p2name = "Rugal.B"
trigger9 = p2stateno = 230||p2stateno = 3100&&time >= 60
var(59) = 4
ignorehitpause = 1

[State -3,stand]
type = VarSet
triggerall = var(59)=[2,4]
trigger1=enemynear,authorname = "mikage_th105"&&p2name="Komachi Onoduka"
trigger1= (p2stateno =[401,402])||(p2stateno = [201,204])||p2stateno=1101||p2stateno=1400||p2stateno=1450||p2stateno=700||p2stateno=702
trigger2=enemynear,authorname = "mikage_th105"&&p2name="Remilia Scarlet"
trigger2=(p2stateno=[201,203])||(p2stateno=[220,221])
trigger3=enemynear,authorname = "mikage_th105"&&p2name="Youmu Konpaku"
trigger3=p2stateno=201||(p2stateno=[203,204])||(p2stateno=[220,221])||(p2stateno=[700,701])||p2stateno=703||p2stateno=1150
trigger4=enemynear,authorname = "mikage_th105"&&p2name="Aya Syameimaru"
trigger4=(p2stateno=[201,203])||(p2stateno=[707,708])||(p2stateno=[700,701])
trigger5=enemynear,authorname = "mikage_th105"&&p2name="Meiling Hong"
trigger5=(p2stateno=[201,205])||(p2stateno=[220,221])||p2stateno=700||(p2stateno=[810,811])||p2stateno=1200||p2stateno=1350
trigger6=enemynear,authorname = "mikage_th105"&&p2name="Alice Margatroid"
trigger6=(p2stateno=[201,206])||p2stateno=401||p2stateno=250||(p2stateno=[700,701])
trigger7 = p2name ="Mashiro Mito"
trigger7 = p2stateno = 230
trigger8=enemynear,authorname = "mikage_th105"&&p2name="Reisen Udongein Inaba"
trigger8=(p2stateno=[201,204])||(p2stateno=[220,221])||p2stateno=700
trigger9 = p2name = "Rugal.B"
trigger9 = p2stateno = 2100||p2stateno = 3100&&time < 60
var(59) = 3
ignorehitpause = 1
[State -3,stand]
type = VarSet
triggerall = var(59)=[2,4]
trigger1 = p2name ="Hikaru Shidou"
trigger1 = p2stateno = 1102||p2stateno=1112
trigger2 = p2Name = "Kotiya_Sanae"
trigger2 = p2stateno=1155||p2stateno=410||p2stateno=[210,211]
trigger3=enemynear,authorname = "mikage_th105"&&p2name="Marisa Kirisame"
trigger3=(p2stateno=[201,204])||(p2stateno=[220,221])
trigger4 = p2name = "Rock"
trigger4 = p2stateno = 320
trigger5 = p2name = "KUSANAGI"
trigger5 = p2stateno = [310,315]
trigger6 = p2name="Syuren_Kano" 
trigger6 = p2stateno=400
trigger7 = p2name = "Shen"
trigger7 = p2stateno = 1100||p2stateno = 310
trigger8 = p2name = "Yagami-AKOF"
trigger8 = p2stateno = 1410||stateno=1460||p2stateno = 310
var(59) = 3
ignorehitpause = 1


;ガードしないフラグ（6以降はあくまでおまけのつもり）
;5 設置等で固まる不具合の対処枠
;6 バクステで対処可能
;7 バクステで対処できない
;8 ガード硬直中や終わり1Fを投げる問題児対策（ガーキャンぐらいしか無理だが）
[State -3,COUNTER]
type = VarSet
triggerall = var(50)=[2,4]
trigger1 = EnemyNear,HitDefAttr = SCA, NT, ST, HT
trigger2 = p2name = "cvsmika" &&p2stateno = 1200
trigger3 = p2name="Yagami-AKOF"
trigger3 = p2stateno=3000||(p2stateno=[2100,2150])
var(50) = 6
ignorehitpause = 1


[State -3,COUNTER]
type = VarSet
triggerall = var(59)=[2,4]
trigger1 = p2name = "cvsg_rugal"&&p2stateno = 1700
trigger2 = p2Name = "Misaki Kawana"
trigger2 = p2stateno = 6200 ||p2stateno = 6210 ||p2stateno = 6220
trugger3 = p2name = "saya"&&p2stateno = 2200
trigger4=p2name="RIMLE"
trigger4=p2stateno=7002
var(59) = 7+((stateno=[120,155])&&!ctrl)
ignorehitpause = 1

;ガード解除
[State 100000]
type=varset
triggerall=numhelper(35)
triggerall=var(59)=[2,4]
triggerall=helper(35),var(50)=0
triggerall=helper(35),var(51)=0
triggerall=helper(35),var(49)<=0||helper(35),var(49)&&(helper(35),var(56)<helper(35),var(49))
trigger1=!inguarddist
trigger1=p2dist X>0
trigger1=p2statetype!=A
trigger2=p2movetype!=A&&p2dist X !=[-100,60]
trigger2=p2statetype=A
var(59)=1
ignorehitpause = 1

;解除阻止
[State 100000]
type=varset
triggerall=var(59)
trigger1=enemynear,authorname = "mikage_th105"&&p2name="Meiling Hong"
trigger1=p2stateno=701
trigger2=p2name="RIMLE" 
trigger2=p2stateno=60010||p2stateno=7000
trigger3 = p2name = "Kyle Dunamis"
trigger3 = p2stateno=70010||p2stateno=[7000,7002]
trigger4 = p2name = "CLESS ALVEIN"
trigger4 = enemynear,numhelper(8028)
var(59)=4
ignorehitpause = 1
;解除阻止
[State 100000]
type=varset
triggerall=var(59)
trigger1 = p2name="Syuren_Kano" 
trigger1 = enemynear,numhelper(8013)
trigger2 = enemynear,authorname = "mikage_th105"&&p2name="Komachi Onoduka"
trigger2 = p2stateno=204||p2stateno=401
trigger2 = p2bodydist X < 170
var(59)=3
ignorehitpause = 1

;強制解除
[State 100000]
type=varset
triggerall=var(59)
trigger1=enemynear,authorname="Warusaki3"
trigger1=p2stateno=850
trigger2=enemynear,authorname = "mikage_th105"
trigger2=p2stateno=[40,119]
var(59)=1
ignorehitpause = 1

;--------------------------------------------------------------------------

;師
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3777
triggerall = var(59)
triggerall = statetype != A
triggerall = power >= 2000
triggerall = ctrl
trigger1 = p2statetype=A&&(p2bodydist X-(enemynear,vel X* 7)) = [0, 30]
Trigger1 =(p2bodydist Y+(enemyNear,vel Y* 7 +enemyNear,gethitvar(yaccel)* 28)*(P2StateType=A&&EnemyNear,Vel Y!=0))=[-90, -2]
trigger1 = p2movetype=A


[State -1, 立ち強キック]
type = ChangeState
value = 807
triggerall = var(59)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2statetype=A&&(p2bodydist X-(enemynear,vel X* 10)) = [-50, 100]
Trigger1 =(p2bodydist Y+(enemyNear,vel Y* 10 +enemyNear,gethitvar(yaccel)* 55)*(P2StateType=A&&EnemyNear,Vel Y!=0))=[-95, -70]
trigger1 = p2movetype!=A
trigger1 = !inguarddist
trigger1 = random < 140



[State -1, 投げ]
type = ChangeState
value = 801
triggerall = var(59)
triggerall = random < 360
triggerall = numhelper(35)
triggerall = helper(35),var(56) >= 0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 5
trigger1 = p2statetype!=A&&p2statetype!=L
trigger1 = random < 500




[State -1, ジャンプ強キック]
type = ChangeState
value = 640
triggerall = var(59)
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 105||vel Y > 2&&pos Y > -60||p2statetype=A&&P2bodydist Y = [-50,50]
trigger1 = p2bodydist X < 110



[State -1, スマッシュカンフーアッパー];ゲージレベル１
type = ChangeState
value = 3050
triggerall = var(59)
triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = stateno = 240&&movehit
trigger1 = p2bodydist X < 45

[State -1, 三烈カンフー突き手];ゲージレベル１
type = ChangeState
value = 3000
triggerall = var(59)
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = stateno = 240&&movehit
trigger2 = enemynear,animtime < -24&&p2movetype=A&&!inguarddist
trigger2 = p2bodydist X > 160
trigger2 = random < 100
trigger2 = ctrl

[State -1, 阿修羅閃空]
type = ChangeState
triggerall = var(59)
trigger1 = p2bodydist X > 200
trigger1 = p2statetype!=L&&p2movetype!=H&&(enemynear,ctrl=0&&random<50||random>997)
trigger2 = backedgedist < 50&&random<70&&inguarddist
trigger3 =frontedgedist < 80&&p2movetype=A&&enemynear,animtime< -16
triggerall = (StateType != A) && (Ctrl)
value = 1012



[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = p2bodydist X < 70
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = enemynear,animtime=-5&&enemynear,ctrl=0
trigger1 = p2statetype!=A&&P2statetype!=L

;---------------------------------------------------------------------------

;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)
triggerall = numhelper(4010) = 0
triggerall = random<40+50*(stateno=151||stateno=153)
triggerall = var(2) = 0
triggerall = statetype != A
triggerall = (stateno = [150,153])
triggerall = p2bodydist X < 170
trigger1 = enemynear,animtime<=-16
trigger1 = p2statetype!=A
Trigger2 =(p2bodydist Y+(enemyNear,vel Y* 16 +enemyNear,gethitvar(yaccel)* 136)*(P2StateType=A&&EnemyNear,Vel Y!=0))=[-65,-10]


;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)
trigger1 = random > 975
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = p2bodydist x < 90
ignorehitpause = 1
value = 4000

;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)
trigger1 = random > 975
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = p2bodydist x < 90
value = 4005

;---------------------------------------------------------------------------
[State -1,]
type = ChangeState
value = 120
triggerall = roundstate = 2
triggerall = var(59) = [2,4]
trigger1 = ctrl
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59)
trigger1 = statetype != A
trigger1 = backedgedist > 50
trigger1 = var(59)=6
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1, ズームパンチ強]
type = ChangeState
value = 1120
triggerall = var(59)
trigger1 = stateno = 240&&movehit

[State -1, 立ち強キック]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = stateno = 400&&movehit&&time>=5||prevstateno=400&&p2stateno = [5000,5100]
trigger1 = statetype != A
ctrl=0

[State -1, 立ち強キック]
type = ChangeState
value = 240
triggerall = var(59)
triggerall = stateno = 100&&ctrl=0
trigger1 = statetype != A
trigger1 = time >= 6


[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = p2bodydist X < 75
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2movetype!=H&&random<750||p2stateno = [5000,5100]
trigger1 = p2statetype!=A&&P2statetype!=L

[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = p2bodydist X < 90
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2movetype!=H&&random < 200||p2stateno = [5000,5100]
trigger1 = p2statetype!=A&&P2statetype!=L




[State -1, パワー溜め];ちょっとこ丸が追加した技
type = ChangeState
value = 700
triggerall = var(59)=1
triggerall = power < 10000 ;ゲージが満タンの時は出せない
triggerall = statetype != A && ctrl
trigger1 = p2bodydist X > 150
trigger1 = !inguarddist
trigger1 = power <= 2000
trigger2 = p2statetype=L||p2statetype=A&&p2movetype=H




[State -1, 弱カンフーブロー]
type = ChangeState
value = 2505
triggerall = var(59)
triggerall = p2bodydist X = [80,180]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2movetype!=H&&random < 20
trigger1 = p2statetype!=A&&P2statetype!=L
trigger2 = stateno = 210
trigger2 = movehit


[State -1, ズームパンチ強]
type = ChangeState
value = 1120
triggerall = var(59)
triggerall = p2bodydist X > 160
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2movetype!=H&&random < 10
trigger1 = p2statetype!=A&&P2statetype!=L



[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)
triggerall = random > 990
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X > 200


[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)
trigger1 = p2bodydist x < 55
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 950
trigger1 = p2statetype!=A&&P2statetype!=L

[State -1]
type = ChangeState
value = 100
triggerall = var(59)
trigger1 = p2bodydist x > 170
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 900
trigger1 = stateno !=100
trigger1 = p2statetype!=A&&P2statetype!=L


[State -1,]
type = ChangeState
value = 21
triggerall = !ishelper
triggerall = statetype!=A
triggerall = roundstate = 2
triggerall = var(59)
trigger1 = p2bodydist X > 140 || p2movetype=H
trigger1 = stateno=22&&time>10||stateno!=[20,22]
trigger1 = random < 300
trigger1 = ctrl
trigger1 = p2statetype!=L
trigger1 = stateno  !=100

[State -1,]
type = ChangeState
value = 22
triggerall = !ishelper
triggerall = statetype!=A
triggerall = roundstate = 2
triggerall = var(59)
trigger1 = p2bodydist X < 160&&p2movetype!=H
trigger1 = ctrl
trigger1 = stateno=21&&time>10||stateno!=[20,22]
trigger1 = random > 800
trigger1 = stateno  !=100



;------------------------------------------------------------------------------
[State -1,]
type = ChangeState
value = 0
triggerall = roundstate = 2
triggerall = var(59)
trigger1 = stateno = 40
trigger1 = p2bodydist X > 150|| p2statetype=L||p2statetype=A
ctrl = 1
[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = var(59)
triggerall = stateno = 5050
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
trigger1 = CanRecover
value = 5200 ;HITFALL_RECOVER
[State 5050, 5]; Recover in mid air
type = selfstate
triggerall = var(59)
triggerall = stateno = 5050
triggerall = vel y > -1
triggerall = alive
trigger1 = CanRecover
value = 5210
[State -1,]
type = ChangeState
value = prevstateno
triggerall = prevstateno !=[150,155]
triggerall = roundstate = 2
triggerall = var(59)
trigger1 = stateno= 10
trigger1 = prevstateno = 100||prevstateno = [20,23]
ctrl = 1
;---------------------------------------------------------------------------
;AI待機ステート（立ち、しゃがみ、前進）
[Statedef 9]
type = S
physics = S
sprpriority = 0
ctrl=0
[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0
[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0
[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0
[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

[Statedef 15]
type    = C
physics = C
anim = 11
sprpriority = 0
ctrl = 0
[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11
[Statedef 23]
type    = S
physics = S
sprpriority = 0
ctrl=0
[State 20, 1]
type = VelSet
trigger1 = 1
x = const(velocity.walk.fwd.x)
[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20
[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

;---------------------------------------------------------------------------
;AI用基本ステート（歩き、ジャンプ、ガード）
[Statedef 21]
type    = S
physics = S
sprpriority = 0
ctrl=1
[State 20, 1]
type = VelSet
trigger1 = 1
x = const(velocity.walk.fwd.x)
[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21
[Statedef 22]
type    = S
physics = S
sprpriority = 0
ctrl=1
[State 20, 2]
type = VelSet
trigger1 = 1
x = const(velocity.walk.back.x)
[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20
[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21


[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2
[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A
[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
trigger2 = var(59) = 0
trigger2 = statetype = S && command = "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 4
statetype = C
physics = C
[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
trigger2 = var(59) = 0
trigger2 = statetype = C && command != "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 3
statetype = S
physics = S
[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2
[State 120, Stop Guarding]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = command != "holdback" || !inguarddist
trigger2 = var(59)
trigger2 = var(59) !=[2,4]
value = 140
[Statedef 130]
type    = S
physics = S
[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130
[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
trigger1 = var(59) = 0
trigger2 = var(59) = 4
value = 131
[State 130, Stop Guarding]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = command != "holdback" || !inguarddist
trigger2 = var(59)
trigger2 = var(59) !=[2,4]
value = 140
[Statedef 131]
type    = C
physics = C
[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131
[State 131, Lo to Hi]
type = ChangeState
trigger1 = command != "holddown"
trigger1 = var(59) = 0
trigger2 = var(59) = 3
value = 130
[State 131, Stop Guarding]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = command != "holdback" || !inguarddist
trigger2 = var(59)
trigger2 = var(59) !=[2,4]
value = 140
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1
[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2
[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A
[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
trigger2 = var(59) = 0
trigger2 = statetype = S && command = "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 4
statetype = C
physics = C
[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
trigger2 = var(59) = 0
trigger2 = statetype = C && command != "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 3
statetype = S
physics = S
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0
[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150
[State 152, 3]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")
[State 152, 3]
type = ChangeState
trigger1 = var(59)
trigger1 = HitShakeOver
value = 151+(statetype=C)*2
[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
trigger2 = var(59) = 0
trigger2 = statetype = S && command = "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 4
statetype = C
physics = C
[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
trigger2 = var(59) = 0
trigger2 = statetype = C && command != "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 3
statetype = S
physics = S
[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150
[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1
[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
trigger2 = var(59) = 0
trigger2 = statetype = S && command = "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 4
statetype = C
physics = C
[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
trigger2 = var(59) = 0
trigger2 = statetype = C && command != "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 3
statetype = S
physics = S
[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0
[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151
[State 152, 3]
type = ChangeState
trigger1 = var(59) = 0
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")
[State 152, 3]
type = ChangeState
trigger1 = var(59)
trigger1 = HitShakeOver
value = 151+(statetype=C)*2
[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
trigger2 = var(59) = 0
trigger2 = statetype = S && command = "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 4
statetype = C
physics = C
[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
trigger2 = var(59) = 0
trigger2 = statetype = C && command != "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 3
statetype = S
physics = S
[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151
[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0
[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1
[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
trigger2 = var(59) = 0
trigger2 = statetype = S && command = "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 4
statetype = C
physics = C
[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
trigger2 = var(59) = 0
trigger2 = statetype = C && command != "holddown"
trigger3 = statetype !=A
trigger3 = var(59) = 3
statetype = S
physics = S
[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1




;---------------------------------------------------------------------------
[StateDef 35]
physics=N
ctrl=0

;---------------------------------------------------------------------------

[State 100000]
type=varset
trigger1 = root,name ="Mashiro Mito"
trigger1 = p2movetype!=H
var(0)=0
[State 100000]
type=varset
trigger1 = root,name ="Mashiro Mito"
trigger1 = p2movetype!=H||root,stateno=[100,101]
var(1)=0

[State 100000]
type=varset
triggerall = var(0) = 1
trigger1 = root,name ="Mashiro Mito"
trigger1 = root,time=1&&root,stateno=210
trigger1 = p2movetype=H&&p2statetype=A
var(0)=2
[State 100000]
type=varset
triggerall = var(0)=0
triggerall = root,name ="Mashiro Mito"
trigger1 = root,movehit&&root,stateno=440
triggerall = p2movetype=H
trigger2 = root,movehit&&root,stateno=210
trigger3 = root,movehit&&root,stateno=230
var(0)=1
ignorehitpause=1
[State 100000]
type=varset
triggerall = var(1)=0
triggerall = root,name ="Mashiro Mito"
trigger1 = root,movehit&&root,stateno=420
triggerall = p2movetype=H
var(1)=1
ignorehitpause=1

[State 100000]
type=varset
triggerall = var(1)< 3
triggerall = root,name ="Mashiro Mito"
trigger1 = root,stateno=2000
triggerall = p2movetype=H
var(1)=2
ignorehitpause=1
[State 100000]
type=varset
triggerall = root,name ="Mashiro Mito"
trigger1 = root,stateno=1100
triggerall = p2movetype=H
var(1)=3
[State 100000]
type=varset
triggerall = var(1) = 3
triggerall = root,name ="Mashiro Mito"
trigger1 = root,stateno=220
triggerall = p2movetype=H
var(1)=4
ignorehitpause=1
[State 100000]
type=varset
triggerall = root,name ="Mashiro Mito"
trigger1 = root,stateno=4950
triggerall = p2movetype=H
var(2)=1
ignorehitpause=1
[State 100000]
type=varset
triggerall = root,name ="Mashiro Mito"
trigger1 = root,stateno=15
triggerall = p2movetype=H
var(2)=2
ignorehitpause=1
[State 100000]
type=varset
triggerall = root,name ="Mashiro Mito"
trigger1 = root,stateno=220
triggerall = p2movetype=H
var(2)=3
ignorehitpause=1



[State 100000]
type=varset
trigger1 = root,name ="Mashiro Mito"
trigger1 = p2movetype!=H||root,stateno=[100,101]
var(2)=0



[State 100000]
type=varset
trigger1=root,name="KUSANAGI"
trigger1=root,stateno=1250
trigger1=root,prevstateno=400
var(0) = 2
[State 100000]
type=varset
trigger1=root,name="KUSANAGI"
trigger1=root,stateno=1255
trigger1=root,movehit=1
trigger1=var(0)=0
var(0) = 1
[State 100000]
type=varset
triggerall=var(0)=1
trigger1=root,name="KUSANAGI"
trigger1=enemynear,movetype!=H||root,movetype=A&&root,stateno!=1255
var(0) = 0

;中距離けん制抑止
[State 100000]
type=varset
trigger1=!var(1)
trigger1=root,name="KUSANAGI"
trigger1=root,stateno=230&&root,time=1
var(1) = ceil(random/10)
[State 100000]
type=varadd
trigger1=root,name="KUSANAGI"
trigger1=root,ctrl
trigger1=var(1)
var(1) = -1
[State 100000]
type=varadd
trigger1=root,name="KUSANAGI"
trigger1=movereversed
var(1) = 200
ignorehitpause=1
[State 100000]
type=varset
trigger1=root,name="KUSANAGI"
trigger1=root,stateno=230&&root,movehit
trigger1=enemynear,movetype=H
var(1) = 0

[State 100000]
type=varset
trigger1=!var(2)
trigger1=root,name="KUSANAGI"
trigger1=root,stateno=1250&&root,time=1
var(2) = ceil(random/10)
[State 100000]
type=varadd
trigger1=root,name="KUSANAGI"
trigger1=root,ctrl
trigger1=var(2)
var(2) = -1
[State 100000]
type=varset
trigger1=root,name="KUSANAGI"
trigger1=root,stateno=1121
trigger1=p2movetype=H
var(3) = 1
[State 100000]
type=varset
trigger1=root,name="KUSANAGI"
trigger1=enemynear,movetype!=H
var(3) = 0

;---------------------------------------------------------------------------
;214Pの初段が地上ヒットか空中ヒットか
[State 100000]
type=varset
trigger1= root,name="shen"
trigger1=!var(11)
trigger1=root,stateno=1100
trigger1=enemynear,statetype!=A
trigger1=(enemynear,stateno!=[120,155])&&enemynear,movetype=H
trigger1=root,movehit
var(11) = 1
[State 100000]
type=varset
trigger1= root,name="shen"
trigger1=!var(11)
trigger1=root,stateno=1100
trigger1=enemynear,statetype=A
trigger1=(enemynear,stateno!=[120,155])&&enemynear,movetype=H
trigger1=root,movehit
var(11) = 2
[State 100000]
type=varset
trigger1= root,name="shen"
trigger1=!var(11)
trigger1=root,stateno=2000 || root,stateno = 2510
trigger1=enemynear,statetype=A
trigger1=(enemynear,stateno!=[120,155])&&enemynear,movetype=H
trigger1=root,movehit
var(11) = 3
[State 100000]
type=null;varset
trigger1= root,name="shen"
trigger1=var(11)=1
trigger1=root,stateno = 2510
trigger1=enemynear,statetype=A
trigger1=(enemynear,stateno!=[120,155])&&enemynear,movetype=H
trigger1=root,movehit
var(11) = 4
[State 100000]
type=varset
triggerall=var(11)
trigger1= root,name="shen"
trigger1=enemynear,movetype!=H
var(11) = 0

;撃拳が立ち回りから出したものであるか
[State 100000]
type=varset
trigger1= root,name="shen"
trigger1=!var(11)
trigger1=root,stateno=1000
trigger1=root,prevstateno < 105
var(12) = 1
[State 100000]
type=varset
trigger1=root,name="shen"
trigger1=root,ctrl
var(12) = 0
;ぶっぱ撃拳を回避されていないか(特に緊急回避でループする危険性）
[State 100000]
type=varset
trigger1=var(12)
trigger1=root,name="shen"
trigger1=root,stateno=1000&&root,time=1
var(13) = 50+var(57)
[State 100000]
type=varadd
trigger1=root,name="shen"
trigger1=root,ctrl
trigger1=var(13)
var(13) = -1
[State 100000]
type=varadd
trigger1=root,name="shen"
trigger1=movereversed
var(13) = 200
ignorehitpause=1
[State 100000]
type=varset
trigger1=root,name="shen"
trigger1=root,stateno=1010&&root,movecontact
var(13) = 0
;前Bを最低ガードさせられているか
[State 100000]
type=varset
trigger1=root,name="shen"
trigger1=root,stateno=310&&root,time=1
var(14) = var(57)
[State 100000]
type=varadd
trigger1=root,name="shen"
trigger1=root,ctrl
trigger1=var(14)
var(14) = -1
[State 100000]
type=varadd
trigger1=root,name="shen"
trigger1=movereversed
var(14) = 200
ignorehitpause=1
[State 100000]
type=varset
trigger1=root,name="shen"
trigger1=root,stateno=310&&root,movecontact
var(14) = 0



;---------------------------------------------------------------------------

[State 100000]
type=varset
trigger1 = root,name ="Hikaru Shidou"
trigger2 = root,name = "Kung Fu Man"
trigger3 = root,name = "Hibiki Takane"
trigger4 = root,name = "RIMLE"
trigger5 = root,name = "Kyle Dunamis"
var(10)=1

[State 100000]
type=varset
trigger1= root,name ="Mashiro Mito"
trigger2 = root,name = "KUSANAGI"
trigger3 = root,name = "Rock"
trigger4 = root,name = "Serena" 
var(10) = 5


[State 100000]
type=varset
trigger1= root,name="shen"
trigger2= root,name="Rugal.B"
var(10) = 10



;===========================================================================
;var(10)=1~9 当身用、処理が1F遅れるため
;実際はenemynear,time=enemynear,stateno=var(22)-(発生＋1)

[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = root,p2dist X=[0,160]
trigger1 = enemynear,movetype=A
trigger1 = enemynear,prevstateno <= 115
trigger1 = enemynear,HitDefAttr = SCA,NA,SA
var(20)=1
[State 100000]
type=varset
triggerall = var(10)=[1,4]
triggerall=enemynear,stateno!=var(21)
triggerall=enemynear,stateno!=var(23)
triggerall=enemynear,stateno!=var(25)
triggerall=enemynear,stateno!=var(27)
triggerall=enemynear,stateno!=var(29)
triggerall=enemynear,stateno!=var(31)
trigger1 = var(20)
trigger1 = var(22)
trigger1 = var(24)
trigger1 = var(26)
trigger1 = var(28)
trigger1 = var(30)
trigger1 = var(32)
trigger1 = var(33)
trigger1 = var(35)
trigger1 = !var(37)
trigger1 = root,movetype=H
var(37)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(10)=[1,4]
trigger1 = var(23)
trigger1 = var(25)
trigger1 = var(27)
trigger1 = var(29)
trigger1 = var(31)
trigger1 = var(23)
trigger1 = var(34)
trigger1 = var(36)
trigger1 = !var(38)
var(38)=(enemynear,time)

[State 100000]
type=varset
triggerall = var(10)=[1,4]
triggerall=enemynear,stateno!=var(21)
triggerall=enemynear,stateno!=var(23)
triggerall=enemynear,stateno!=var(25)
triggerall=enemynear,stateno!=var(27)
triggerall=enemynear,stateno!=var(29)
triggerall=enemynear,stateno!=var(31)
trigger1 = var(20)
trigger1 = var(22)
trigger1 = var(24)
trigger1 = var(26)
trigger1 = var(28)
trigger1 = var(30)
trigger1 = var(32)
trigger1 = var(33)
trigger1 = !var(35)
trigger1 = root,movetype=H
var(35)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(10)=[1,4]
trigger1 = var(23)
trigger1 = var(25)
trigger1 = var(27)
trigger1 = var(29)
trigger1 = var(31)
trigger1 = var(23)
trigger1 = var(34)
trigger1 = !var(36)
var(36)=(enemynear,time)
[State 100000]
type=varset
triggerall = var(10)=[1,9]
triggerall=enemynear,stateno!=var(21)
triggerall=enemynear,stateno!=var(23)
triggerall=enemynear,stateno!=var(25)
triggerall=enemynear,stateno!=var(27)
triggerall=enemynear,stateno!=var(29)
triggerall=enemynear,stateno!=var(31)
trigger1 = var(20)
trigger1 = var(22)
trigger1 = var(24)
trigger1 = var(26)
trigger1 = var(28)
trigger1 = var(30)
trigger1 = var(32)
trigger1 = !var(33)
trigger1 = root,movetype=H
var(33)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(23)
trigger1 = var(25)
trigger1 = var(27)
trigger1 = var(29)
trigger1 = var(31)
trigger1 = var(23)
trigger1 = !var(34)
var(34)=(enemynear,time)
[State 100000]
type=varset
triggerall = var(10)=[1,9]
triggerall=enemynear,stateno!=var(21)
triggerall=enemynear,stateno!=var(23)
triggerall=enemynear,stateno!=var(25)
triggerall=enemynear,stateno!=var(27)
triggerall=enemynear,stateno!=var(29)
trigger1 = var(20)
trigger1 = var(22)
trigger1 = var(24)
trigger1 = var(26)
trigger1 = var(26)
trigger1 = var(28)
trigger1 = var(30)
trigger1 = !var(31)
trigger1 = root,movetype=H
var(31)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(23)
trigger1 = var(25)
trigger1 = var(27)
trigger1 = var(29)
trigger1 = var(31)
trigger1 = !var(32)
var(32)=(enemynear,time)

[State 100000]
type=varset
triggerall = var(10)=[1,9]
triggerall=enemynear,stateno!=var(21)
triggerall=enemynear,stateno!=var(23)
triggerall=enemynear,stateno!=var(25)
triggerall=enemynear,stateno!=var(27)
trigger1 = var(20)
trigger1 = var(22)
trigger1 = var(24)
trigger1 = var(26)
trigger1 = var(26)
trigger1 = var(28)
trigger1 = !var(29)
trigger1 = root,movetype=H
var(29)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(23)
trigger1 = var(25)
trigger1 = var(27)
trigger1 = var(29)
trigger1 = !var(30)
var(30)=(enemynear,time)



[State 100000]
type=varset
triggerall = var(10)=[1,9]
triggerall=enemynear,stateno!=var(21)
triggerall=enemynear,stateno!=var(23)
triggerall=enemynear,stateno!=var(25)
trigger1 = var(20)
trigger1 = var(22)
trigger1 = var(24)
trigger1 = var(26)
trigger1 = !var(27)
trigger1 = root,movetype=H
var(27)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(23)
trigger1 = var(25)
trigger1 = var(27)
trigger1 = !var(28)
var(28)=(enemynear,time)


[State 100000]
type=varset
triggerall = var(10)=[1,9]
triggerall=enemynear,stateno!=var(21)
triggerall=enemynear,stateno!=var(23)
trigger1 = var(20)
trigger1 = var(22)
trigger1 = var(24)
trigger1 = !var(25)
trigger1 = root,movetype=H
var(25)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(23)
trigger1 = var(25)
trigger1 = !var(26)
var(26)=(enemynear,time)


[State 100000]
type=varset
triggerall = var(10)=[1,9]
triggerall=enemynear,stateno!=var(21)
trigger1 = var(20)
trigger1 = var(22)
trigger1 = !var(23)
trigger1 = root,movetype=H
var(23)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(23)
trigger1 = !var(24)
var(24)=(enemynear,time)
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(20)
trigger1 = !var(21)
trigger1 = root,movetype=H
;trigger1 = root,stateno!=[120,155]
var(21)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(21)
trigger1 = !var(22)
;trigger2 = var(20)
;trigger2 = enemynear,stateno=var(21)
;trigger2 = enemynear,time < var(22)
;trigger2 = root,movetype=H
;trigger2 = enemynear,prevstateno <= 115
var(52)=(enemynear,time)

[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(21)
trigger1 = var(22) = 0
;trigger2 = var(20)
;trigger2 = enemynear,stateno=var(21)
;trigger2 = enemynear,time < var(22)
;trigger2 = root,movetype=H
;trigger2 = enemynear,prevstateno <= 115
var(22)=(enemynear,time)


;1F技は無効
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = !var(28)
var(27)=0
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(28) = 1
var(28)=0
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = !var(26)
var(25)=0
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(26) = 1
var(26)=0
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = !var(24)
var(23)=0
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(24) = 1
var(24)=0
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = !var(22)
var(21)=0
[State 100000]
type=varset
triggerall = var(10)=[1,9]
trigger1 = var(22) = 1
var(22)=0

;===========================================================================
;var(10)=5~9 ステージ端記憶（変数36-39)

[State -3,画面端前]
type = helper
triggerall = var(10)=[5,9]
trigger1 = roundstate = 2
trigger1 = !NumHelper(110000)
trigger1 = !var(36)
helpertype=normal
name="mae"
stateno=110000
ID=110000
keyctrl=0
pausemovetime=99999999
supermovetime=99999999
persistent = 0
[State -3,画面端後ろ]
type = helper
triggerall = var(10)=[5,9]
trigger1 = roundstate = 2
trigger1 = !NumHelper(120000)
trigger1 = !var(37)
helpertype=normal
name="usiro"
stateno=120000
ID=120000
keyctrl=0
pausemovetime=99999999
supermovetime=99999999
persistent = 0
[State 100000]
type = turn
triggerall = var(10)=[5,9]
trigger1=facing=root,facing=0
trigger1=!var(36)&&!var(37)
[State 100000]
type=varset
triggerall = var(10)=[5,9]
trigger1= numhelper(110000)
var(38) = ceil(helper(110000),rootdist X)
[State 100000]
type=varset
triggerall = var(10)=[5,9]
trigger1=numhelper(120000)
var(39) = ceil(helper(120000),rootdist X)
[State 100000]
type=varset
trigger1 = var(10)=[5,9]
var(36)=ifelse((rootdist X < p2dist X),ceil(var(38)+(rootdist X))*(ifelse(root,facing=0,1,-1)),ceil(var(39)+(rootdist X))*(ifelse(root,facing=0,-1,1)))
[State 100000]
type=varset
trigger1 = var(10)=[5,9]
var(37)=ifelse((rootdist X < p2dist X),ceil(var(39)+(rootdist X))*(ifelse(root,facing=0,-1,1)),ceil(var(38)+(rootdist X))*(ifelse(root,facing=0,1,-1)))
;===========================================================================
;var(10)=10

[State -3]
type = helper
trigger1=var(10)=10
trigger1= roundstate = 2
trigger1= !NumHelper(150000)
helpertype=normal
name="hourai"
stateno=150000
ID=150000
pos=0,0
keyctrl=1
pausemovetime=99999999
supermovetime=99999999
persistent = 0
[State -3]
type = helper
trigger1=var(10)=10
trigger1= roundstate = 2
trigger1= !NumHelper(150001)
helpertype=normal
name="hourai"
stateno=150001
ID=150001
pos=0,0
keyctrl=1
pausemovetime=99999999
supermovetime=99999999
persistent = 0

[State 100000]
type=varset
trigger1=var(10)=10
trigger1=var(22)=0
trigger1=var(23)=0
trigger1=enemynear,ctrl
var(20)=enemynear,numproj
[State 100000]
type=varset
trigger1=var(10)=10
trigger1=var(22)=0
trigger1=var(23)=0
trigger1=enemynear,ctrl
var(21)=enemynear,numhelper


;ダークバリア用フラグ
[State 100000]
type=varset
triggerall=var(10)=10
trigger1=NumHelper(150001)
trigger1=NumHelper(150000)
trigger1=helper(150001),var(1)!=0
trigger1=helper(150000),var(1)=0
var(26)=1
[State 100000]
type=varset
triggerall=var(10)=10
trigger1=NumHelper(150001)
trigger1=NumHelper(150000)
trigger1=helper(150001),var(1)!=0
trigger1=helper(150000),var(1)!=0
var(26)=0
[State 100000]
type=varset
triggerall=var(10)=10
trigger1=NumHelper(150001)
trigger1=NumHelper(150000)
trigger1=helper(150001),var(1)=0
trigger1=helper(150000),var(1)=0
var(26)=0
;弾拳成功or失敗
[State 100000]
type=varset
triggerall=var(10)=10
trigger1=NumHelper(1300)
trigger1=helper(1300),stateno=1310
trigger1=helper(1300),time=1
trigger2=root,movetype=H
trigger2=root,time=1
var(22)=0
[State 100000]
type=varset
triggerall=var(10)=10
trigger1=NumHelper(1300)
trigger1=helper(1300),stateno=1310
trigger1=helper(1300),time=1
trigger2=root,movetype=H
trigger2=root,time=1
var(23)=0
[State 100000]
type=varset
triggerall=var(10)=10
trigger1=NumHelper(1300)
trigger1=helper(1300),stateno=1310
trigger1=helper(1300),time=1
trigger2=root,movetype=H
trigger2=root,time=1
var(24)=0
;;;;;;;;;;;;;;;;;;;;

[State 100000]
type=varset
trigger1=var(10)=10
trigger1=NumHelper(150001)
trigger1=NumHelper(150000)
trigger1=helper(150001),var(1)!=0
trigger1=helper(150000),var(1)!=0
trigger1=!root,inguarddist
trigger1=var(22)<0
trigger1=root,ctrl
var(22)=0
[State 100000]
type=varset
trigger1=var(10)=10
trigger1=NumHelper(150001)
trigger1=NumHelper(150000)
trigger1=!var(22)
trigger1=helper(150000),var(1)!=0
trigger1=!root,inguarddist
trigger1=var(23)<0
var(23)=0
[State 100000]
type=varset
trigger1=var(10)=10
trigger1=NumHelper(150001)
trigger1=NumHelper(150000)
trigger1=!var(22)
trigger1=helper(150000),var(1)!=0
trigger1=!root,inguarddist
var(24)=0

[State 100000]
type=varset
trigger1=var(10)=10
trigger1=var(22)>0
trigger1=NumHelper(150000)
trigger1=NumHelper(150001)
trigger1=!helper(150001),var(1)
var(22)=-1*var(22)
[State 100000]
type=varadd
trigger1=var(10)=10
trigger1=enemynear,numhelper>var(21)||enemynear,numproj>var(20)
trigger1=NumHelper(150000)
trigger1=NumHelper(150001)
trigger1=!root,inguarddist
trigger1=!helper(150000),var(1)
trigger1=helper(150001),var(1)
var(22)=1
[State 100000]
type=varset
trigger1=var(10)=10
trigger1=var(22)<0
trigger1=var(23)>0
trigger1=NumHelper(150000)
trigger1=NumHelper(150001)
trigger1=!helper(150000),var(1)
var(23)=-1*var(23)
[State 100000]
type=varadd
trigger1=var(10)=10
trigger1=var(22)!=0
trigger1=NumHelper(150000)
trigger1=helper(150000),var(1)
var(23)=1
[State 100000]
type=varadd
trigger1=var(10)=10
trigger1=enemynear,numhelper>var(21)||enemynear,numproj>var(20)
trigger1=root,inguarddist
var(24)=1


;不具合防止
[State 100000]
type=varadd
trigger1=var(10)=10
trigger1=var(22)!=0
var(25)=1
[State 100000]
type=varset
trigger1=var(10)=10
trigger1=var(25)>50
trigger1=var(22)<0
trigger1=var(23)=0
var(22)=0
[State 100000]
type=varset
trigger1=var(10)=10
trigger1=var(25)>50
trigger1=var(23)<0
trigger1=var(24)=0||var(25)>70
var(23)=0
[State 100000]
type=varset
trigger1=var(10)=10
trigger1=var(22)=0
var(25)=0





;===========================================================================
;var40-48 中下段、ガード不能記憶


[State 100000]
type=varset
trigger1=root,var(59)=4
var(40)=1
[State 100000]
type=varset
trigger1=root,var(59)=3
var(40)=2

[State 100000]
type=varset
triggerall = p2stateno!=0
trigger1 = p2stateno=var(41)
trigger2 = p2stateno=var(42)
trigger3 = p2stateno=var(43)
trigger4 = p2stateno=var(44)
var(40)=ifelse(var(40)=1,4,3)

[State 100000]
type=varset
trigger1 = enemynear,stateno >= 200
trigger1 = enemynear,stateno!=var(41)&&enemynear,prevstateno!=var(41)
trigger1 = enemynear,stateno!=var(42)&&enemynear,prevstateno!=var(42)
trigger1 = enemynear,stateno!=var(43)&&enemynear,prevstateno!=var(43)
trigger1 = var(41)&&var(42)&&var(43)&&!var(44)
trigger1 = root,movetype=H  || root,statetype=L
trigger1 = root,stateno!=[120,155]
trigger1 = root,prevstateno=[120,155]
var(44)=enemynear,stateno
[State 100000]
type=varset
trigger1 = enemynear,stateno >= 200
trigger1 = enemynear,stateno!=var(41)&&enemynear,prevstateno!=var(41)
trigger1 = enemynear,stateno!=var(42)&&enemynear,prevstateno!=var(42)
trigger1 = var(41)&&var(42)&&!var(43)
trigger1 = root,movetype=H  || root,statetype=L
trigger1 = root,stateno!=[120,155]
trigger1 = root,prevstateno=[120,155]
var(43)=enemynear,stateno
[State 100000]
type=varset
trigger1 = enemynear,stateno >= 200
trigger1 = enemynear,stateno!=var(41)
trigger1 = enemynear,prevstateno!=var(41)
trigger1 = var(41)&&!var(42)
trigger1 = root,movetype=H &&(root,stateno!=[120,155])
trigger1 = root,prevstateno=[120,155]
var(42)=enemynear,stateno
[State 100000]
type=varset
trigger1 = !var(41)
trigger1 = root,movetype=H &&(root,stateno!=[120,155])
trigger1 = root,prevstateno=[120,155]
var(41)=enemynear,stateno
[State 100000]
type=varset
trigger1=var(45)&&!var(46)
trigger1=enemynear,stateno!=var(45)
trigger1=p2stateno=[200,4999]
trigger1=!inguarddist
trigger1=root,movetype=H
trigger1=root,stateno=[5000,5100]
var(46)=enemynear,stateno
[State 100000]
type=varset
trugger1=!var(45)
trigger1=p2stateno=[200,4999]
trigger1=!inguarddist
trigger1=root,movetype=H
trigger1=root,stateno=[5000,5100]
var(45)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(47)
triggerall = p2stateno!=var(47)
triggerall = enemynear,stateno >= 200
triggerall = enemynear,stateno!=var(47)
triggerall = enemynear,prevstateno!=var(47)
triggerall = var(40)=[3,4]
triggerall = root,movetype=H &&(root,stateno!=[120,155])
triggerall = root,prevstateno=[120,155]
triggerall = root,time = 1
trigger1 = p2stateno=var(41)
trigger2 = p2stateno=var(42)
trigger3 = p2stateno=var(43)
trigger4 = p2stateno=var(44)
var(48)=enemynear,stateno
[State 100000]
type=varset
triggerall = var(40)=[3,4]
triggerall = root,movetype=H &&(root,stateno!=[120,155])
triggerall = root,prevstateno=[120,155]
triggerall = root,time = 1
trigger1 = p2stateno=var(41)
trigger2 = p2stateno=var(42)
trigger3 = p2stateno=var(43)
trigger4 = p2stateno=var(44)
var(47)=enemynear,stateno
[State -3]
type = VarSet
triggerall=enemynear,movetype!=I
trigger1 = var(40)=3
var(40) = 1
[State -3]
type = VarSet
triggerall=var(1)>=4
triggerall=enemynear,movetype!=I
trigger1 = var(40)=4
var(40) = 2

;===========================================================================
;var(49)リバーサルガード

[State -3]
type = VarSet
trigger1 = var(56)>=1
Trigger1 = root,time=1
trigger1 = root,movetype=H &&(root,stateno!=[120,155])
var(49) = var(56)

;===========================================================================
;var(50～53),var(57)いちおー飛び道具対策

;ラウンド開始直後は機能しない
[State 100000]
type=varset
trigger1=var(54)>=0&&var(55)=0
trigger1=roundstate=1||roundstate=2&&time<5
trigger1=root,ctrl
var(55)=-60

[State 100000]
type=varadd
trigger1=roundstate=2
trigger1=var(55)<-1
var(55)=1

[State 100000]
type=varset
trigger1=roundstate=2
trigger1=var(55)>=1
trigger1=enemynear,numhelper=var(52)
trigger2 = var(55)=[-2,-1]
var(55)=1


;初期変数セット
[State 100000]
type=varset
trigger1=!var(50)
trigger1=!var(52)
trigger1=root,prevstateno=[190,194]
var(52)=enemynear,numhelper
[State 100000]
type=varset
trigger1 = !var(51)
trigger1 = !var(53)
trigger1=root,prevstateno=[190,194]
var(53)=enemynear,numproj


;パワー溜め感知
[State 100000]
type=varset
trigger1=roundstate=2
trigger1=var(55)>0
trigger1=enemynear,numhelper>var(52)
var(54)=enemynear,stateno

[State 100000]
type=varadd
trigger1=roundstate=2
trigger1=var(54)>0
trigger1=var(55)>0
trigger1=enemynear,numhelper>var(52)
trigger1=enemynear,stateno=var(54)
trigger1=enemynear,power>var(57)
var(55)=1


;現在のヘルパー数参照
[State 100000]
type=varadd
trigger1=var(55)>0
triggerall=roundstate = 2
trigger1=enemynear,numhelper>var(52)
var(50)=1
[State 100000]
type=varset
trigger1=enemynear,numhelper=var(52)
trigger2=root,stateno=[150,155]
trigger3=var(50) > 60
trigger4=enemynear,movetype=H||root,statetype=A;不具合防止
trigger5=var(55)!=[1,5]
var(50)=0
[State 100000]
type=varadd
trigger1=enemynear,numproj>var(53)
var(51)=1
[State 100000]
type=varset
triggerall=roundstate = 2
trigger1=enemynear,numproj=var(53)
trigger2=root,stateno=[150,155]
trigger3=var(50) > 60
trigger4=enemynear,movetype=H||root,statetype=A;不具合防止
var(51)=0
[State 100000]
type=varset
trigger1 = !var(50)
trigger1=enemynear,ctrl||root,stateno=[150,155]
var(52)=enemynear,numhelper
[State 100000]
type=varset
trigger1 = !var(51)
trigger1=enemynear,ctrl||root,stateno=[150,155]
var(53)=enemynear,numproj

;===========================================================================
;var(56)起き上がり投げ無敵F(一応リバサ暴れ防止も兼ねる）

[State -3]
type = VarSet
trigger1 = var(56)>=0
trigger1 = root,stateno=5120
Trigger1 = root,animtime=-1
var(56) = 12
[State -3]
type = VarSet
trigger1 = enemynear,stateno=5120
Trigger1 = enemynear,animtime=-1
var(56) = -12
[State -3]
type = Varadd
trigger1 = var(56)!=0
var(56) = ifelse(var(56)>0,-1,1)


;===========================================================================
;var(59) 相手パワー参照


;1F前のpowerを記憶することで色々判定する
[State 100000]
type=varset
trigger1=1
var(57)=enemynear,power


;===========================================================================
;var(59) ヘルパー式起動法

[State 100000]
type=varset
trigger1=(command="a"&&root,command="a")+(command="b"&&root,command="b")+(command="c"&&root,command="c")+(command="x"&&root,command="x")+(command="y"&&root,command="y")+(command="z"&&root,command="z")+(command="start"&&root,command="start")
trigger2=(command="up"&&root,command="up")+(command="down"&&root,command="down")+(command="fwd"&&root,command="fwd")+(command="back"&&root,command="back")
trigger3=root,var(59)
trigger4=(root,power=root,powermax)*(enemynear,power=enemynear,powermax)*(root,life=root,lifemax)*(enemynear,life=enemynear,lifemax)
var(59)=-1

[State 100000]
type=varset
triggerall=var(59)=0
;trigger1=root,movetype!=H
;trigger1=(root,movetype=A)-(HitPauseTime=0)
trigger1=(command!="a"&&root,command="a")+(command!="b"&&root,command="b")+(command!="c"&&root,command="c")+(command!="x"&&root,command="x")+(command!="y"&&root,command="y")+(command!="z"&&root,command="z")+(command!="start"&&root,command="start")
trigger2=(command!="up"&&root,command="up")+(command!="down"&&root,command="down")+(command!="fwd"&&root,command="fwd")+(command!="back"&&root,command="back")
;trigger2=root,stateno<105
;trigger2=root,prevstateno!=[120,155]
;trigger2=root,p2dist X >0;コマンド逆になるから防止（facingが機能してないっぽい？）
;trigger2=root,stateno!=52&&root,prevstateno!=52&&root,prevstateno!=20;飛び越えた後の着地あたりが怪しい
;Trigger2=facing= root,facing
;trigger2=(command!="up"&&root,command="up")+(!root,inguarddist&&command!="down"&&root,command="down")+(command!="fwd"&&root,command="fwd")+(!root,inguarddist&&command!="back"&&root,command="back")
;trigger2=(command!="up"+root,command="up")+(command!="down"+root,command="down")+(command!="fwd"+root,command="fwd")+(command!="back"+root,command="back")!=4
;trigger2=(command!="up"+root,command="up")+(command!="down"+root,command="down")+(command!="fwd"+root,command="fwd")+(command!="back"+root,command="back")!=2
;Trigger3=facing!=root,facing
;trigger3=(command!="up"&&root,command="up")+(command!="down"&&root,command="down")+(command!="fwd"&&root,command="back")+(command!="back"&&root,command="fwd")
var(59)=1



;===========================================================================
;不具合防止
[State 100000]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 100000]
type = NotHitBy
trigger1 = IsHelper
value = SCA
[State 100000]
type = assertspecial
trigger1 = 1
flag = invisible
;flag2 = noautoturn




[Statedef 110000]
Type = A
Ctrl = 0
Movetype = I
Physics = N
[state 120000]
type = varset
Trigger1 = time=0
var(0)=0
[state 110000]
type = velset
Trigger1 = 1;root,numprojID(110000) > 0
x = 10
[State 100000]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 1825]
type = assertspecial
trigger1 = 1
flag = invisible
[State 10000]
type = NotHitBy
value = SCA
trigger1 = 1
[state 110000]
type=Projectile
trigger1 = time = 0
trigger1 = numprojID(110000) < 1
velocity = 10,0
projID = 110000
projanim = 0;110000;万が一被ったら変更
projhits = 9999
projpriority = 9999
offset = 0,9999
projstagebound = const(size.ground.front)
projedgebound = 100000
projremovetime = -1
supermovetime = 9999
pausemovetime = 9999
[state 110000]
type = velset
trigger1 = vel X > 0
Trigger1 = root,numprojID(110000) = 0
x = 0
[state 110000]
type=null;Projectile;そもそも確認用に出す必要が無かった
trigger1 = time > 0
trigger1 = vel X = 0
trigger1 = numprojID(110000) =0
trigger1 = numprojID(110001) <0
velocity = 0,0
projID = 110001
projanim = 0;110001;万が一被ったら変更
projhits = 9999
projpriority = 9999
offset = 0,9999
projremovetime = -1
supermovetime = 9999
pausemovetime = 9999
[state 110000]
type = varset
trigger1 = vel X = 0
Trigger1 = root,numprojID(110000) = 0
trigger1 = NumHelper(110000)
trigger1 = vel X= 0
var(0) = ceil(rootdist X)
[state 110000]
type = destroyself
trigger1 = time > 0
trigger1 = var(0)
trigger1 = NumHelper(35)
trigger1 = helper(35),var(36)

[Statedef 120000]
Type = A
Ctrl = 0
Movetype = I
Physics = N
Sprpriority = 1
[state 120000]
type = varset
Trigger1 = time=0
var(0)=0
;逆向きに飛んで貰う
[State 100000]
type = null;turn
trigger1 = NumHelper(35)
trigger1=facing=helper(35),facing
;不具合防止
[State 100000]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 1825]
type = assertspecial
trigger1 = 1
flag = invisible
[State 10000]
type = NotHitBy
value = SCA
trigger1 = 1
[state 110000]
type = velset
;trigger1 = helper(110000),facing
Trigger1 = 1;root,numprojID(120000) > 0
x = -10
[state 110000]
type=Projectile
;trigger1 = helper(110000),facing
trigger1 = time=0;numprojID(120000) < 1
velocity = -10,0
projID = 120000
projanim = 0;110000;万が一被ったら変更
projhits = 9999
projpriority = 9999
offset = 0,9999
projstagebound = const(size.ground.front);front
projedgebound = 100000
projremovetime = -1
supermovetime = 9999
pausemovetime = 9999
[state 110000]
type = velset
trigger1 = vel X < 0
Trigger1 = root,numprojID(120000) = 0
x = 0
[state 110000]
type = varset
trigger1 = time>0
trigger1 = vel X= 0
Trigger1 = root,numprojID(120000) = 0
trigger1 = NumHelper(120000)
var(0) = ceil(rootdist X)
[state 110000]
type = destroyself
trigger1 = time > 0
trigger1 = var(0)
trigger1 = NumHelper(35)
trigger1 = helper(35),var(37)
;===========================================================================
[StateDef 150000]
physics=N
ctrl=0
[State 100000]
type=nothitby
value = SCA
trigger1 = 1
[State 100000]
type=varset
trigger1=inguarddist
var(1)=1
[State 100000]
type=varset
trigger1=!inguarddist
var(1)=0
[State 100000]
type = turn
trigger1 = p2dist X < 0
[State -1, PosAdd] 
type = PosAdd 
trigger1 = 1
x = ceil(rootDist X)+ceil(root,p2dist X/3)
[State 100000]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 100000]
type = NotHitBy
trigger1 = IsHelper
value = SCA
[State 100000]
type = assertspecial
trigger1 = 1
flag = invisible
;flag2 = noautoturn
[StateDef 150001]
physics=N
ctrl=0
[State 100000]
type=nothitby
value = SCA
trigger1 = 1
[State 100000]
type=varset
trigger1=inguarddist
var(1)=1
[State 100000]
type=varset
trigger1=!inguarddist
var(1)=0
[State 100000]
type = turn
trigger1 = p2dist X < 0
[State -1, PosAdd] 
type = PosAdd 
trigger1 = 1 
x = ceil(rootDist X) +ceil(root,p2dist X*2/3)
[State 100000]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 100000]
type = NotHitBy
trigger1 = IsHelper
value = SCA
[State 100000]
type = assertspecial
trigger1 = 1
flag = invisible
;flag2 = noautoturn
;===========================================================================

; Jump Start
[Statedef 39]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = 1
sysvar(1) = 1


[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------

