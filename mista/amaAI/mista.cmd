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
name = "giogiosp"
command = ~D, DF, F, a
time = 20

[Command]
name = "QCF_xyz"
command = ~D, DF, F, x+y+z

[Command]
name = "QCB_xyz"
command = ~D, DB, B, x+y+z

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_yz"
command = ~D, DB, B, y+z

[Command]
name = "QCB_xz"
command = ~D, DB, B, x+z

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "SCC"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "SCC2"
command = ~D, DF, F, x+z
time = 20
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "f_roll"
command = ~D, DF, F, b+z
time = 20

[Command]
name = "b_roll"
command = ~D, DB, B, b+z
time = 20

[Command]
name = "upper_x"
command = ~B, D, DB, x

[Command]
name = "upper_y"
command = ~B, D, DB, y

[Command]
name = "upper_z"
command = ~B, D, DB, z

[Command]
name = "GC_x"
command = ~F, D, DF, x

[Command]
name = "GC_y"
command = ~F, D, DF, y

[Command]
name = "GC_z"
command = ~F, D, DF, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

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
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "DD_x"
command = ~D,D,x
time = 10

[Command]
name = "DD_y"
command = ~D,D,y
time = 10

[Command]
name = "DD_z"
command = ~D,D,z
time = 10

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b
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

[Command]
name = "holdc"	   
command = /c
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
;------------------------------------------------------------------------------

[State -1, 形を…変えることができればよぉ…];ゲージレベル１
type = ChangeState
value = 4000
triggerall = NumHelper(4003) = 0 
triggerall = command = "x+y+a+b"  ;「SmashKFUpper」の名前のコマンドが入力されたら
triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
triggerall = statetype != A            ;「空中」ではない時
trigger1 = ctrl                        ;コントロールが可能な場合
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
[State -1, パスパース超 乱発]
type = ChangeState
value = 3300
triggerall = var(59)<=0&& RoundState = 2
triggerall = power >= 3000
triggerall = statetype != A
triggerall = NumHelper(1101) = 0 
triggerall = command = "QCF_xyz"
triggerall = var(55) >= 3
triggerall = var(51) = 6
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && movecontact
;------------------------------------------------------------------------------
[State -1, スパコン];ゲージレベル１
type = ChangeState
value = 2900
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(1125) = 0 
triggerall = NumHelper(1401) = 0 
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
;triggerall = var(55) = 6
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && movecontact
;------------------------------------------------------------------------------
[State -1, 屈みスパコン];ゲージレベル１
type = ChangeState
value = 2910
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(1125) = 0 
triggerall = NumHelper(1401) = 0
triggerall = command = "SCC"
triggerall = power >= 1000
;triggerall = var(55) = 6
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact

[State -1, 屈みスパコン2];ゲージレベル１
type = ChangeState
value = 3100
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(1125) = 0 
triggerall = NumHelper(1401) = 0
triggerall = command = "SCC2"
triggerall = power >= 1000
triggerall = var(55) = 6
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
;------------------------------------------------------------------------------

[State -1, 空中スパコン];ゲージレベル１
type = ChangeState
value = 3200
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(1125) = 0 
triggerall = NumHelper(1401) = 0
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
triggerall = var(55) = 6
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 空中発砲]
type = ChangeState
value = 1200
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
triggerall = statetype = A
triggerall = prevstateno != 1050
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
trigger5 = stateno = 50
;------------------------------------------------------------------------------
[State -1,そこにブチ込むッ! 手前]
type = ChangeState
value = 1040
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "upper_x"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit

[State -1,そこにブチ込むッ! 真ん中]
type = ChangeState
value = 1043
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "upper_y"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit

[State -1,そこにブチ込むッ! 奥]
type = ChangeState
value = 1045
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "upper_z"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit
;------------------------------------------------------------------------------
[State -1, 立ち発砲]
type = ChangeState
value = 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "QCF_x"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit

[State -1, 発砲　屈]
type = ChangeState
value = 1020
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "QCF_y"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit

[State -1, かわし屈発砲 前進]
type = ChangeState
value = 1060
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "QCF_z"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit

[State -1, かわし屈発砲 後退]
type = ChangeState
value = 1065
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "QCB_z"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit
;------------------------------------------------------------------------------
[State -1, 立ちホールド]
type = ChangeState
value = 11000
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "QCF_a"
triggerall = statetype != A
triggerall = var(53) != 10
triggerall = var(55) != 0
trigger1 = ctrl

[State -1, 屈ホールド]
type = ChangeState
value = 11020
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(53) != 10
triggerall = var(55) != 0
trigger1 = ctrl

[State -1, 空中ホールド]
type = ChangeState
value = 11200
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "QCF_a"
triggerall = statetype = A
triggerall = var(53) != 10
triggerall = var(55) != 0
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, 彫刻]
type = ChangeState
value = 1300
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "DD_x"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit

[State -1, 彫刻 中]
type = ChangeState
value = 1320
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "DD_y"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit

[State -1, 彫刻 遠]
type = ChangeState
value = 1330
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "DD_z"
triggerall = statetype != A
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 200) && movehit
trigger3 = (stateno = 210) && movehit
trigger4 = (stateno = 400) && movehit
trigger5 = (stateno = 410) && movehit
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = var(59)<=0&& RoundState = 2
triggerall = (command = "holdfwd" || command = "holdback") && command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2movetype != H
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
;------------------------------------------------------------------------------
;ガーキャン
[State -1]
type = ChangeState
value = 1800
triggerall = !var(59)
triggerall = ishelper = 0 && alive && roundstate = 2
triggerall = statetype != A
trigger1 = command = "GC_x" || command = "GC_y" || command = "GC_z"
trigger1 = (stateno = 151 || stateno = 153)
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2
trigger1 = statetype != A && ctrl
trigger1 = command = "b"
value = 300
;---------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 180   ;挑発
trigger3 = stateno = 1000 || stateno = 1005 || stateno = 1006
trigger4 = stateno = 1020 || stateno = 1025 || stateno = 1026
trigger5 = stateno = 1040 || stateno = 1043 || stateno = 1045
trigger6 = stateno = 1060 || stateno = 1065 || stateno = 1070
trigger7 = stateno = 1100 || stateno = 1110 || stateno = 1120
trigger8 = stateno = 1300 || stateno = 1320 || stateno = 1330
value = 700
ignorehitpause = 1
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2
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
triggerall = NumHelper(4010) = 0
triggerall = power >= 250
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------
[State -1, リロード]
type = ChangeState
value = 350
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "a"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 6

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

[State -1, 前立ち強]
type = ChangeState
value = 230
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && movecontact
trigger6 = stateno = 105

[State -1, 立ち強]
type = ChangeState
value = 220
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && movecontact
trigger6 = stateno = 105
;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "start"
triggerall = var(53) != 10
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 8
trigger3 = (stateno = 400) && time >= 6

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

[State -1, しゃがみ強キック]
type = ChangeState
value = 420
triggerall = var(59)<=0&& RoundState = 2
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
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
;---------------------------------------------------------------------------
[State -1, テスト]
type = null;ChangeState
value = 3000
triggerall = var(59) = 1 && RoundState = 2
triggerall = power >= 1000
triggerall = statetype != A
triggerall= EnemyNear,StateType != L
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = -facing*(helper(30000+(facing=1)*10),pos x-pos x) <= -150

trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = facing*(helper(300000+(facing=-1)*10),pos x-pos x) <= 150
;------------------------------------------------------------------------------
[State -1, パスパース超 乱発]
type = ChangeState
value = 3300
triggerall = var(59) = 1 && RoundState = 2
triggerall = power >= 3000
triggerall = statetype != A
triggerall= EnemyNear,StateType != L
triggerall = NumHelper(1101) = 0
triggerall = var(55) >= 3
triggerall = var(51) = 6
trigger1= EnemyNear,MoveType = A
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = enemynear,ctrl = 0
trigger1 = enemynear,animtime <= -15
trigger1 = random<=var(58)*15
trigger1 = P2BodyDist X = [0,100]
trigger1 = P2BodyDist Y >= -100

trigger2 = power >= 5000
trigger2 = life <= 400
trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021]) || (stateno = [100,105])
trigger2 = random<=var(58)*5
trigger2 = P2BodyDist X = [0,100]
trigger2 = P2BodyDist Y >= -100
;---------------------------------------------------------------------------
[State -1, 形を…変えることができればよぉ…]
type = ChangeState
value = 4000
triggerall = var(59) = 1 && RoundState = 2
triggerall = NumHelper(4003) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall= EnemyNear,StateType != L
triggerall= EnemyNear,MoveType != H
triggerall= EnemyNear,MoveType = A
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = enemynear,animtime <= -30
trigger1 = random<=var(58)*2
trigger1 = inguarddist

Trigger2 = EnemyNear,MoveType != H
Trigger2 = EnemyNear,StateType != L
trigger2 = -facing*(helper(30000+(facing=1)*10),pos x-pos x) <= -100
trigger2 = random<=var(58)*5
trigger2 = P2BodyDist X <= 100
trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
;---------------------------------------------------------------------------
[State -1, 投げ]
type = ChangeState
value = 900
triggerall = var(59) = 1 && RoundState = 2
triggerall = !var(49)
TriggerAll= EnemyNear,StateType != A
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
triggerall = P2bodydist X = [-const(size.ground.front),22]
triggerall = statetype != A
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*10
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random<=var(58)*10
trigger3 = enemynear,animtime <= -10
trigger3 = random<=var(58)*30
;------------------------------------------------------------------------------
;ガーキャン
[State -1, Run Back]
type = ChangeState
value = 1800
triggerall = var(59)=1&& RoundState = 2
triggerall = (stateno = [150,153])
triggerall = statetype != A
trigger1 = random<=var(58)*2
trigger1 = enemynear,animtime <= -20
trigger1 = P2BodyDist X = [-20,70]
trigger1 = P2BodyDist Y = [-40,20]
;------------------------------------------------------------------------------
[State -1, リロード]
type = ChangeState
value = 350
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = var(55) <= 3
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021])
trigger1 = random<=var(58)*3
trigger1 = P2BodyDist X >= 150
trigger1 = !inguarddist

trigger2 = var(55) = 0
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021])
trigger2 = random<=var(58)*3
trigger2 = P2BodyDist X >= 100
trigger2 = !inguarddist

trigger3 = stateno = 1300 || stateno = 1320 || stateno = 1330
trigger3 = P2BodyDist X >= 100
trigger3 = var(55) <= 3
trigger3 = AnimTime = 0

trigger4 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021])
trigger4 = enemynear,statetype = L
trigger4 = random<=var(58)*10
trigger4 = var(55) <= 3

trigger5 = stateno = 3302
trigger5 = P2BodyDist X >= 80
trigger5 = var(55) <= 3
trigger5 = AnimTime = 0

trigger6 = stateno = 220
trigger6 = numtarget
trigger6 = var(55) = 0
trigger6 = AnimTime = 0

trigger7 = (stateno = [100005,100007])
trigger7 = numtarget
trigger7 = var(55) = 0
trigger7 = AnimTime = 0
;------------------------------------------------------------------------------
[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype != A
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = enemynear,statetype = A
trigger1= random<=var(58)*30
trigger1 = P2BodyDist X = [-20,50]
trigger1 = P2BodyDist Y = [-60,0]

[State -1, 立ち弱からの追い討ち]
type = ChangeState
value = 100004
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
;------------------------------------------------------------------------------
[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype != A
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*20
trigger1 = P2BodyDist X = [20,50]

trigger2= EnemyNear,MoveType = H
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021]) || (stateno = [100,105])
trigger2 = enemynear,statetype != A
trigger2 = random<=var(58)*20
trigger2 = P2BodyDist X = [-20,50]
;------------------------------------------------------------------------------
[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,Movetype != H
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021])
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [30,75]
trigger1 = P2BodyDist Y = [-50,0]
;------------------------------------------------------------------------------
[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall= EnemyNear,MoveType != H
triggerall = statetype != A
trigger1 = enemynear,statetype != A
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41|| (stateno = [50020,50021])
trigger1 = random<=var(58)*2
trigger1 = P2BodyDist X = [50,110]
;------------------------------------------------------------------------------
[State -1, 屈み中]
type = ChangeState
value = 410
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = (stateno = 400) && movecontact
trigger1 = P2BodyDist X = [-20,30]
;------------------------------------------------------------------------------
[State -1, 立ち強]
type = ChangeState
value = 220
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = (stateno = 400) && movehit
trigger1 = P2BodyDist X = [20,40]
trigger2 = (stateno = 210) && movehit
trigger2 = P2BodyDist X = [-20,40]
trigger3 = (stateno = 410) && movehit
trigger3 = P2BodyDist X = [-20,40]
;------------------------------------------------------------------------------
[State -1, 前立ち強]
type = ChangeState
value = 230
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
trigger1 = random<=var(58)*10
trigger1 = (stateno = 210) && moveguarded
trigger1 = P2BodyDist X = [-20,60]
trigger2 = random<=var(58)*10
trigger2 = (stateno = 410) && moveguarded
trigger2 = P2BodyDist X = [-20,60]
;------------------------------------------------------------------------------
;空中中
[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype = A
triggerall = !inguarddist
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1 = random<=var(58)*30
trigger1 = P2BodyDist X = [-30,70]
trigger1 = pos y >= -70
trigger1 = pos y <= -40

;trigger2 = vel y >= .1
trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2 = random<=var(58)*30
trigger2 = P2BodyDist X = [-30,70]
trigger2 = pos y >= -60
trigger2 = pos y <= -35

trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*40
trigger3 = P2BodyDist X = [-30,70]
trigger3 = P2BodyDist Y = [0,100]
trigger3 = pos y <= -35
;------------------------------------------------------------------------------
[State -1,空中強]
type = ChangeState
value = 620
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype = A
triggerall = !inguarddist
triggerall = stateno != 100001
trigger1 = ctrl
trigger1 = enemynear,statetype = S
trigger1 = random<=var(58)*20
trigger1 = P2BodyDist X = [0,80]
trigger1 = pos y >= -85
trigger1 = pos y <= -45

trigger2 = ctrl
trigger2 = enemynear,statetype = C
trigger2 = random<=var(58)*20
trigger2 = P2BodyDist X = [0,80]
trigger2 = pos y >= -70
trigger2 = pos y <= -40

trigger3 = ctrl
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*30
trigger3 = P2BodyDist X = [0,80]
trigger3 = P2BodyDist Y = [-50,120]
trigger3 = pos y <= -35
;------------------------------------------------------------------------------
[State -1, 空中ホールド]
type = ChangeState
value = 11200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype = A
triggerall = pos y <= -40
triggerall = var(55) != 0
triggerall = var(58) >= 8
trigger1 = ctrl
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X >= 80
;------------------------------------------------------------------------------
[State -1, 空中発砲]
type = ChangeState
value = 1200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype = A
triggerall = pos y <= -40
triggerall = var(55) != 0
trigger1 = ctrl
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X >= 60
;------------------------------------------------------------------------------
[State -1, 発砲]
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype != A
triggerall = var(55) != 0
triggerall = !inguarddist
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = random<=var(58)*1
trigger1 = P2BodyDist X >= 120
;------------------------------------------------------------------------------
[State -1, 立ホールド]
type = ChangeState
value = 11000
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(55) != 0
triggerall = var(58) >= 8
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = random<=var(58)*4
trigger1 = P2BodyDist X >= 120

[State -1, 屈ホールド]
type = ChangeState
value = 11020
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(55) != 0
triggerall = var(58) >= 8
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = random<=var(58)*4
trigger1 = P2BodyDist X >= 120

[State -1, 空中ホールド]
type = ChangeState
value = 11200
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype = A
triggerall = pos y <= -20
triggerall = var(55) != 0
triggerall = var(58) >= 8
trigger1 = ctrl
trigger1 = random<=var(58)*4
trigger1 = P2BodyDist X >= 80
;------------------------------------------------------------------------------
[State -1, 発砲屈]
type = ChangeState
value = 1020
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype != A
triggerall = var(55) != 0
triggerall = !inguarddist
triggerall = var(47) >= -30
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = random<=var(58)*1
trigger1 = P2BodyDist X >= 120
;------------------------------------------------------------------------------
[State -1, 彫刻 近]
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(55) != 0
triggerall = !numhelper(1310)
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*3
trigger1 = P2BodyDist X = [80,120]

trigger2 = facing*(helper(300000+(facing=-1)*10),pos x-pos x) <= 130
trigger2 = random<=var(58)*10
trigger2 = (stateno = 210) && moveguarded
trigger2 = P2BodyDist X = [-20,80]
trigger3 = facing*(helper(300000+(facing=-1)*10),pos x-pos x) <= 130
trigger3 = random<=var(58)*10
trigger3 = (stateno = 410) && moveguarded
trigger3 = P2BodyDist X = [-20,80]
;------------------------------------------------------------------------------
[State -1, 彫刻 中]
type = ChangeState
value = 1320
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(55) != 0
triggerall = !numhelper(1310)
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [120,160]

trigger2 = facing*(helper(300000+(facing=-1)*10),pos x-pos x) < 130
trigger2 = random<=var(58)*10
trigger2 = (stateno = 210) && moveguarded
trigger2 = P2BodyDist X = [-20,80]
trigger3 = facing*(helper(300000+(facing=-1)*10),pos x-pos x) < 130
trigger3 = random<=var(58)*10
trigger3 = (stateno = 410) && moveguarded
trigger3 = P2BodyDist X = [-20,80]
;------------------------------------------------------------------------------
[State -1, 彫刻 遠]
type = ChangeState
value = 1330
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = var(55) != 0
triggerall = !numhelper(1310)
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*3
trigger1 = P2BodyDist X = [160,180]
;------------------------------------------------------------------------------
[State -1,そこにブチ込むッ! 真ん中]
type = ChangeState
value = 1043
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall= EnemyNear,MoveType != H
triggerall = statetype != A
triggerall = var(55) != 0
triggerall = var(47) >= -30
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = enemynear,statetype != A
trigger1 = random<=var(58)*3
trigger1 = P2BodyDist X >= 150

trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger2 = enemynear,statetype != A
trigger2 = random<=var(58)*2
trigger2 = P2BodyDist X = [50,150]

trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger3 = enemynear,statetype = A
trigger3 = random<=var(58)*5
trigger3 = P2BodyDist X = [80,120]
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = NumHelper(4010) = 0
triggerall = P2BodyDist X = [-20,120]
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3
trigger1 = inguarddist
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(4010) = 0 
triggerall = P2BodyDist X = [-20,120]
triggerall = power >= 250
trigger1 = statetype = C
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*3
trigger1 = inguarddist
value = 4105
;------------------------------------------------------------------------------
[State -1, 前方回り込み発砲AI]
type = ChangeState
value = 1060
triggerall = var(59)=1&& RoundState = 2
triggerall = var(55) != 0
triggerall = (RoundState = 2) && (Alive)
triggerall = statetype != A

Trigger1 = EnemyNear,MoveType != H
Trigger1 = EnemyNear,StateType != L
Trigger1 = EnemyNear,ctrl = 0
trigger1 = -facing*(helper(30000+(facing=1)*10),pos x-pos x) <= -100
trigger1 = random<=var(58)*10
trigger1 = P2BodyDist X <= 100
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])

Trigger2 = EnemyNear,MoveType != H
Trigger2 = EnemyNear,StateType != L
trigger2 = random<=var(58)*50
trigger2 = P2BodyDist X >= 0
trigger2 = var(47) <= 90
trigger2 = var(47) >= -10
trigger2 = var(47) != 0
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
;------------------------------------------------------------------------------
[State -1, 後方回り込み発砲AI]
type = ChangeState
value = 1065
triggerall = var(59)=1&& RoundState = 2
triggerall = var(55) != 0
triggerall = (RoundState = 2) && (Alive)
triggerall = statetype != A
;triggerall = -facing*(helper(30000+(facing=1)*10),pos x-pos x) >= 100

Trigger1 = EnemyNear,MoveType != H
Trigger1 = EnemyNear,StateType != L
trigger1 = frontedgebodydist>=120
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [-20,60] 
trigger1 = enemynear,movetype = A  
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])

Trigger2 = EnemyNear,MoveType != H
Trigger2 = EnemyNear,StateType != L
trigger2 = random<=var(58)*20
trigger2 = P2BodyDist X >= 0
trigger2 = var(47) <= 90
trigger2 = var(47) >= -10
trigger2 = var(47) != 0
trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021]) || (stateno = [100,105])
;------------------------------------------------------------------------------
[State -1, 回り込みAI]
type = ChangeState
value = 300
triggerall = var(59)=1&& RoundState = 2
triggerall = var(55) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = statetype != A 
triggerall = prevstateno != 300

Trigger1 = EnemyNear,MoveType != H
Trigger1 = EnemyNear,StateType != L
trigger1 = frontedgebodydist>=120
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [-20,60] 
trigger1 = enemynear,movetype = A  
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

Trigger2 = EnemyNear,MoveType != H
Trigger2 = EnemyNear,StateType != L
trigger2 = random<=var(58)*20
trigger2 = P2BodyDist X >= 0
trigger2 = var(47) <= 90
trigger2 = var(47) >= -10
trigger2 = var(47) != 0
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

Trigger3 = EnemyNear,MoveType != H
Trigger3 = EnemyNear,StateType != L
trigger3 = random<=var(58)*50
trigger3 = P2BodyDist X >= 0
trigger3 = var(47) <= 90
trigger3 = var(47) >= -10
trigger3 = var(47) != 0
trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
;------------------------------------------------------------------------------
[State -1,ダッシュ]
type = ChangeState
value = 100
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype != A
triggerall = stateno != 100
triggerall = !inguarddist
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021])
trigger1 = random<=var(58)*1
trigger1 = P2BodyDist X >= 120

trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021])
trigger2 = random<=var(58)*20
trigger2= EnemyNear,MoveType = H
trigger2= EnemyNear,StateType != A
;------------------------------------------------------------------------------
[State -1,バックダッシュ]
type = ChangeState
value = 105
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = stateno != 105
triggerall = !inguarddist
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021])
trigger1 = enemynear,statetype = L
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [-20,150] 

trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021])
trigger2 = var(55) = 0
trigger2 = random<=var(58)*5
trigger2 = P2BodyDist X = [-20,150]

trigger3 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || (stateno = [50020,50021])
trigger3 = enemynear,vel x > 0
trigger3 = random<=var(58)*2
;------------------------------------------------------------------------------
[State -1, ジャンプ]
type = ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2 
Triggerall = EnemyNear,MoveType != H 
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = ctrl || (stateno = [120,149]) || (stateno = [50020,50021]) || (stateno = [100,105])
trigger1 = enemynear,statetype = S
Trigger1 = EnemyNear,MoveType != A
trigger1 = !inguarddist
trigger1 = P2BodyDist X = [-20,130] 
trigger1 = random<=var(58)*3

trigger2 = enemynear,statetype = C
trigger2 = P2BodyDist X = [-20,130] 
trigger2 = random<=var(58)*5

trigger3 = stateno = 100 && time > 5
trigger3 = enemynear,movetype != A
trigger3 = P2BodyDist X >= 200
trigger3 = random<=var(58)*3

trigger4 = ctrl || stateno = 21 || (stateno = [120,149])
trigger4 = enemynear,statetype = A
trigger4 = P2BodyDist X = [-60,150] 
trigger4 = random<=var(58)*3
;------------------------------------------------------------------------------
[State -1,前進]
type = null;ChangeState
value = 50020
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X >= 70
;------------------------------------------------------------------------------
[State -1,後退]
type = ChangeState
value = 50021
triggerall = var(59)=1&& RoundState = 2
triggerall= EnemyNear,StateType != L
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = random<=var(58)*2
trigger1 = P2BodyDist X < 120
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
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random = [0,40]
;------------------------------------------------------------------------------
;ガード 
[State -1, guard] 
type = ChangeState 
value = 150
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
;------------------------------------------------------------------------------
