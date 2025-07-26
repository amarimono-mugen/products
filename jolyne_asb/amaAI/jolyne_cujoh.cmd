; 会社員兼殺人鬼『川尻浩作』のコマンドファイルです。
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
;------------------------------------------------------------------------------
;-| AI起動用コマンド |-----------------------------------------------------------------
[Command]
name = "AI00"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,s
time = 0

[Command]
name = "AI01"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,s
time = 0

[Command]
name = "AI02"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,s
time = 0

[Command]
name = "AI03"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,s
time = 0

[Command]
name = "AI04"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,s
time = 0

[Command]
name = "AI05"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s
time = 0

[Command]
name = "AI06"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,a,s
time = 0

[Command]
name = "AI07"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,s
time = 0

[Command]
name = "AI08"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,s
time = 0

[Command]
name = "AI09"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,s
time = 0

[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,s
time = 0

[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,s
time = 0

[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,s
time = 0

[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,s
time = 0

[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,s
time = 0

[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s
time = 0

[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,a,s
time = 0

[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0

[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,s,s
time = 0

[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,s,s
time = 0

[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,s,s
time = 0

[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,s,s
time = 0

[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,s,s
time = 0

[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s,s
time = 0

[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s
time = 0

[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,s,s
time = 0

[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,s,s
time = 0

[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,s,s
time = 0

[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,s,s
time = 0

[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,s,s,s
time = 0

[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,s,s,s
time = 0

[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,s,s,s
time = 0

[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,s,s,s
time = 0

[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s,s,s
time = 0

[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,c,s,s,s
time = 0

[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s,s,s
time = 0

[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,s,s,s
time = 0

[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z,s
time = 0

[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,s
time = 0

[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z,s
time = 0

[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z,s
time = 0

[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z,s
time = 0

[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s,s
time = 0

[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z,s
time = 0

[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z,s
time = 0

[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z,s
time = 0

[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z,s
time = 0

[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z,s
time = 0

[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a,s
time = 0

[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z,s
time = 0

[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,s
time = 0

[Command]
name = "AI51"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,x,s
time = 0

[Command]
name = "AI52"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,x,s
time = 0

[Command]
name = "AI53"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,s
time = 0

[Command]
name = "AI54"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,x,s
time = 0

[Command]
name = "AI55"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,x,s
time = 0

[Command]
name = "AI56"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,x,s
time = 0

[Command]
name = "AI57"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,x,s
time = 0

[Command]
name = "AI58"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,x,s
time = 0

[Command]
name = "AI59"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,x,s
time = 0

[Command]
name = "AI60"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,x,s

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "3button"
command = ~D, DF, F, x+y+z
time = 15

[Command]
name = "63214_xy"
command = ~D, D, D,x+y
time = 40

[Command]
name = "63214_yz"
command = ~D, D, D,y+z
time = 40

[Command]
name = "63214_xz"
command = ~D, D, D,x+z
time = 40

[Command]
name = "kou_xy"
command = ~B, D, DB, x+y

[Command]
name = "236c"
command = ~D, DF, F, c
;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "63214_x"
command = ~F, D, B, x

[Command]
name = "63214_y"
command = ~F, D, B, y

[Command]
name = "63214_z"
command = ~F, D, B, z

[Command]
name = "kou_x"
command = ~B, D, DB, x

[Command]
name = "kou_y"
command = ~B, D, DB, y

[Command]
name = "kou_z"
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
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_yz"
command = ~D, DF, F, y+z

[Command]
name = "QCF_xz"
command = ~D, DF, F, x+z

[Command]
name = "dd_x"
command = ~D,D, x

[Command]
name = "dd_y"
command = ~D,D, y

[Command]
name = "dd_z"
command = ~D,D, z
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
name = "y+c"
command = y+a
time = 1

[Command]
name = "b+a"
command = b+a
time = 1

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

[Command]
name = "Airbom_F"
command = F+x
time = 1

[Command]
name = "Airbom_F"
command = F+y
time = 1

[Command]
name = "Airbom_F"
command = F+z
time = 1


[Command]
name = "Airbom_B"
command = B+x
time = 1

[Command]
name = "Airbom_B"
command = B+y
time = 1

[Command]
name = "Airbom_B"
command = B+z
time = 1


[Command]
name = "Airbom_U"
command = U+x
time = 1

[Command]
name = "Airbom_U"
command = U+y
time = 1

[Command]
name = "Airbom_U"
command = U+z
time = 1


[Command]
name = "Airbom_D"
command = D+x
time = 1

[Command]
name = "Airbom_D"
command = D+y
time = 1

[Command]
name = "Airbom_D"
command = D+z
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
; AI用
;==============================================================================
[State -3, AIon]
type = VarSet
TriggerAll = !Ishelper
TriggerAll = !var(59)
TriggerAll = RoundState = [1,2]
Trigger1 = Command ="AI00"||Command ="AI01"||Command ="AI02"||Command ="AI03"||Command ="AI04"
Trigger2 = Command ="AI05"||Command ="AI06"||Command ="AI07"||Command ="AI08"||Command ="AI09"
Trigger3 = Command ="AI10"||Command ="AI11"||Command ="AI12"||Command ="AI13"||Command ="AI14"
Trigger4 = Command ="AI15"||Command ="AI16"||Command ="AI17"||Command ="AI18"||Command ="AI19"
Trigger5 = Command ="AI20"||Command ="AI21"||Command ="AI22"||Command ="AI23"||Command ="AI24"
Trigger6 = Command ="AI25"||Command ="AI26"||Command ="AI27"||Command ="AI28"||Command ="AI29"
Trigger7 = Command ="AI30"||Command ="AI31"||Command ="AI32"||Command ="AI33"||Command ="AI34"
Trigger8 = Command ="AI35"||Command ="AI36"||Command ="AI37"||Command ="AI38"||Command ="AI39" 
Trigger9 = Command ="AI40"||Command ="AI41"||Command ="AI42"||Command ="AI43"||Command ="AI44"
Trigger10= Command ="AI45"||Command ="AI46"||Command ="AI47"||Command ="AI48"||Command ="AI49"
Trigger11= Command ="AI50"||Command ="AI51"||Command ="AI52"||Command ="AI53"||Command ="AI54"
Trigger12= Command ="AI55"||Command ="AI56"||Command ="AI57"||Command ="AI58"||Command ="AI59"
Trigger13= Command ="AI60"
Trigger14= Numhelper(50000)
trigger14= Helper(50000),var(59) = 1
Trigger15= 0;1で常時起動
;Trigger16= Command ="c";デバッグ用
var(59) = 5;10

[State -1, 飛び道具感知]
type = varset
trigger1 = var(32)
var(55) = 0

[State -1, 飛び道具感知]
type = varset
triggerall = var(59)
TriggerAll = RoundState = 2
TriggerAll = numhelper(51000)
TriggerAll = !Ishelper

trigger1 = playerIDexist(helper(51000),var(3))
trigger1 = playerID(helper(51000),var(3)),teamside != teamside
trigger1 = (playerID(helper(51000),var(3)),hitdefattr=SCA,NA,AP)
trigger1 = (!(playerID(helper(51000),var(3)),movecontact))&&(!(playerID(helper(51000),var(3)),movereversed))
trigger1 = (playerID(helper(51000),var(3)),pos X-pos X)*(ifelse(playerID(helper(51000),var(3)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(3)),vel X)*10)]
trigger1 = playerID(helper(51000),var(3)),vel X>0
trigger2 = playerIDexist(helper(51000),var(4))
trigger2= playerID(helper(51000),var(4)),teamside != teamside
trigger2 = (playerID(helper(51000),var(4)),hitdefattr=SCA,NA,AP)
trigger2 = (!(playerID(helper(51000),var(4)),movecontact))&&(!(playerID(helper(51000),var(4)),movereversed))
trigger2 = (playerID(helper(51000),var(4)),pos X-pos X)*(ifelse(playerID(helper(51000),var(4)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(4)),vel X)*10)]
trigger2 = playerID(helper(51000),var(4)),vel X>0
trigger3 = playerIDexist(helper(51000),var(5))
trigger3 = playerID(helper(51000),var(5)),teamside != teamside
trigger3 = (playerID(helper(51000),var(5)),hitdefattr=SCA,NA,AP)
trigger3 = (!(playerID(helper(51000),var(5)),movecontact))&&(!(playerID(helper(51000),var(5)),movereversed))
trigger3 = (playerID(helper(51000),var(5)),pos X-pos X)*(ifelse(playerID(helper(51000),var(5)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(5)),vel X)*10)]
trigger3 = playerID(helper(51000),var(5)),vel X>0
trigger4 = playerIDexist(helper(51000),var(6))
trigger4= playerID(helper(51000),var(6)),teamside != teamside
trigger4 = (playerID(helper(51000),var(6)),hitdefattr=SCA,NA,AP)
trigger4 = (!(playerID(helper(51000),var(6)),movecontact))&&(!(playerID(helper(51000),var(6)),movereversed))
trigger4 = (playerID(helper(51000),var(6)),pos X-pos X)*(ifelse(playerID(helper(51000),var(6)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(6)),vel X)*10)]
trigger4 = playerID(helper(51000),var(6)),vel X>0
trigger5 = playerIDexist(helper(51000),var(7))
trigger5= playerID(helper(51000),var(7)),teamside != teamside
trigger5 = (playerID(helper(51000),var(7)),hitdefattr=SCA,NA,AP)
trigger5 = (!(playerID(helper(51000),var(7)),movecontact))&&(!(playerID(helper(51000),var(7)),movereversed))
trigger5 = (playerID(helper(51000),var(7)),pos X-pos X)*(ifelse(playerID(helper(51000),var(7)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(7)),vel X)*10)]
trigger5 = playerID(helper(51000),var(7)),vel X>0
trigger6 = playerIDexist(helper(51000),var(8))
trigger6= playerID(helper(51000),var(8)),teamside != teamside
trigger6 = (playerID(helper(51000),var(8)),hitdefattr=SCA,NA,AP)
trigger6 = (!(playerID(helper(51000),var(8)),movecontact))&&(!(playerID(helper(51000),var(8)),movereversed))
trigger6 = (playerID(helper(51000),var(8)),pos X-pos X)*(ifelse(playerID(helper(51000),var(8)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(8)),vel X)*10)]
trigger6 = playerID(helper(51000),var(8)),vel X>0
trigger7 = playerIDexist(helper(51000),var(9))
trigger7= playerID(helper(51000),var(9)),teamside != teamside
trigger7 = (playerID(helper(51000),var(9)),hitdefattr=SCA,NA,AP)
trigger7 = (!(playerID(helper(51000),var(9)),movecontact))&&(!(playerID(helper(51000),var(9)),movereversed))
trigger7 = (playerID(helper(51000),var(9)),pos X-pos X)*(ifelse(playerID(helper(51000),var(9)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(9)),vel X)*10)]
trigger7 = playerID(helper(51000),var(9)),vel X>0
trigger8 = playerIDexist(helper(51000),var(10))
trigger8= playerID(helper(51000),var(10)),teamside != teamside
trigger8 = (playerID(helper(51000),var(10)),hitdefattr=SCA,NA,AP)
trigger8 = (!(playerID(helper(51000),var(10)),movecontact))&&(!(playerID(helper(51000),var(10)),movereversed))
trigger8 = (playerID(helper(51000),var(10)),pos X-pos X)*(ifelse(playerID(helper(51000),var(10)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(10)),vel X)*10)]
trigger8 = playerID(helper(51000),var(10)),vel X>0
trigger9 = playerIDexist(helper(51000),var(11))
trigger9= playerID(helper(51000),var(11)),teamside != teamside
trigger9 = (playerID(helper(51000),var(11)),hitdefattr=SCA,NA,AP)
trigger9 = (!(playerID(helper(51000),var(11)),movecontact))&&(!(playerID(helper(51000),var(11)),movereversed))
trigger9 = (playerID(helper(51000),var(11)),pos X-pos X)*(ifelse(playerID(helper(51000),var(11)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(11)),vel X)*10)]
trigger9 = playerID(helper(51000),var(11)),vel X>0
trigger10 = playerIDexist(helper(51000),var(12))
trigger10= playerID(helper(51000),var(12)),teamside != teamside
trigger10 = (playerID(helper(51000),var(12)),hitdefattr=SCA,NA,AP)
trigger10 = (!(playerID(helper(51000),var(12)),movecontact))&&(!(playerID(helper(51000),var(12)),movereversed))
trigger10 = (playerID(helper(51000),var(12)),pos X-pos X)*(ifelse(playerID(helper(51000),var(12)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(12)),vel X)*10)]
trigger10 = playerID(helper(51000),var(12)),vel X>0
trigger11 = playerIDexist(helper(51000),var(13))
trigger11= playerID(helper(51000),var(13)),teamside != teamside
trigger11 = (playerID(helper(51000),var(13)),hitdefattr=SCA,NA,AP)
trigger11 = (!(playerID(helper(51000),var(13)),movecontact))&&(!(playerID(helper(51000),var(13)),movereversed))
trigger11 = (playerID(helper(51000),var(13)),pos X-pos X)*(ifelse(playerID(helper(51000),var(13)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(13)),vel X)*10)]
trigger11 = playerID(helper(51000),var(13)),vel X>0
trigger12 = playerIDexist(helper(51000),var(14))
trigger12= playerID(helper(51000),var(14)),teamside != teamside
trigger12 = (playerID(helper(51000),var(14)),hitdefattr=SCA,NA,AP)
trigger12 = (!(playerID(helper(51000),var(14)),movecontact))&&(!(playerID(helper(51000),var(14)),movereversed))
trigger12 = (playerID(helper(51000),var(14)),pos X-pos X)*(ifelse(playerID(helper(51000),var(14)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(14)),vel X)*10)]
trigger12 = playerID(helper(51000),var(14)),vel X>0
trigger13 = playerIDexist(helper(51000),var(15))
trigger13= playerID(helper(51000),var(15)),teamside != teamside
trigger13 = (playerID(helper(51000),var(15)),hitdefattr=SCA,NA,AP)
trigger13 = (!(playerID(helper(51000),var(15)),movecontact))&&(!(playerID(helper(51000),var(15)),movereversed))
trigger13 = (playerID(helper(51000),var(15)),pos X-pos X)*(ifelse(playerID(helper(51000),var(15)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(15)),vel X)*10)]
trigger13 = playerID(helper(51000),var(15)),vel X>0
trigger14 = playerIDexist(helper(51000),var(16))
trigger14= playerID(helper(51000),var(16)),teamside != teamside
trigger14 = (playerID(helper(51000),var(16)),hitdefattr=SCA,NA,AP)
trigger14 = (!(playerID(helper(51000),var(16)),movecontact))&&(!(playerID(helper(51000),var(16)),movereversed))
trigger14 = (playerID(helper(51000),var(16)),pos X-pos X)*(ifelse(playerID(helper(51000),var(16)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(16)),vel X)*10)]
trigger14 = playerID(helper(51000),var(16)),vel X>0
trigger15 = playerIDexist(helper(51000),var(17))
trigger15= playerID(helper(51000),var(17)),teamside != teamside
trigger15 = (playerID(helper(51000),var(17)),hitdefattr=SCA,NA,AP)
trigger15 = (!(playerID(helper(51000),var(17)),movecontact))&&(!(playerID(helper(51000),var(17)),movereversed))
trigger15 = (playerID(helper(51000),var(17)),pos X-pos X)*(ifelse(playerID(helper(51000),var(17)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(17)),vel X)*10)]
trigger15 = playerID(helper(51000),var(17)),vel X>0
trigger16 = playerIDexist(helper(51000),var(18))
trigger16= playerID(helper(51000),var(18)),teamside != teamside
trigger16 = (playerID(helper(51000),var(18)),hitdefattr=SCA,NA,AP)
trigger16 = (!(playerID(helper(51000),var(18)),movecontact))&&(!(playerID(helper(51000),var(18)),movereversed))
trigger16 = (playerID(helper(51000),var(18)),pos X-pos X)*(ifelse(playerID(helper(51000),var(18)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(18)),vel X)*10)]
trigger16 = playerID(helper(51000),var(18)),vel X>0
trigger17 = playerIDexist(helper(51000),var(19))
trigger17= playerID(helper(51000),var(19)),teamside != teamside
trigger17 = (playerID(helper(51000),var(19)),hitdefattr=SCA,NA,AP)
trigger17 = (!(playerID(helper(51000),var(19)),movecontact))&&(!(playerID(helper(51000),var(19)),movereversed))
trigger17 = (playerID(helper(51000),var(19)),pos X-pos X)*(ifelse(playerID(helper(51000),var(19)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(19)),vel X)*10)]
trigger17 = playerID(helper(51000),var(19)),vel X>0
trigger18 = playerIDexist(helper(51000),var(20))
trigger18= playerID(helper(51000),var(20)),teamside != teamside
trigger18 = (playerID(helper(51000),var(20)),hitdefattr=SCA,NA,AP)
trigger18 = (!(playerID(helper(51000),var(20)),movecontact))&&(!(playerID(helper(51000),var(20)),movereversed))
trigger18 = (playerID(helper(51000),var(20)),pos X-pos X)*(ifelse(playerID(helper(51000),var(20)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(20)),vel X)*10)]
trigger18 = playerID(helper(51000),var(20)),vel X>0
trigger19 = playerIDexist(helper(51000),var(21))
trigger19= playerID(helper(51000),var(21)),teamside != teamside
trigger19 = (playerID(helper(51000),var(21)),hitdefattr=SCA,NA,AP)
trigger19 = (!(playerID(helper(51000),var(21)),movecontact))&&(!(playerID(helper(51000),var(21)),movereversed))
trigger19 = (playerID(helper(51000),var(21)),pos X-pos X)*(ifelse(playerID(helper(51000),var(21)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(21)),vel X)*10)]
trigger19 = playerID(helper(51000),var(21)),vel X>0
trigger20 = playerIDexist(helper(51000),var(22))
trigger20= playerID(helper(51000),var(22)),teamside != teamside
trigger20 = (playerID(helper(51000),var(22)),hitdefattr=SCA,NA,AP)
trigger20 = (!(playerID(helper(51000),var(22)),movecontact))&&(!(playerID(helper(51000),var(22)),movereversed))
trigger20 = (playerID(helper(51000),var(22)),pos X-pos X)*(ifelse(playerID(helper(51000),var(22)),pos X>pos X,1,-1))=[0,(50+(playerID(helper(51000),var(22)),vel X)*10)]
trigger20 = playerID(helper(51000),var(22)),vel X>0
var(55) = 1

[State ];ガード・歩き制御
type = AssertSpecial
trigger1 = var(59)
flag = nostandguard
flag2 = nocrouchguard
flag3 = nowalk
IgnoreHitPause = 1

[State -1];コンボフラグ制御
type = VarSet
trigger1 = !numtarget
trigger2 = stateno = 3001
trigger3 = stateno = 3301
trigger4 = stateno = 3401
trigger5 = stateno = 1301
var(37) = 0
IgnoreHitPause = 1

[State -1];コンボ分岐フラグ制御
type = VarSet
trigger1 = !numtarget
trigger2 = stateno = 3001
trigger3 = stateno = 3301
trigger4 = stateno = 3401
var(36) = 0
IgnoreHitPause = 1

;==============================================================================
; AI切り替えし
;==============================================================================

;暗転返しGHA
[State -1, 3300]
type = ChangeState
triggerall = var(59) && RoundState = 2
triggerall = power >= 3000
triggerall = helper(50000),var(15) >= 42
triggerall = P2MoveType = A
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,160] 
triggerall = enemynear,animtime <= -8
triggerall = life < 500
;triggerall = random<=400
trigger1 = stateno = 200 && time >= 5
trigger2 = stateno = 210 && time >= 10
trigger3 = stateno = 220 && time >= 11
trigger4 = stateno = 230 && time >= 5
trigger5 = stateno = 250 && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11
trigger9 = stateno = 10200 && time >= 5
trigger10 = stateno = 10210 && time >= 7
trigger11 = stateno = 10220 && time >= 10
trigger12 = stateno = 10230 && time >= 5
trigger13 = stateno = 10400 && time >= 5
trigger14 = stateno = 10410 && time >= 6
trigger15 = stateno = 10420 && time >= 8
trigger16 = stateno = 10460 && time >= 26
trigger17 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
value = 3300

;暗転返しHHA
[State -1, 3100]
type = ChangeState
triggerall = var(59) && RoundState = 2
triggerall = power >= 1000
triggerall = helper(50000),var(15) >= 42
triggerall = P2MoveType = A
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,240]
triggerall = P2bodydist Y = [-50,10]
triggerall = enemynear,animtime <= -8
triggerall = !var(49)
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = life < 500
trigger1 = stateno = 200 && time >= 5
trigger2 = stateno = 210 && time >= 10
trigger3 = stateno = 220 && time >= 11
trigger4 = stateno = 230 && time >= 5
trigger5 = stateno = 250 && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11
trigger9 = stateno = 1000 || stateno = 1006 || stateno = 1008
trigger9 = time >= 25
trigger10 = stateno = 1100 || stateno = 1110 || stateno = 1120
trigger10 = time >= 11
trigger11 = stateno = 1300 || stateno = 1303
trigger12 = stateno = 460
trigger12 = time >= 25

trigger13 = stateno = 10200 && time >= 5
trigger14 = stateno = 10210 && time >= 7
trigger15 = stateno = 10220 && time >= 10
trigger16 = stateno = 10230 && time >= 5
trigger17 = stateno = 10400 && time >= 5
trigger18 = stateno = 10410 && time >= 6
trigger19 = stateno = 10420 && time >= 8
trigger20 = stateno = 10460 && time >= 26
trigger21 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger21 = time >= 28
trigger22 = stateno = 11100 || stateno = 11110 || stateno = 11120
trigger22 = time >= 15
trigger23 = stateno = 11400 || stateno = 11410 || stateno = 11420
trigger23 = time >= 6
trigger24 = stateno = 1005 ||stateno = 11030
trigger24 = time >= 10
trigger25 = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && time > 3) || stateno = 40 || stateno = 41
value = 3000

;対空GHA
[State -1, 3300]
type = ChangeState
triggerall = var(59) && RoundState = 2
triggerall = power >= 2000
triggerall = P2MoveType = A
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,160]
triggerall = P2BodyDist Y = [-45,-30]
triggerall = enemynear(0),vel y > -1 
triggerall = enemynear(0),life < 250
;triggerall = life < 500
trigger1 = ctrl || stateno = 21 || stateno = 100 || (stateno = [120,131])
trigger1 = random < 50
value = 3300

[State -1, 対空親子]
type = ChangeState
value = 3400
triggerall = var(59) && RoundState = 2
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = power >= 2000
triggerall = life < 300
triggerall = numhelper(1001) = 0

;trigger1 = P2MoveType = A
trigger1 = P2BodyDist X = [-20,60]
trigger1 = P2BodyDist Y = [-120,-70]
trigger1 = enemynear(0),vel x >= 0
trigger1 = enemynear(0),vel y > -1
trigger1 = ctrl || stateno = 21 || stateno = 100 || (stateno = [120,131])
trigger1 = random < 200

;trigger2 = P2MoveType = A
trigger2 = P2BodyDist X = [-20,30]
trigger2 = P2BodyDist Y = [-60,-10]
trigger2 = enemynear(0),vel x < 0
;trigger2 = enemynear(0),vel y > -1
trigger2 = ctrl || stateno = 21 || stateno = 100 || (stateno = [120,131])
trigger2 = random < 200

trigger3 = stateno = 210 && time >= 10 && movehit
trigger3 = P2StateType = A
trigger3 = P2BodyDist X = [-20,50]
ignorehitpause = 1

;==============================================================================

[State -1, 飛び道具を回り込み]
type = ChangeState
triggerall = var(59)
TriggerAll = RoundState = 2
triggerall = StateType != A
TriggerAll = !Ishelper
triggerall = var(49) != 10000
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && animelemtime(2) >= 0)
;triggerall = random<=100+((enemynear(var(48)),animtime<-40)*80)+((p2bodydist x >150)*60)
;trigger1 = random < 20+ifelse(P2BodyDist X > 100,200,0)
trigger1 = var(55)
trigger2 = random < 20+ifelse(P2BodyDist X > 100,200,0)
trigger2 = inguarddist
trigger2 = enemynear(0),numproj
value = 799

[State -1, 通常回り込み]
type = ChangeState
triggerall = var(59)
TriggerAll = RoundState = 2
triggerall = StateType != A
TriggerAll = !Ishelper
triggerall = !var(37)
triggerall = var(49) != 10000
Triggerall = EnemyNear,MoveType != H
triggerall = ctrl || stateno = 21 || (stateno = [120,131]) || ((stateno = 100 || stateno = 105) && animelemtime(2) >= 0)
triggerall = frontedgebodydist > 120

Trigger1 = inguarddist
Trigger1 = EnemyNear,MoveType = A
;Trigger1 = EnemyNear,ctrl = 0
;Trigger1 = EnemyNear,alive && enemynear,animtime < -30
trigger1 = random < 10
;trigger1 = P2BodyDist X = [10,80]

;壁際脱出
Trigger2 = EnemyNear,MoveType = A
trigger2 = backedgebodydist < 100
trigger2 = P2BodyDist X = [10,80]
trigger2 = random < 20
value = 799

;歩き
[State -1, Walk]
type = ChangeState
value = 21
triggerall = Var(59) && roundstate = 2
triggerall = !var(37)
triggerall = !numtarget || p2statetype = L
triggerall = StateType != A
triggerall = ctrl || (stateno = [120,131])
triggerall = !InGuardDist
triggerall = stateno != [10,12]
triggerall = prevstateno != [10,12]
triggerall = stateno != 20
triggerall = prevstateno != 20
triggerall = stateno != 21
triggerall = prevstateno != 21
triggerall = stateno != [120,159]
triggerall = prevstateno != [120,159]
trigger1 = random < 50

;ダッシュ
[State -1, Run]
type = ChangeState
value = 100
triggerall = Var(59) && roundstate = 2
triggerall = !var(37)
triggerall = !numtarget || p2statetype = L
triggerall = StateType != A
triggerall = ctrl || stateno = 21 || (stateno = [120,131])
;triggerall = !InGuardDist
triggerall = stateno != 100
;triggerall = prevstateno != 100
trigger1 = P2BodyDist X > 150
trigger1 = random < 150
trigger2 = P2BodyDist X = [110,149]
trigger2 = random < 30
trigger3 = p2statetype != L
trigger3 = P2BodyDist X = [60,109]
trigger3 = random < 20
trigger4 = p2statetype != L
trigger4 = P2BodyDist X = [-20,60]
trigger4 = random < 10

;バックステップ
[State -1, Run]
type = ChangeState
value = 105
triggerall = Var(59)
triggerall = !var(37)
triggerall = !numtarget
triggerall = StateType != A
triggerall = ctrl || stateno = 21 || stateno = 100 || (stateno = [120,131])
triggerall = !InGuardDist
triggerall = stateno != 105
triggerall = prevstateno != 105
triggerall = stateno != [120,159]
triggerall = prevstateno != [120,159]
trigger1 = P2BodyDist X = [30,80]
trigger1 = random < 20
trigger2 = p2statetype = L
trigger2 = P2BodyDist X = [-20,30]
trigger2 = random < 50

;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 830
TriggerAll = var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !inguarddist
triggerall = !var(37)
trigger1 = ctrl
ignorehitpause = 0

;==============================================================================
;AI立ち回り技振り(ガードより優先したいもの)
;==============================================================================

;Soff屈弱
[State -1, 400]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !var(49)
triggerall = !var(37)
triggerall = !var(36)
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = ctrl || (stateno = [120,131]) || stateno = 21
trigger1 = p2bodydist x = [-20,30]
trigger1 = random < 100
;trigger1 = random < 106-(Inguarddist)*6-(stateno=100)*30+(p2stateno=52)*40+(var(9))*200

trigger2 = !inguarddist
trigger2 = ctrl || (stateno = [120,131]) || stateno = 21
trigger2 = p2bodydist x = [-20,30]

trigger3 = p2bodydist x = [-20,20]
trigger3 = moveguarded
trigger3 = stateno = 400 && time >= 5
value = 400

[state ,soffジャンプ(近距離)]
Type = changestate
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !var(49)
triggerall = !var(37)
triggerall = P2StateType != L
triggerall = !numtarget

;trigger1 = var(36) = -140
trigger1 = stateno != 40;
trigger1 = ctrl || (stateno = [120,131]) || stateno = 21 || (stateno = 52 && time >= 1) || stateno = 900
trigger1 = P2bodydist X = [-20,80]
trigger1 = random < 15
value = 40

[State -1, Soffジャンプ強]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = !var(37)
triggerall = roundstate = 2
triggerall = statetype = A

triggerall = P2StateType != L
;triggerall = enemynear(var(48)),prevstateno != [5120,5210]
;triggerall = !enemynear(var(48)),numproj
triggerall = ctrl || (stateno = [120,132])

trigger1 = P2StateType != A
trigger1 = pos y <= -60
trigger1 = Vel Y > -2
trigger1 = P2StateType = S
trigger1 = P2bodydist X = [-5,75]
trigger1 = (P2bodydist Y = [-20,90])

trigger2 = P2StateType != A
trigger2 = pos y <= -60
trigger2 = Vel Y > -2
trigger2 = P2StateType = C
trigger2 = P2bodydist X = [-5,75]
trigger2 = (P2bodydist Y = [-20,75])

;昇りAH。糸ゲージ残ってる場合のみ。
;trigger3 = P2StateType != A
trigger3 = var(29) < 3
trigger3 = Vel Y <= 2
;trigger3 = P2StateType = S
trigger3 = P2bodydist X = [-5,75]
trigger3 = (P2bodydist Y = [-20,90])

;空対空
trigger4 = P2StateType = A
trigger4 = pos y <= -25
trigger4 = P2bodydist X = [-10,50]
trigger4 = P2bodydist Y = [-5,55]
trigger4 = random < 50

value = 620

;==============================================================================
;AIガード
;==============================================================================
;ガード
[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59)
triggerall = roundstate = 2
triggerall = !var(9)
triggerall = !var(36) || var(59) = 7
triggerall = ctrl || stateno = 1 || stateno = 21 || (stateno = [120,131]) || (stateno = 10900 || stateno = 900) || (stateno = 100 && time > 7) || (stateno = 105 && time > 8)
;trigger1 = numhelper(50000)
Trigger1 = inguarddist || ((helper(50000),inguarddist = 1) || p2bodydist x >= 100&&(p2movetype=A))|| (enemynear,numproj > 0)
Trigger1 = 1;random < 100 || var(59)>5

;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0
triggerall = power >= 100
triggerall = statetype = S
triggerall = stateno = 150 || stateno = 151
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = !(p2movetype = H)
trigger1 = p2bodydist x < 120
trigger1 = random < 15+(life<700)*5+(life<500)*8+(life<p2life)*5
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = power >= 100
triggerall = statetype = C
triggerall = stateno = 152 || stateno = 153
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = !(p2movetype = H)
trigger1 = p2bodydist x < 120
trigger1 = random < 15+(life<700)*5+(life<500)*8+(life<p2life)*5
value = 4105

;==============================================================================
;AI立ち回り技振り(Soff)
;==============================================================================

;ヒモの防御
[State -1, 210]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !var(49)
triggerall = !var(37)
triggerall = !var(36)
triggerall = P2StateType != L
triggerall = enemynear,movetype != H
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,50]
trigger1 = random < 15

trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = P2BodyDist X = [-20,80]
trigger2 = enemynear,pos y > -80 && enemynear,vel y >= 0 && enemynear,vel x >= 0
trigger2 = random < 350
trigger2 = enemynear,statetype = A
trigger2 = enemynear,movetype = A
;trigger2 = Inguarddist

trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger3 = P2BodyDist X = [-20,20]
trigger3 = enemynear,pos y > -80 && enemynear,vel x > 0
trigger3 = random < 350
trigger3 = enemynear,statetype = A
trigger3 = enemynear,movetype = A

trigger4 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger4 = P2BodyDist X = [-20,70]
trigger4 = random < 150
trigger4 = enemynear,statetype != A
trigger4 = enemynear,movetype = A
value = 1200

;Soff中
[State -1, 210]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !var(49)
triggerall = !var(37)
triggerall = !var(36)
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = !inguarddist

trigger1 = P2StateType != A
trigger1 = ctrl || (stateno = [120,131]) || stateno = 21
trigger1 = p2bodydist x = [40,70]
trigger1 = random < 50
;trigger1 = random < 47-(Inguarddist)*8+(stateno=100)*35+(var(9))*70

trigger2 = P2StateType = A
trigger2 = ctrl || (stateno = [120,131]) || stateno = 21
trigger2 = p2bodydist x = [0,60]
trigger2 = p2bodydist y = [-60,20]
trigger2 = enemynear, vel y <= -1
trigger2 = random < 50
value = 210

;Soff立弱
[State -1, 200]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !var(49)
triggerall = !var(37)
triggerall = !var(36)
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = ctrl || (stateno = [120,131]) || stateno = 21
trigger1 = p2movetype = H
trigger1 = p2bodydist x = [30,40]
;trigger1 = random < 106-(Inguarddist)*6-(stateno=100)*30+(p2stateno=52)*40+(var(9))*200
value = 200

;Soff屈中
[State -1, 410]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !var(49)
triggerall = !var(37)
triggerall = !var(36)
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

;ガードされた場合の追撃として
trigger1 = p2bodydist x = [-20,60]
trigger1 = moveguarded
trigger1 = stateno = 400 && time >= 5
trigger1 = random < 25

;普通に振る
trigger2 = ctrl || stateno = 21 || stateno = 100 || (stateno = [120,131])
trigger2 = p2bodydist x = [-20,60]
trigger2 = random < ifelse(!inguarddist,20,5)

value = 410

[State -1, コンボルート分岐]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 0
triggerall = var(36) = 0
trigger1 = stateno = 200
trigger1 = movehit && numtarget
trigger2 = stateno = 210
trigger2 = movehit && numtarget
trigger3 = stateno = 400
trigger3 = movehit && numtarget
trigger4 = stateno = 410
trigger4 = movehit && numtarget
var(37) = 1
IgnoreHitPause = 1

[State -1, コンボルート分岐]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 1
triggerall = var(36) = 0
trigger1 = stateno = 200
trigger1 = movehit && numtarget
trigger2 = stateno = 210
trigger2 = movehit && numtarget
trigger3 = stateno = 400
trigger3 = movehit && numtarget
trigger4 = stateno = 410
trigger4 = movehit && numtarget
var(36) = 2
IgnoreHitPause = 1

[state ,soffジャンプ(遠距離からの飛び込み)]
Type = null;changestate
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !var(49)
triggerall = !var(37)
triggerall = !var(55)
triggerall = P2StateType != L
triggerall = !numtarget

;trigger1 = var(36) = -140
trigger1 = var(29) < 2
trigger1 = stateno != 40;
trigger1 = ctrl || (stateno = [120,131]) || stateno = 21 || (stateno = 52 && time >= 1) || stateno = 900
trigger1 = P2bodydist X = [120,200]
trigger1 = random < 8 + ifelse(var(29) <= 1,12,0)
value = 40

[state ,バックダッシュ]
Type = null;changestate
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !var(49)
triggerall = !var(37)
triggerall = !var(55)
triggerall = P2StateType != L
triggerall = !numtarget
triggerall = !inguarddist

trigger1 = ctrl || (stateno = [120,131]) || stateno = 21 ||  stateno = 900
trigger1 = P2bodydist X = [-20,150]
trigger1 = random < 200
trigger1 = BackEdgeBodyDist > 60
value = 105

;糸ダッシュ((遠距離からの飛び込み))
[State -1, 2000]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
;triggerall = !var(49)
triggerall = var(37) = 0
triggerall = var(29) < 2
triggerall = stateno != 2006
triggerall = statetype = A
triggerall = P2StateType != A
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = ctrl || (stateno = [120,132])
triggerall = !var(55)
;triggerall = pos y = [-70,-40]

;trigger1 = enemynear(0),vel x > 1
trigger1 = p2bodydist x = [140,200];
trigger1 = pos y < -80
trigger1 = random < 50

;trigger2 = enemynear(0),vel x < -1
trigger2 = p2bodydist x = [80,120];
trigger2 = pos y = [-40,-60]
trigger2 = random < 50

;trigger3 = enemynear(0),vel x < 1
;trigger3 = enemynear(0),vel x > -1
trigger3 = p2bodydist x = [121,139];
trigger2 = pos y = [-60,-80]
trigger3 = random < 50

value = 2000

[State -1, 投げ]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = !var(37)
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = !inguarddist
triggerall = NumHelper(1001) = 0
triggerall = ctrl || stateno = 100 || (stateno = [120,131]) || stateno = 21 || (stateno = 52 && time >= 1)
trigger1 = P2bodydist X = [-20,20]
trigger1 = random < 200
trigger1 = p2movetype != H

[State -1, 糸の結界 弱]
type = ChangeState
value = 1100
triggerall = var(59)
triggerall = !var(49)
triggerall = !var(37)
triggerall = statetype != A
triggerall = RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1151) = 0
triggerall = !var(55)
triggerall = ctrl || (stateno = [120,131]) || stateno = 21 || (stateno = 52 && time >= 1)
trigger1 = p2bodydist x = [100,250]
trigger1 = !inguarddist
trigger1 = random < 50
trigger2 = p2bodydist x = [80,99]
trigger2 = random < 20

trigger3 = p2bodydist x = [30,79]
trigger3 = random < 10

trigger4 = !inguarddist
trigger4 = P2StateType = L
trigger4 = p2bodydist x = [-20,100]
trigger4 = random < 100

[State -1, 糸の結界 中]
type = null;ChangeState
value = 1110
triggerall = var(59)
triggerall = !var(49)
triggerall = !var(37)
triggerall = statetype != A
triggerall = RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1151) = 0
triggerall = !var(55)
triggerall = p2bodydist x = [120,180]
triggerall = ctrl || (stateno = [120,131]) || stateno = 21 || (stateno = 52 && time >= 1)
trigger1 = !inguarddist
trigger1 = random < 10
trigger1 = p2bodydist x = [120,250]

[State -1, 糸の結界 遠]
type = ChangeState
value = 1120
triggerall = var(59)
triggerall = !var(49)
triggerall = !var(37)
triggerall = statetype != A
triggerall = RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1151) = 0
triggerall = !var(55)
triggerall = p2bodydist x = [150,200]
triggerall = ctrl || (stateno = [120,131]) || stateno = 21 || (stateno = 52 && time >= 1)
trigger1 = !inguarddist
trigger1 = random < 50
trigger2 = p2statetype = L
trigger2 = random < 150

[State -1, 角度]
type = ChangeState
value = 1300
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 0
triggerall = !var(55)
triggerall = !inguarddist
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = numhelper(1001) = 0
triggerall = ctrl || (stateno = [120,131]) || stateno = 21 || (stateno = 52 && time >= 1)
trigger1 = p2bodydist x = [80,120]
trigger1 = random < 10
ignorehitpause = 1

[State -1, ヒモの防御に]
type = ChangeState
value = 1200
triggerall = var(59)
triggerall = !var(37)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = p2bodydist y = [-40,0]
triggerall = p2bodydist x = [20,80]
triggerall = P2moveType = A
triggerall = !inguarddist
trigger1 = ctrl || (stateno = [120,131]) || stateno = 21 || (stateno = 52 && time >= 1)
trigger1 = random < 100

;==============================================================================
;AI飛び込み(Soff)
;==============================================================================
[State -1, Soffジャンプ弱]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = !var(37)
triggerall = roundstate = 2
triggerall = statetype = A

triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
;triggerall = enemynear(var(48)),prevstateno != [5120,5210]
;triggerall = !enemynear(var(48)),numproj
triggerall = ctrl || (stateno = [120,132])

;前遠距離糸ダッシュの差し込みで出す場合を想定
trigger1 = pos y <= -35
trigger1 = pos y > -70
trigger1 = Vel Y > 0
trigger1 = Vel X > 5
trigger1 = P2StateType != A
trigger1 = P2bodydist X = [-5,75]

;前近距離糸ダッシュで出す場合を想定
trigger2 = pos y <= -25
;trigger2 = pos y > -70
trigger2 = Vel Y > 0
trigger2 = P2StateType != A
trigger2 = P2bodydist X = [-5,55]

;空対空
trigger3 = pos y <= -25
trigger3 = P2StateType = A
trigger3 = P2bodydist X = [0,60]
trigger3 = P2bodydist Y = [-5,55]
trigger3 = random < 50

value = 600

;糸ダッシュ
[State -1, 1000]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
;triggerall = !var(49)
triggerall = var(37) = 0
triggerall = var(36) = 0
triggerall = var(29) < 3
triggerall = stateno != 2006
triggerall = statetype = A
triggerall = P2StateType != A
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = movecontact
triggerall = p2bodydist x = [-20,100];
triggerall = !inguarddist
trigger1 = random < 50
trigger1 = pos y < -35 || vel Y < -2
trigger1 = (stateno = 600) && time >= 5 || (stateno = 610) && time >= 9 || (stateno = 620) && time >= 9
value = 2000

;後方糸ダッシュ
[State -1, 1000]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
;triggerall = !var(49)
triggerall = var(37) = 0
triggerall = var(36) = 0
triggerall = var(29) < 1
triggerall = stateno != 2006
triggerall = statetype = A
triggerall = P2StateType != A
triggerall = P2StateType != L
triggerall = p2bodydist x = [-20,100];
triggerall = pos y < -35
;triggerall = random < 20
triggerall = backedgebodydist > 80
triggerall = !inguarddist
triggerall = !movehit
trigger1 = (stateno = 600) && time >= 5 || (stateno = 610) && time >= 9 || (stateno = 620) && time >= 9

value = 2010

;==============================================================================
;AIコンボ1(Soff AN始動)
;==============================================================================

;空中通常攻撃ヒット確認から空ダコン
[State -1, 1000]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
;triggerall = !var(49)
triggerall = var(37) = 0
triggerall = var(36) = 0
triggerall = var(29) < 3
triggerall = stateno != 2006
triggerall = statetype = A
triggerall = P2StateType != A
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = movehit && numtarget
triggerall = p2bodydist x = [-20,120];
trigger1 = (stateno = 600) && time >= 5
trigger2 = (stateno = 610) && time >= 9
trigger3 = (stateno = 620) && time >= 7
value = 2000

[State -1, Soffジャンプ強]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 1
triggerall = roundstate = 2
triggerall = statetype = A

triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
;triggerall = enemynear(var(48)),prevstateno != [5120,5210]
;triggerall = !enemynear(var(48)),numproj

triggerall = stateno = 2006

trigger1 = pos y <= -70
;trigger1 = Vel Y > -2
trigger1 = P2bodydist X = [-20,100]
;trigger1 = (P2bodydist Y = [-20,75])

trigger2 = pos y <= -20
trigger2 = Vel Y > -2
trigger2 = P2bodydist X = [-20,100]
;trigger1 = (P2bodydist Y = [-20,75])

value = 620

[State -1, コンボルート分岐]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 1
triggerall = var(36) = 1
triggerall = stateno = 620
trigger1 = movehit && numtarget
var(36) = 2
IgnoreHitPause = 1

;Soff屈弱
[State -1, 400]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = stateno = 52
trigger1 = p2bodydist x < 30
value = 400

;Soff立弱
[State -1, 200]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = stateno = 52
trigger1 = p2bodydist x < 45
value = 200

;Soff立中
[State -1, 210]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = movehit && numtarget
trigger1 = stateno = 52
trigger1 = p2bodydist x = [20,80]

trigger2 = movehit && numtarget
trigger2 = stateno = 200 || stateno = 400
trigger2 = p2bodydist x = [-20,80]
value = 210

;Soff立強
[State -1, 220]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = numhelper(1001) = 0

trigger1 = movehit && numtarget
trigger1 = stateno = 210
trigger1 = p2bodydist x = [-20,100]

trigger2 = movehit && numtarget
trigger2 = stateno = 410
trigger2 = p2bodydist x = [-20,100]
value = 220

[State -1, コンボルート分岐 クイックSonコンへ]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = var(22)
triggerall = var(40) <= 10;コンボが長くなりすぎないように
triggerall = numhelper(1151) = 0
triggerall = movehit && numtarget
triggerall = p2bodydist x = [-20,60]
triggerall = stateno = 220
trigger1 = power >= 750
trigger2 = EnemyNear(0),life < 100
trigger2 = power >= 500

var(37) = 3
IgnoreHitPause = 1

[State -1, コンボルート分岐 クイックSonコンへ]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 3
triggerall = var(36) = 2
triggerall = var(22)
triggerall = var(40) <= 20;コンボが長くなりすぎないように
triggerall = numhelper(1151) = 0
triggerall = movehit && numtarget
triggerall = p2bodydist x = [-20,60]
triggerall = stateno = 220
trigger1 = power >= 750
trigger2 = EnemyNear(0),life < 100
trigger2 = power >= 500
var(36) = 1
IgnoreHitPause = 1

;Soff前立強
[State -1, 230]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = movehit && numtarget
trigger1 = stateno = 220
trigger1 = p2bodydist x = [-20,120]
value = 230

[State -1, コンボルート分岐 引き起こしコンへ]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = var(22) = 0
triggerall = numhelper(1151) = 0
trigger1 = movehit && numtarget
trigger1 = stateno = 230 && time = [23,26]
var(37) = 2
IgnoreHitPause = 1

[State -1, コンボルート分岐 引き起こしコンへ]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 2
triggerall = var(36) = 2
triggerall = var(22) = 0
triggerall = numhelper(1151) = 0
trigger1 = movehit && numtarget
trigger1 = stateno = 230 && time = [23,26]
var(36) = 1
IgnoreHitPause = 1

[State -1, Soff親子]
type = ChangeState
value = 3400
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = power >= 2000
triggerall = life < 300
triggerall = numhelper(1001) = 0
triggerall = movehit && numtarget
trigger1 = stateno = 230 && time = [23,26]
ignorehitpause = 1

[State -1, GHA]
type = ChangeState
value = 3300
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = power >= 2000
triggerall = numhelper(1001) = 0
triggerall = movehit && numtarget
trigger1 = stateno = 230 && time = [23,26]
ignorehitpause = 1

[State -1, そのまま眠りなァ！]
type = ChangeState
value = 1000
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = movehit && numtarget
trigger1 = power >= 1500
trigger1 = stateno = 230 && time = [23,26]
trigger2 = power >= 1000
trigger2 = EnemyNear(0),life < 100
trigger2 = stateno = 230 && time = [23,26]
trigger3 = power >= 1000
trigger3 = var(40) > 10
trigger3 = stateno = 230 && time = [23,26]
ignorehitpause = 1

[State -1, Soff千球だ]
type = ChangeState
value = 3000
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = movehit && numtarget
trigger1 = stateno = 1000 && time = 67
ignorehitpause = 1

[State -1, 角度]
type = ChangeState
value = 1300
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 1
triggerall = var(36) = 2
triggerall = var(22) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = numhelper(1001) = 0
triggerall = movehit && numtarget
trigger1 = stateno = 230 && time = [23,26]
ignorehitpause = 1



;==============================================================================
;AIコンボ2(Soff 挑発引き起こしコンボ)
;==============================================================================

[State -1, 糸の結界 弱]
type = ChangeState
value = 1100
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 2
triggerall = var(36) = 1
triggerall = !var(22)
triggerall = RoundState = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = numhelper(1001) = 0
triggerall = numhelper(1151) = 0
triggerall = movehit && numtarget
triggerall = p2bodydist x = [-20,100]
trigger1 = (stateno = 230) && time >= 39

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 2
triggerall = var(36) = 1
triggerall = !var(22)
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = ctrl

[State -1, コンボルート分岐]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 2
triggerall = var(36) = 1
trigger1 = stateno = 195
var(36) = 2
IgnoreHitPause = 1

;糸ゲージに余裕あれば、引き起こしからジャンプコンへ移行する
[state ,soffジャンプ(近距離)]
Type = changestate
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !var(49)
triggerall = var(37) = 2
triggerall = var(36) = 2
triggerall = var(29) < 3
trigger1 = numtarget
trigger1 = ctrl
trigger1 = stateno != 40;
trigger1 = P2bodydist X = [-20,100]
value = 40

[State -1, コンボルート分岐]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 2
triggerall = var(36) = 2
trigger1 = numtarget
trigger1 = (stateno = 40)
var(37) = 0
IgnoreHitPause = 1

[State -1, コンボルート分岐]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 0
triggerall = var(36) = 2
trigger1 = numtarget
trigger1 = (stateno = 40)
var(36) = 0
IgnoreHitPause = 1

;糸ゲージ残ってないなら地上コンボ。

;Soff立弱
[State -1, 200]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 2
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = numtarget
trigger1 = ctrl
trigger1 = p2bodydist x = [-20,50]
value = 200

;Soff立中
[State -1, 210]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 2
triggerall = var(36) = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = numtarget
trigger1 = ctrl
trigger1 = p2bodydist x = [50,80]

trigger2 = movehit && numtarget
trigger2 = (stateno = 200)
trigger2 = p2bodydist x = [-20,80]
value = 210

[State -1, コンボルート分岐 Soff基礎コンに戻る]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 2
triggerall = var(36) = 2
trigger1 = movehit && numtarget
trigger1 = (stateno = 210)
var(37) = 1
IgnoreHitPause = 1

;==============================================================================
;AIコンボ3(Soff クイックSonコンボ)
;==============================================================================

[State -1, クイックスタンドon]
type = ChangeState
value = 10901
TriggerAll = var(59)
triggerall = RoundState = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
;triggerall = var(40) = 9999
triggerall = numhelper(1001) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 500
triggerall = var(37) = 3
triggerall = var(36) = 1
triggerall = movehit && numtarget
trigger1 = (stateno = 220)

[State -1, ダッシュで距離詰め]
type = null;ChangeState
value = 100
TriggerAll = var(59)
triggerall = RoundState = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = numhelper(1001) = 0 
triggerall = var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(37) = 3
triggerall = var(36) = 1
triggerall = numtarget
trigger1 = stateno != 100
trigger1 = ctrl

[State -1, Son屈弱]
type = ChangeState
value = 10400
TriggerAll = var(59)
triggerall = RoundState = 2
triggerall = var(49)
triggerall = statetype != A
triggerall = var(37) = 3
triggerall = var(36) = 1
;triggerall = numtarget
trigger1 = ctrl || stateno = 100 || stateno = 21
trigger1 = p2bodydist x = [-30,20]

[State -1, Son立中]
type = ChangeState
value = 10210
TriggerAll = var(59)
triggerall = RoundState = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(37) = 3
triggerall = var(36) = 1
trigger1 = (stateno = 10400) && time >= 5
trigger1 = p2bodydist x = [-20,60]
trigger2 = ctrl || stateno = 100 || stateno = 21
trigger2 = p2bodydist x = [20,70]

[State -1, Son立強]
type = ChangeState
value = 10220
TriggerAll = var(59)
triggerall = RoundState = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(37) = 3
triggerall = var(36) = 1
triggerall = numtarget
triggerall = movehit && numtarget
triggerall = P2StateType != C
trigger1 = (stateno = 10210) && time >= 8
trigger1 = p2bodydist x = [-20,90]

[State -1, つまり敵でいいんだな]
type = ChangeState
TriggerAll = var(59)
triggerall = RoundState = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(37) = 3
triggerall = var(36) = 1
triggerall = movehit && numtarget
trigger1 = (stateno = 10210) && time >= 8
trigger1 = p2bodydist x = [-20,120]
trigger2 = (stateno = 10220) && time >= 11
trigger2 = p2bodydist x = [-20,120]

value = 11000

[State -1, コンボルート進行]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 3
triggerall = var(36) = 1
triggerall = numtarget
trigger1 = stateno = 11000 || stateno = 11010 || stateno = 11020
var(36) = 2
IgnoreHitPause = 1

[State -1, 擬似スタンドラッシュ]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = var(49)
triggerall = statetype != A
triggerall = power >= 250
triggerall = var(37) = 3
triggerall = var(36) = 2
triggerall = numtarget
trigger1 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger1 = time >= 10
value = 2100
ignorehitpause = 1

[State -1, ダッシュで距離詰め]
type = ChangeState
value = 100
TriggerAll = var(59)
triggerall = RoundState = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(37) = 3
triggerall = var(36) = 2
triggerall = numtarget
trigger1 = p2bodydist x  > 10
trigger1 = stateno != 100
trigger1 = ctrl

[State -1, Son立弱]
type = ChangeState
value = 200
TriggerAll = var(59)
triggerall = RoundState = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(37) = 3
triggerall = var(36) = 2
triggerall = numtarget
trigger1 = ctrl || stateno = 21 || stateno = 100
trigger1 = p2bodydist x = [-20,30]

[State -1, コンボルート進行]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 3
triggerall = var(36) = 2
triggerall = numtarget
trigger1 = stateno = 200
var(36) = 3
IgnoreHitPause = 1

[State -1, ジャンプ]
type = ChangeState
value = 40
TriggerAll = var(59)
triggerall = RoundState = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(37) = 3
triggerall = var(36) = 3
triggerall = numtarget
trigger1 = p2bodydist x = [-20,80]
trigger1 = stateno != 40
trigger1 = ctrl

[State -1, コンボルート進行]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 3
triggerall = var(36) = 3
triggerall = numtarget
trigger1 = stateno = 40
var(36) = 4
IgnoreHitPause = 1

[State -1, ジャンプ中]
type = ChangeState
value = 610
TriggerAll = var(59)
triggerall = roundstate = 2
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = !var(49)
triggerall = var(37) = 3
triggerall = var(36) = 4
triggerall = p2bodydist x = [-20,70]
triggerall = vel Y > -1
triggerall = statetype = A
triggerall = ctrl
trigger1 = pos Y = [-75,-60]


;糸ゲージあれば空ダコンへ移行
[State -1, 1000]
type = ChangeState
TriggerAll = var(59)
triggerall = roundstate = 2
;triggerall = !var(49)
triggerall = var(37) = 3
triggerall = var(36) = 4
triggerall = var(29) < 3
triggerall = stateno != 2006
triggerall = statetype = A
triggerall = P2StateType != A
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201
triggerall = movehit && numtarget
triggerall = p2bodydist x = [-20,120]
triggerall = pos y < -50
trigger1 = (stateno = 610) && time >= 9
value = 2000

[State -1, Soff立弱]
type = ChangeState
triggerall = var(59)
triggerall = !var(49)
triggerall = var(37) = 3
triggerall = var(36) = 4
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2StateType != A
triggerall = P2BodyDist Y = 0
triggerall = P2StateType != L
triggerall = P2stateno != 5120
triggerall = P2stateno != 5201

trigger1 = numtarget
trigger1 = ctrl
trigger1 = p2bodydist x = [-20,50]
value = 200

[State -1, コンボルート分岐 基礎コンへ戻る]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 3
triggerall = var(36) = 4
triggerall = numtarget
trigger1 = stateno = 200
var(37) = 1
IgnoreHitPause = 1

[State -1, コンボルート分岐 基礎コンへ戻る]
Type = VarSet
triggerall = var(59)
triggerall = RoundState = 2
triggerall = var(37) = 1
triggerall = var(36) = 4
triggerall = numtarget
trigger1 = stateno = 200
var(36) = 2
IgnoreHitPause = 1


;======AI用コマンド記述ここまで=======

;==============================================================================
; 超必殺技
;==============================================================================
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
; 超必殺技
;==============================================================================
[State -1, GHA]
type = ChangeState
value = 3300
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = !var(49)
triggerall = command = "b" || command = "3button"
triggerall = power >= 2000
triggerall = numhelper(1001) = 0
trigger1 = stateno = 200 && time >= 5
trigger2 = stateno = 210 && time >= 10
trigger3 = stateno = 220 && time >= 11
trigger4 = stateno = 230 && time >= 5
trigger5 = stateno = 250 && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11
trigger9 = stateno = 10200 && time >= 5
trigger10 = stateno = 10210 && time >= 7
trigger11 = stateno = 10220 && time >= 10
trigger12 = stateno = 10230 && time >= 5
trigger13 = stateno = 10400 && time >= 5
trigger14 = stateno = 10410 && time >= 6
trigger15 = stateno = 10420 && time >= 8
trigger16 = stateno = 10460 && time >= 26
trigger17 = statetype = S
trigger17 = ctrl
ignorehitpause = 1

[State -1, Soff千球だ]
type = ChangeState
value = 3000
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "QCF_xy" || command = "QCF_yz" || command = "QCF_xz" || command = "236c"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
trigger1 = stateno = 200 && time >= 5
trigger2 = stateno = 210 && time >= 10
trigger3 = stateno = 220 && time >= 11
trigger4 = stateno = 230 && time >= 5
trigger5 = stateno = 250 && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11
trigger9 = stateno = 1000 || stateno = 1006 || stateno = 1008
trigger9 = time >= 25
trigger10 = stateno = 1100 || stateno = 1110 || stateno = 1120
trigger10 = time >= 11
trigger11 = stateno = 1300 || stateno = 1303
trigger12 = stateno = 460
trigger12 = time >= 25

trigger13 = stateno = 10200 && time >= 5
trigger14 = stateno = 10210 && time >= 7
trigger15 = stateno = 10220 && time >= 10
trigger16 = stateno = 10230 && time >= 5
trigger17 = stateno = 10400 && time >= 5
trigger18 = stateno = 10410 && time >= 6
trigger19 = stateno = 10420 && time >= 8
trigger20 = stateno = 10460 && time >= 26
trigger21 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger21 = time >= 28
trigger22 = stateno = 11100 || stateno = 11110 || stateno = 11120
trigger22 = time >= 15
trigger23 = stateno = 11400 || stateno = 11410 || stateno = 11420
trigger23 = time >= 6
trigger24 = stateno = 1005 ||stateno = 11030
trigger24 = time >= 10
trigger25 = statetype = S
trigger25 = ctrl
ignorehitpause = 1

[State -1, Son千球だ]
type = ChangeState
value = 13000
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49)
triggerall = command = "QCF_xy" || command = "236c"
triggerall = power >= 1000
triggerall = statetype != A
;triggerall = numhelper(1001) = 0
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 9
trigger4 = (stateno = 10220) && time >= 11
trigger5 = (stateno = 10230) && time >= 23
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 11
trigger9 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger9 = time >= 13
trigger10 = stateno = 11005
trigger11 = stateno = 11400 || stateno = 11410 || stateno = 11420
trigger11 = time >= 11
ignorehitpause = 1


[State -1, Soff千球だ];EBver
type = ChangeState
value = 3000
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 1000 && time >= 25
ignorhitpause = 1

[State -1, Soff親子]
type = ChangeState
value = 3400
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(42)
triggerall = !var(49)
triggerall = command = "63214_xy" || command = "63214_yz" || command = "63214_xz"
triggerall = power >= 2000
triggerall = life < 300
triggerall = numhelper(1001) = 0
trigger1 = stateno = 200 && time >= 5
trigger2 = stateno = 210 && time >= 10
trigger3 = stateno = 220 && time >= 11
trigger4 = stateno = 230 && time >= 5
trigger5 = stateno = 250 && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11
trigger9 = stateno = 1000 || stateno = 1006 || stateno = 1008
trigger9 = time >= 25
trigger10 = stateno = 1100 || stateno = 1110 || stateno = 1120
trigger10 = time >= 11
trigger11 = stateno = 1300 || stateno = 1303
trigger12 = stateno = 460
trigger12 = time >= 25

trigger13 = stateno = 10200 && time >= 5
trigger14 = stateno = 10210 && time >= 7
trigger15 = stateno = 10220 && time >= 10
trigger16 = stateno = 10230 && time >= 5
trigger17 = stateno = 10400 && time >= 5
trigger18 = stateno = 10410 && time >= 6
trigger19 = stateno = 10420 && time >= 8
trigger20 = stateno = 10460 && time >= 26
trigger21 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger21 = time >= 28
trigger22 = stateno = 11100 || stateno = 11110 || stateno = 11120
trigger22 = time >= 15
trigger23 = stateno = 11400 || stateno = 11410 || stateno = 11420
trigger23 = time >= 6
trigger24 = stateno = 1005 ||stateno = 11030
trigger24 = time >= 10
trigger25 = statetype = S
trigger25 = ctrl
ignorehitpause = 1
;==============================================================================
; 必殺技
;==============================================================================

[State -1, そのまま眠りなァ！]
type = ChangeState
value = 1000
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "QCF_x"
triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 220) && time >= 11
trigger5 = (stateno = 230) && time >= 23
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11

[State -1, そのまま眠りなァ！];EBver
type = ChangeState
value = 1000
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 220 && time >= 11
ignorhitpause = 1

[State -1, 糸の結界 弱]
type = ChangeState
value = 1100
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "dd_x"
triggerall = numhelper(1001) = 0
triggerall = numhelper(1151) = 0
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 220) && time >= 11
trigger5 = (stateno = 230) && time >= 23
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11

[State -1, 糸の結界 中]
type = ChangeState
value = 1110
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "dd_y"
triggerall = numhelper(1001) = 0
triggerall = numhelper(1151) = 0
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 220) && time >= 11
trigger5 = (stateno = 230) && time >= 23
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11

[State -1, 糸の結界 強]
type = ChangeState
value = 1120
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "dd_z"
triggerall = numhelper(1001) = 0
triggerall = numhelper(1151) = 0
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 220) && time >= 11
trigger5 = (stateno = 230) && time >= 23
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11

;------------------------------------------------------------------------------
[State -1, ヒモの防御に]
type = ChangeState
value = 1200
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = command = "kou_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 220) && time >= 11
trigger5 = (stateno = 230) && time >= 23
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11

[State -1, ヒモの防御に]
type = ChangeState
value = 1200
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = command = "kou_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 220) && time >= 11
trigger5 = (stateno = 230) && time >= 23
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11

[State -1, ヒモの防御に]
type = ChangeState
value = 1200
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = command = "kou_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 220) && time >= 11
trigger5 = (stateno = 230) && time >= 23
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11


[State -1, 一番叩き込みやすい角度]
type = ChangeState
value = 1300
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = command = "63214_x" || command = "63214_y" ||command = "63214_z"
;triggerall = command = "63214_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 220) && time >= 11
trigger5 = (stateno = 230) && time >= 23
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11

[State -1, 対空パンチ]
type = ChangeState
value = 11400
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49)
triggerall = command = "upper_x" || command = "upper_y" || command = "upper_z"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 9
trigger4 = (stateno = 10220) && time >= 11
trigger5 = (stateno = 10230) && time >= 23
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 11

[State -1, つま敵]
type = ChangeState
value = 11000
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49)
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 9
trigger4 = (stateno = 10220) && time >= 11
trigger5 = (stateno = 10230) && time >= 23
trigger6 = (stateno = 10400) && time >= 5
trigger7 = (stateno = 10410) && time >= 7
trigger8 = (stateno = 10420) && time >= 11

[State -1, 空中つま敵]
type = ChangeState
value = 11500
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49)
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 10600) && time >= 3
trigger3 = (stateno = 10610) && time >= 7
trigger4 = (stateno = 10620) && time >= 11
;==============================================================================
; 移動関連
;==============================================================================
[State -1, 走る]
type = ChangeState
value = 100
TriggerAll = !var(59)
triggerall = roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
TriggerAll = !var(59)
triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 投げ]
type = ChangeState
value = 800
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "c"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(1003) = 0 
trigger1 = command != "holdback"

[State -1, 投げ(後方)]
type = ChangeState
value = 801
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "c"
triggerall = statetype != A
triggerall = ctrl
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(1003) = 0 
trigger1 = command = "holdback"
;------------------------------------------------------------------------------
[State -1, Son投げ]
type = ChangeState
value = 10800
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "LM" || command = "MH" || command = "LH"|| command = "c"
triggerall = statetype != A
triggerall = ctrl 
trigger1 = command != "holdback"

[State -1, Son投げ(後方)]
type = ChangeState
value = 10801
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "LM" || command = "MH" || command = "LH"|| command = "c"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdback"
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0
trigger1 = power >= 100
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
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = power >= 100
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;---------------------------------------------------------------------------
;Sonアドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = power >= 100
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 14000 && prevstateno != 14005
ignorehitpause = 1
value = 14400
;---------------------------------------------------------------------------
;Sonアドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = power >= 100
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 14000 && prevstateno != 14005
value = 14405
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(31)
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
triggerall = stateno != 100
trigger1 = statetype != A && ctrl
trigger1 = command = "x+a"
value = 799
;------------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = stateno = 200 && time >= 5
trigger2 = stateno = 210 && time >= 10
trigger3 = stateno = 220 && time >= 11
trigger4 = stateno = 230 && time >= 5
trigger5 = stateno = 250 && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 11
trigger9 = stateno = 1000 || stateno = 1006 || stateno = 1008
trigger9 = time >= 25
trigger10 = stateno = 1100 || stateno = 1110 || stateno = 1120
trigger10 = time >= 11
trigger11 = stateno = 1300 || stateno = 1303
trigger12 = stateno = 460
trigger12 = time >= 25

trigger13 = stateno = 10200 && time >= 5
trigger14 = stateno = 10210 && time >= 7
trigger15 = stateno = 10220 && time >= 10
trigger16 = stateno = 10230 && time >= 5
trigger17 = stateno = 10400 && time >= 5
trigger18 = stateno = 10410 && time >= 6
trigger19 = stateno = 10420 && time >= 8
trigger20 = stateno = 10460 && time >= 26
trigger21 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger21 = time >= 28
trigger22 = stateno = 11100 || stateno = 11110 || stateno = 11120
trigger22 = time >= 15
trigger23 = stateno = 11400 || stateno = 11410 || stateno = 11420
trigger23 = time >= 6
trigger24 = stateno = 1005 ||stateno = 11030
trigger24 = time >= 10
trigger25 = stateno = 11005
value = 700
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, 擬似スタンドラッシュ]
type = ChangeState
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 250
triggerall = command = "a"
trigger1 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger2 = stateno = 11100 || stateno = 11110 || stateno = 11120
trigger2 = time >= 16
trigger3 = stateno = 11190
trigger3 = time >= 5
value = 2100
ignorehitpause = 1

[State -1, 擬似スタンドラッシュ(Air)]
type = ChangeState
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = power >= 250
triggerall = command = "a"
trigger1 = stateno = 11500 || stateno = 11510 || stateno = 11520
value = 2110
ignorehitpause = 1
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱]
type = ChangeState
value = 200
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100 || stateno = 105
;trigger2 = stateno = 200 && time >= 5
trigger2 = stateno = 400 && time >= 5

[State -1, 立ち中]
type = ChangeState
value = 210
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 5
trigger3 = stateno = 400 && time >= 5
ignorhitpause = 1

[State -1, 立ち強]
type = ChangeState
value = 220
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 7

[State -1, 全力で倒す]
type = ChangeState
value = 230
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 220) && time >= 11
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 7
trigger7 = (stateno = 420) && time >= 11
ignorhitpause = 1

[State -1, 立ち中];EBver
type = ChangeState
value = 210
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 200 && time >= 4
ignorhitpause = 1

[State -1, 立ち強];EBver
type = ChangeState
value = 220
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 210 && time >= 5

[State -1, 前立ち強];EBver
type = ChangeState
value = 250
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(40) = 9999
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 220 && time >= 8

[State -1, 第一の爆弾SC];EBver
type = ChangeState
value = 3000
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(40) = 9999
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 250 && time >= 12
;------------------------------------------------------------------------------
[State -1,ON立ち弱]
type = ChangeState
value = 10200
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
;trigger2 = (stateno = 10200) && time >= 5
trigger2 = (stateno = 10400) && time >= 5

[State -1,ON立ち中]
type = ChangeState
value = 10210
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5

[State -1,OND立ち強]
type = ChangeState
value = 10230
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = var(36)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1,ON立ち強]
type = ChangeState
value = 10220
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 8
trigger4 = (stateno = 10400) && time >= 5
trigger5 = (stateno = 10410) && time >= 6

[State -1, Son立ち中];EBver
type = ChangeState
value = 10210
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10200 && time >= 4
ignorhitpause = 1

[State -1, Son立ち強];EBver
type = ChangeState
value = 10220
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10210 && time >= 8

[State -1, Son第一の爆弾SC];EBver
type = ChangeState
value = 13000
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10220 && time >= 16

[State -1, Son第一の爆弾];EBver
type = ChangeState
value = 11000
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10220 && time >= 11
;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Son挑発]
type = ChangeState
value = 195
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = stateno = 200 && time >= 4
trigger3 = stateno = 400 && time >= 5

[State -1, しゃがみ中]
type = ChangeState
value = 410
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = stateno = 400 && time >= 5

[State -1, しゃがみ強]
type = ChangeState
value = 420
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 9
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 7
;------------------------------------------------------------------------------
[State -1,ONしゃがみ弱]
type = ChangeState
value = 10400
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
;trigger2 = (stateno = 10200) && time >= 5
trigger2 = (stateno = 10400) && time >= 5

[State -1,ONしゃがみ中]
type = ChangeState
value = 10410
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5

[State -1,ONしゃがみ強]
type = ChangeState
value = 10420
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 6
trigger3 = (stateno = 10210) && time >= 7
trigger4 = (stateno = 10400) && time >= 5
trigger5 = (stateno = 10410) && time >= 11
;------------------------------------------------------------------------------

[State -1, ジャンプ弱]
type = ChangeState
value = 600
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2000) && time >= 14
trigger3 = (stateno = 2010) && time >= 14

[State -1, ジャンプ中]
type = ChangeState
value = 610
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2000) && time >= 14
trigger3 = (stateno = 2010) && time >= 14

[State -1, ジャンプ強]
type = ChangeState
value = 620
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = !var(49)
triggerall = command = "z"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2000) && time >= 14
trigger3 = (stateno = 2010) && time >= 14
;---------------------------------------------------------------------------
[State -1, ジャンプ弱]
type = ChangeState
value = 10600
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 10610
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 10620
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 610
;trigger2 = movecontact
;---------------------------------------------------------------------------
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 16000
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = numhelper(1001) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

[State -1, クイックスタンドon]
type = ChangeState
value = 10901
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = numhelper(1001) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = (stateno = 200) && time >= 5
trigger2 = (stateno = 210) && time >= 9
trigger3 = (stateno = 220) && time >= 11
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 7
trigger6 = (stateno = 422) && time >= 11

;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 830
TriggerAll = !var(59)
triggerall = roundstate = 2
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

[State -1, エアダッシュ]
type = ChangeState
value = 2000
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(59)<=0&& RoundState = 2
;triggerall = !var(49)
triggerall = var(29) < 3
triggerall = stateno != 2006
triggerall = command = "FF"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 9
trigger4 = (stateno = 620) && time >= 7
trigger5 = (stateno = 10600) && time >= 5
trigger6 = (stateno = 10610) && time >= 7
trigger7 = (stateno = 10620) && time >= 11

[State -1, エアBダッシュ]
type = ChangeState
value = 2010
TriggerAll = !var(59)
triggerall = roundstate = 2
triggerall = var(59)<=0&& RoundState = 2
;triggerall = !var(49)
triggerall = var(29) < 3
triggerall = command = "BB"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 9
trigger4 = (stateno = 620) && time >= 7
trigger5 = (stateno = 10600) && time >= 5
trigger6 = (stateno = 10610) && time >= 7
trigger7 = (stateno = 10620) && time >= 11
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
