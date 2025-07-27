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
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。
[Command]
name = "kou_xy"
command = ~B, D, DB, x+y

[Command]
name = "upper_yz"
command = ~D, DB, B, y+z

[Command]
name = "upper_xy"
command = ~D, DB, B, x+y

[Command]
name = "upper_xz"
command = ~D, DB, B, x+z

[Command]
name = "236c"
command = ~D, DF, F, c

[Command]
name = "214c"
command = ~D, DB, B, c
;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

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
name = "upper_xy"
command = ~F, D, DF, x+y

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
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "heart_c"
command = ~DF, x

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
name = "FF_x"
command = F, F, x

[Command]
name = "BOM_x"
command = ~D,D, x

[Command]
name = "BOM_y"
command = ~D,D, y

[Command]
name = "BOM_z"
command = ~D,D, z

[Command]
name = "46x"
command = ~32$B,$F,x
time = 12

[Command]
name = "46y"
command = ~32$B,$F,y
time = 12

[Command]
name = "46z"
command = ~32$B,$F,z
time = 12
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
[State -1,バイツァ・ダスト]
type = ChangeState
value = 14000
triggerall = var(59)<=0&& RoundState = 2 
;triggerall = !var(49)
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = life <= 300
triggerall = power >= 2000
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 3002 && time >= 100
;------------------------------------------------------------------------------
[State -1, チャンスは訪れた]
type = ChangeState
value = 3300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(29) = 1
triggerall = numhelper(1001) = 0
triggerall = power >= 1000
triggerall = command = "upper_xy" || command = "upper_yz" || command = "214c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 7
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 7
trigger7 = (stateno = 422) && time >= 12
ignorehitpause = 1

[State -1, Sonチャンスは訪れた]
type = ChangeState
value = 13300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(29) = 1
triggerall = numhelper(1001) = 0
triggerall = power >= 1000
triggerall = command = "upper_xy" || command = "upper_yz" || command = "214c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1,接触空気弾];ゲージレベル１
type = ChangeState
value = 3200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(29) = 0
triggerall = command = "upper_yz"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 7
trigger5 = (stateno = 250) && time >= 11
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
ignorehitpause = 1

[State -1,空気弾];ゲージレベル１
type = ChangeState
value = 3100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(29) = 0
triggerall = command = "upper_xy" || command = "214c"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 7
trigger5 = (stateno = 250) && time >= 11
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
ignorehitpause = 1

[State -1, 空気弾 点火ポーズ]
type = ChangeState
value = 3104
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(3102) = 1
triggerall = helper(3102),anim = 3102
triggerall = helper(3102),anim != 3103 && helper(3102),stateno != 1122 && helper(3102),stateno != 11122 && helper(3102),stateno != 3202
triggerall = command = "BOM_x" || command = "BOM_y" ||  command = "BOM_z"  
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 7
trigger5 = (stateno = 250) && time >= 11
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1,SonSC空気弾]
type = ChangeState
value = 13100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(29) = 0
triggerall = command = "upper_xy" || command = "214c"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
ignorehitpause = 1

[State -1,SonSC接触空気弾]
type = ChangeState
value = 13200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(29) = 0
triggerall = command = "upper_yz"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
ignorehitpause = 1

[State -1, Son空気弾 ポーズ]
type = ChangeState
value = 11040
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(3102)
;triggerall = helper(3102),stateno = 1105 || helper(3102),stateno = 1115 || helper(3102),stateno = 3102 || helper(3102),anim = 3102
triggerall = helper(3102),anim != 3103 && helper(3102),stateno != 1122 && helper(3102),stateno != 11122 && helper(3102),stateno != 3202
triggerall = command = "BOM_x" || command = "BOM_y" ||  command = "BOM_z"  
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, SoffSC第一の爆弾]
type = ChangeState
value = 3000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCF_xy" || command = "236c"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 7
trigger5 = (stateno = 250) && time >= 11
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
ignorehitpause = 1

[State -1, SonSC第一の爆弾]
type = ChangeState
value = 13000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCF_xy" || command = "236c"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
ignorehitpause = 1
;------------------------------------------------------------------------------

[State -1, SoffSC第一の爆弾設置ver]
type = ChangeState
value = 3010
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCF_yz"
triggerall = power >= 1000
;triggerall = numhelper(1001) = 0
;triggerall = numhelper(1003) = 0
;triggerall = numhelper(1004) = 0
;triggerall = numhelper(3102) = 0
;triggerall = numhelper(3013) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 7
trigger5 = (stateno = 250) && time >= 11
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
ignorehitpause = 1

[State -1, SonSC第一の爆弾設置ver]
type = ChangeState
value = 13010
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCF_yz"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
ignorehitpause = 1

[State -1, Soffキラークィーン ポーズ]
type = ChangeState
value = 3012
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
;triggerall = numhelper(3013) = 1
triggerall = helper(3013),stateno = 3013
triggerall = statetype != A
triggerall = command = "BOM_x" || command = "BOM_y" ||  command = "BOM_z"  
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 11
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = stateno = 195
ignorehitpause = 1

[State -1, Sonキラークィーン ポーズ]
type = ChangeState
value = 13012
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
;triggerall = numhelper(3013) = 1
triggerall = helper(3013),stateno = 3013
triggerall = statetype != A
triggerall = command = "BOM_x" || command = "BOM_y" ||  command = "BOM_z"  
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
trigger8 = stateno = 195
ignorehitpause = 1
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 親父];ゲージ消費
type = ChangeState
value = 2220
triggerall = var(59)<=0&& RoundState = 2 
;triggerall = !var(49)
triggerall = var(37)
triggerall = command = "holdfwd"
triggerall = command = "b"
triggerall = numhelper(2201) = 0
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 5
trigger3 = stateno = 210 && time >= 5
trigger4 = stateno = 220 && time >= 6
trigger5 = stateno = 250 && time >= 12
trigger6 = stateno = 400 && time >= 5
trigger7 = stateno = 410 && time >= 7
trigger8 = stateno = 422 && time >= 12
trigger9 = stateno = 450 && time >= 11
trigger10 = stateno = 452 && time >= 12
trigger11 = stateno = 454 && time >= 17
trigger12 = stateno = 10200 && time >= 5
trigger13 = stateno = 10210 && time >= 7
trigger14 = stateno = 10220 && time >= 10
trigger15 = stateno = 10230 && time >= 5
trigger16 = stateno = 10400 && time >= 5
trigger17 = stateno = 10410 && time >= 6
trigger18 = stateno = 10420 && time >= 8

[State -1, 親父]
type = ChangeState
value = 2200
triggerall = var(59)<=0&& RoundState = 2 
;triggerall = !var(49)
triggerall = var(37)
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = numhelper(2201) = 0
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 5
trigger3 = stateno = 210 && time >= 5
trigger4 = stateno = 220 && time >= 6
trigger5 = stateno = 250 && time >= 12
trigger6 = stateno = 400 && time >= 5
trigger7 = stateno = 410 && time >= 7
trigger8 = stateno = 422 && time >= 12
trigger9 = stateno = 450 && time >= 11
trigger10 = stateno = 452 && time >= 12
trigger11 = stateno = 454 && time >= 17
trigger12 = stateno = 10200 && time >= 5
trigger13 = stateno = 10210 && time >= 7
trigger14 = stateno = 10220 && time >= 10
trigger15 = stateno = 10230 && time >= 5
trigger16 = stateno = 10400 && time >= 5
trigger17 = stateno = 10410 && time >= 6
trigger18 = stateno = 10420 && time >= 8

[State -1, 親父]
type = ChangeState
value = 2210
triggerall = var(59)<=0&& RoundState = 2 
;triggerall = !var(49)
triggerall = var(37)
triggerall = command = "b"
triggerall = numhelper(2201) = 0
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 5
trigger3 = stateno = 210 && time >= 5
trigger4 = stateno = 220 && time >= 6
trigger5 = stateno = 250 && time >= 12
trigger6 = stateno = 400 && time >= 5
trigger7 = stateno = 410 && time >= 7
trigger8 = stateno = 422 && time >= 12
trigger9 = stateno = 450 && time >= 11
trigger10 = stateno = 452 && time >= 12
trigger11 = stateno = 454 && time >= 17
trigger12 = stateno = 10200 && time >= 5
trigger13 = stateno = 10210 && time >= 7
trigger14 = stateno = 10220 && time >= 10
trigger15 = stateno = 10230 && time >= 5
trigger16 = stateno = 10400 && time >= 5
trigger17 = stateno = 10410 && time >= 6
trigger18 = stateno = 10420 && time >= 8
;------------------------------------------------------------------------------

[State -1, 対空];ゲージ消費
type = ChangeState
value = 450
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "upper_x"
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12

[State -1, 対空2]
type = ChangeState
value = 452
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "upper_y"
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12

[State -1, 対空3]
type = ChangeState
value = 454
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "upper_z"
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12
;------------------------------------------------------------------------------
[State -1, 第一の爆弾]
type = ChangeState
value = 1000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCF_x"
triggerall = numhelper(1001) = 0
;triggerall = numhelper(1003) = 0
;triggerall = numhelper(3102) = 0
;triggerall = numhelper(3013) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12

[State -1, 第一の爆弾 中]
type = ChangeState
value = 1006
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCF_y"
triggerall = numhelper(1001) = 0
;triggerall = numhelper(1003) = 0
;triggerall = numhelper(3102) = 0
;triggerall = numhelper(3013) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12

[State -1, 第一の爆弾 強]
type = ChangeState
value = 1008
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCF_z"
triggerall = numhelper(1001) = 0
;triggerall = numhelper(1003) = 0
;triggerall = numhelper(3102) = 0
;triggerall = numhelper(3013) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12

[State -1, 第一の爆弾 点火]
type = ChangeState
value = 1005
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0 || stateno = 195
triggerall = numhelper(1003)= 1
triggerall = helper(1003),anim != 911
triggerall = helper(1003),stateno != [1010,1011]
triggerall = helper(1003),stateno != 11425
triggerall = command = "BOM_x" || command = "BOM_y" ||  command = "BOM_z"  
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12
trigger10 = stateno = 195
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, Son第一の爆弾]
type = ChangeState
value = 11000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCF_x" || command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8

[State -1, Son第一の爆弾H]
type = ChangeState
value = 11020
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8

[State -1, Son第一の爆弾 ポーズ]
type = ChangeState
value = 11030
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(1003)= 1
triggerall = helper(1003),anim != 911
triggerall = helper(1003),stateno != [1010,1011]
triggerall = helper(1003),stateno != 11425
triggerall = command = "BOM_x" || command = "BOM_y" ||  command = "BOM_z"  
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
trigger8 = stateno = 195
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, カウンター]
type = ChangeState
value = 1200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(35)
triggerall = numhelper(1001) = 0
triggerall = command = "kou_x"
triggerall = statetype != A
trigger1 = ctrl

[State -1, カウンター2]
type = ChangeState
value = 1200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(35)
triggerall = numhelper(1001) = 0
triggerall = command = "kou_y"
triggerall = statetype != A
trigger1 = ctrl

[State -1, カウンター3]
type = ChangeState
value = 1200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(35)
triggerall = numhelper(1001) = 0
triggerall = command = "kou_z"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,Son空気弾のクッション]
type = ChangeState
value = 11600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "kou_x" || command = "kou_y" || command = "kou_z"
triggerall = power >= 100
triggerall = numhelper(11602) = 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Soffガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(33)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = [150,155]);(stateno = 151 || stateno = 153)

;Sonガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(33)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = [150,155]);(stateno = 151 || stateno = 153)
;------------------------------------------------------------------------------
[State -1, シアハ]
type = ChangeState
value = 1303
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(38) = 1
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = statetype != A
triggerall = command = "46x"
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12

[State -1, シアハ]
type = ChangeState
value = 1303
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(38) = 1
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = statetype != A
triggerall = command = "46y"
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12

[State -1, シアハ]
type = ChangeState
value = 1300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(38) = 1
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = statetype != A
triggerall = command = "46z"
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12
;------------------------------------------------------------------------------
[State -1, ぶっ潰してやる！]
type = ChangeState
value = 460
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 7
trigger7 = (stateno = 422) && time >= 12
trigger8 = (stateno = 440) && time >= 12

[State -1, Sonぶっ潰してやる！]
type = ChangeState
value = 10460
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
;------------------------------------------------------------------------------
[State -1,Soff空気弾L]
type = ChangeState
value = 1100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCB_x"
triggerall = numhelper(1001) = 0
;triggerall = numhelper(3102) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12

[State -1,Soff空気弾M]
type = ChangeState
value = 1110
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCB_y"
triggerall = numhelper(1001) = 0
;triggerall = numhelper(3102) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12

[State -1,Soff接触空気弾]
type = ChangeState
value = 1120
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "QCB_z"
triggerall = numhelper(1001) = 0
;triggerall = numhelper(3102) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
trigger9 = (stateno = 440) && time >= 12
;------------------------------------------------------------------------------
[State -1,Son空気弾]
type = ChangeState
value = 11100
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCB_x"
triggerall = numhelper(1001) = 0
;triggerall = numhelper(3102) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8

[State -1,Son空気弾M]
type = ChangeState
value = 11110
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCB_y"
triggerall = numhelper(1001) = 0
;triggerall = numhelper(3102) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8

[State -1,Son接触空気弾]
type = ChangeState
value = 11120
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "QCB_z"
triggerall = numhelper(1001) = 0
;triggerall = numhelper(3102) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
;------------------------------------------------------------------------------
[State -1,Son小石を爆弾に変えた]
type = ChangeState
value = 11400
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "BOM_x" || command = "BOM_y"
;triggerall = numhelper(1003) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8

[State -1,Son小石を爆弾に変えた H]
type = ChangeState
value = 11420
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "BOM_z"  
;triggerall = numhelper(1003) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
;==============================================================================
; 移動関連
;==============================================================================
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
[State -1, 投げ]
type = ChangeState
value = 800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "c"
triggerall = statetype != A
triggerall = ctrl
;triggerall = NumHelper(1001) = 0 
;triggerall = NumHelper(1003) = 0 
trigger1 = command != "holdback"

[State -1, 投げ(後方)]
type = ChangeState
value = 801
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "c"
triggerall = statetype != A
triggerall = ctrl
;triggerall = NumHelper(1001) = 0 
;triggerall = NumHelper(1003) = 0 
trigger1 = command = "holdback"
;------------------------------------------------------------------------------
[State -1, Son投げ]
type = ChangeState
value = 10800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "LM" || command = "MH" || command = "LH"|| command = "c"
triggerall = statetype != A
triggerall = ctrl 
trigger1 = command != "holdback"

[State -1, Son投げ(後方)]
type = ChangeState
value = 10801
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "LM" || command = "MH" || command = "LH"|| command = "c"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdback"
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(31)
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
trigger1 = statetype != A && ctrl
trigger1 = command = "x+a"
value = 799
;------------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = stateno = 200 && time >= 4
trigger2 = stateno = 210 && time >= 7
trigger3 = stateno = 220 && time >= 7
trigger4 = stateno = 230 && time >= 5
trigger5 = stateno = 250 && time >= 12
trigger6 = stateno = 400 && time >= 5
trigger7 = stateno = 410 && time >= 7
trigger8 = stateno = 422 && time >= 12
trigger9 = stateno = 450 && time >= 11
trigger10 = stateno = 452 && time >= 12
trigger11 = stateno = 454 && time >= 17
trigger12 = stateno = 1000 || stateno = 1006 || stateno = 1008
trigger12 = time >= 25
trigger13 = stateno = 1100 || stateno = 1110 || stateno = 1120
trigger14 = stateno = 1300 || stateno = 1303
trigger15 = stateno = 460
trigger15 = time >= 25

trigger16 = stateno = 10200 && time >= 5
trigger17 = stateno = 10210 && time >= 7
trigger18 = stateno = 10220 && time >= 10
trigger19 = stateno = 10230 && time >= 5
trigger20 = stateno = 10400 && time >= 5
trigger21 = stateno = 10410 && time >= 6
trigger22 = stateno = 10420 && time >= 8
trigger23 = stateno = 10460 && time >= 26
trigger24 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger24 = time >= 28
trigger25 = stateno = 11100 || stateno = 11110 || stateno = 11120
trigger25 = time >= 15
trigger26 = stateno = 11400 || stateno = 11410 || stateno = 11420
trigger26 = time >= 6
trigger27 = stateno = 1005 ||stateno = 11030
trigger27 = time >= 10
value = 700
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, 擬似スタンドラッシュ]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
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
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100 || stateno = 105
;trigger2 = stateno = 200 && time >= 4
trigger2 = stateno = 400 && time >= 5

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = stateno = 400 && time >= 5
ignorhitpause = 1

[State -1,D立ち強]
type = ChangeState
value = 230
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(36)
triggerall = numhelper(1001) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, 前立ち強]
type = ChangeState
value = 250
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 6
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 7
trigger7 = (stateno = 422) && time >= 12
trigger8 = (stateno = 440) && time >= 12

[State -1, 立ち強]
type = ChangeState
value = 220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 7

[State -1, 立ち中];EBver
type = ChangeState
value = 210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 200 && time >= 4
ignorhitpause = 1

[State -1, 立ち強];EBver
type = ChangeState
value = 220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 210 && time >= 5

[State -1, 前立ち強];EBver
type = ChangeState
value = 250
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 220 && time >= 8

[State -1, 第一の爆弾SC];EBver
type = ChangeState
value = 3000
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(36)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1,ON立ち強]
type = ChangeState
value = 10220
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10200 && time >= 4
ignorhitpause = 1

[State -1, Son立ち強];EBver
type = ChangeState
value = 10220
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10210 && time >= 8

[State -1, Son第一の爆弾SC];EBver
type = ChangeState
value = 13000
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10220 && time >= 16

[State -1, Son第一の爆弾];EBver
type = null;ChangeState
value = 11000
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10220 && time >= 16
;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Son挑発]
type = ChangeState
value = 195
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = stateno = 400 && time >= 5

[State -1, しゃがみ強]
type = ChangeState
value = 422
triggerall = var(59)<=0&& RoundState = 2 
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 7
;------------------------------------------------------------------------------
[State -1,ONしゃがみ弱]
type = ChangeState
value = 10400
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10210) && time >= 8
trigger4 = (stateno = 10400) && time >= 5
trigger5 = (stateno = 10410) && time >= 6
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
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 610
;trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, ジャンプ弱]
type = ChangeState
value = 10600
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 10610
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 10620
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
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
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = (stateno = 200) && time >= 3
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 220) && time >= 7
trigger4 = (stateno = 250) && time >= 12
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 7
trigger7 = (stateno = 422) && time >= 12

;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 830
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

[State -1,バイツァ解除]
type = ChangeState
value = 14050
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "a"
triggerall = numhelper(1001)
triggerall = helper(1001),stateno = 14110
triggerall = statetype != A
trigger1 = ctrl
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
Trigger16 = Command = "AI_58"
trigger17 = Helper(50000),var(59)
;trigger18 = RoundState = 2  ;常時AI起動トリガー　
V = 59
Value = 1
IgnoreHitPause = 1---
;------------------------------------------------------------------------------
;技
;------------------------------------------------------------------------------
[State -1, SoffSC第一の爆弾];暗転返し
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(58) >= 6
triggerall = !var(49)
triggerall = life < 500
triggerall = enemynear,life < 200
triggerall = numhelper(1001) = 0
triggerall = helper(50000),var(15) > 50
triggerall = random<=var(58)*20
triggerall = P2BodyDist X = [-20,100]
triggerall = P2BodyDist Y > -80
triggerall = statetype != A
triggerall = enemynear,ctrl = 0 && enemynear,alive
triggerall = enemynear,animtime <= -15
triggerall = ifelse(enemynear,life < 200,power >= 1000,power >= 2000)
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 7
trigger5 = (stateno = 250) && time >= 11
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 422) && time >= 12
ignorehitpause = 1

[State -1, Soffチャンス];殺し切り
type = ChangeState
value = 3300
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(29) = 1
triggerall = numhelper(1001) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = enemyNear,life <= 300 || power >= 3000
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = inguarddist
trigger1 = P2BodyDist X = [-20,60]
trigger1 = enemyNear,animtime < -15
trigger1 = enemyNear,HitDefAttr=SCA,AA
trigger1 = random<=var(58)*60
ignorehitpause = 1

[State -1, Soffチャンス];殺し切り
type = ChangeState
value = 13300
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(29) = 1
triggerall = numhelper(1001) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = enemyNear,life <= 300 || power >= 3000
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = inguarddist
trigger1 = P2BodyDist X = [-20,60]
trigger1 = enemyNear,animtime < -15
trigger1 = enemyNear,HitDefAttr=SCA,AA
trigger1 = random<=var(58)*60
ignorehitpause = 1


[State -1, 立ち弱];コンボ始動
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = !var(50)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype != C
triggerall = prevstateno != 2100
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
;triggerall = !inguarddist
;triggerall = numhelper(2201) = 0

trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = P2BodyDist X = [20,35]
trigger1 = P2BodyDist Y > -60
trigger1 = ifelse(!inguarddist,random<=var(58)*6,random<=var(58)*3)

trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger2 = P2BodyDist X = [-20,35]
trigger2 = P2BodyDist Y > -60
trigger2 = p2movetype = H

trigger3 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger3 = P2BodyDist X = [-20,20]
trigger3 = P2BodyDist Y > -60
trigger3 = ifelse(!inguarddist,random<=var(58)*24,random<=var(58)*3)

trigger4 = p2statetype = A
trigger4 = stateno = 100
trigger4 = P2BodyDist X = [-20,50]
trigger4 = P2BodyDist Y > -50
trigger4 = ifelse(!inguarddist,random<=var(58)*24,random<=var(58)*8)

[State -1, 屈弱];コンボ始動
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = prevstateno != 2100
triggerall = var(47) > 40 || var(47) < -40 || var(47) = 0
;triggerall = numhelper(2201) = 0
;triggerall = !inguarddist
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = P2BodyDist X = [-20,50]
trigger1 = ifelse(!inguarddist,random<=var(58)*8,random<=var(58)*4)

trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger2 = P2BodyDist X = [-20,20]
trigger2 = ifelse(!inguarddist,random<=var(58)*24,random<=var(58)*8)

trigger3 = stateno = 52 && !animtime
trigger3 = P2BodyDist X = [-20,50]
trigger3 = numtarget

trigger4 = p2statetype != A
trigger4 = stateno = 100
trigger4 = P2BodyDist X = [-20,60]
trigger4 = ifelse(!inguarddist,random<=var(58)*24,random<=var(58)*8)

[State -1, 屈弱];保険
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) != 1
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = prevstateno != 2100
trigger1 = stateno = 100 && numtarget
trigger1 = P2BodyDist X = [-20,20]
trigger2 = stateno = 52 && !animtime
trigger2 = P2BodyDist X = [-20,30]
trigger2 = stateno = 950 && !animtime
trigger2 = P2BodyDist X = [-20,45]

[State -1, 立弱];保険
type = ChangeState
value = 200
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2statetype != L
triggerall = prevstateno != 2100
triggerall = P2BodyDist Y = [-50,10]
trigger1 = stateno = 100 && numtarget
trigger1 = P2BodyDist X = [-20,20]
trigger2 = stateno = 52 && !animtime
trigger2 = P2BodyDist X = [-20,30]
trigger3 = stateno = 950 && !animtime
trigger3 = P2BodyDist X = [-20,45]


[State -1, 空中弱];空対空
type = ChangeState
value = 600
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(50)
triggerall = !var(49)
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = random<=var(58)*12
trigger1 = p2statetype = A
trigger1 = vel y > 0
trigger1 = pos y < -25
trigger1 = P2BodyDist X = [0,30]
trigger1 = P2BodyDist Y = [-20,60]

[State -1, 空中中];空中攻撃
type = ChangeState
value = 610
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
triggerall = !var(49)
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = random<=var(58)*25
trigger1 = vel x >= 0
trigger1 = vel y >= 0
trigger1 = pos y < -50
trigger1 = P2BodyDist X = [40,80]

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
trigger1 = random<=var(58)*30
trigger1 = vel x >= 0
trigger1 = vel y >= 0
trigger1 = pos y < -60
trigger1 = P2BodyDist X = [-20,70]

[State -1, 立強];牽制
type = ChangeState
value = 220
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = numhelper(2201) = 0
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = P2BodyDist X = [60,80]
trigger1 = ifelse(!inguarddist,random<=var(58)*4,random<=var(58)*2)

[State -1, D立強];奇襲
type = ChangeState
value = 230
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = p2statetype != C
triggerall = p2statetype != L
triggerall = numhelper(3102) = 0
triggerall = !numtarget
triggerall = var(47) > 90 || var(47) < -20 || var(47) = 0
;trigger1 = ctrl
trigger1 = stateno = 100
trigger1 = P2BodyDist X = [100,150]
trigger1 = P2BodyDist Y > -60
trigger1 = ifelse(!inguarddist,random<=var(58)*3,random<=var(58)*1)

trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger2 = P2BodyDist X = [80,150]
trigger2 = P2BodyDist Y > -60
trigger2 = enemynear,ctrl = 0 && enemynear,alive
trigger2 = ifelse(!inguarddist,random<=var(58)*5,random<=var(58)*2)

[State -1, 屈中];牽制
type = ChangeState
value = 410
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = enemynear,movetype != H
trigger1 = ctrl
trigger1 = P2BodyDist X = [50,80]
trigger1 = ifelse(!inguarddist,random<=var(58)*4,random<=var(58)*2)

[State -1, しばA];対空
type = ChangeState
value = 450
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = P2BodyDist X = [80,120]
trigger1 = P2BodyDist Y < -30
trigger1 = enemynear,vel x > 0
trigger1 = ifelse(!inguarddist,random<=var(58)*6,random<=var(58)*6)

[State -1, しばA];遅め対空
type = ChangeState
value = 454
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = P2BodyDist X = [120,160]
trigger1 = P2BodyDist Y < -30
trigger1 = enemynear,vel x > 0
trigger1 = ifelse(!inguarddist,random<=var(58)*6,random<=var(58)*6)

[State -1, ぶっつぶ];対空&中段
type = ChangeState
value = 460
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !inguarddist
triggerall = !numtarget
triggerall = enemynear,movetype != H
triggerall = enemynear,vel x <= 0
trigger1 = ctrl
trigger1 = P2BodyDist X = [60,100]
trigger1 = P2BodyDist Y > -90
trigger1 = ifelse(p2statetype = C,random<=var(58)*2,random<=var(58)*1)

[State -1, 自信];カウンター
type = ChangeState
value = 1200
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !numtarget
triggerall = var(47) = 0
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = P2BodyDist X = [-20,60]
trigger1 = ifelse(p2movetype = A,random<=var(58)*6,random<=var(58)*1)

[State -1,Soff手動空気弾];飛び道具
type = ChangeState
value = 1100
triggerall = var(59) = 1 && RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = statetype != A
triggerall = var(47) > 90 || var(47) < -10 || var(47) = 0
trigger1 = p2statetype = L && p2stateno != 5120
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = P2BodyDist X = [80,150]
trigger1 = ifelse(!inguarddist,random<=var(58)*8,random<=var(58)*1)

[State -1,Soff接触空気弾];飛び道具
type = ChangeState
value = 1120
triggerall = var(59) = 1 && RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0; || (enemynear,pos x) - (helper(3102),pos x) < -50
triggerall =  helper(3102),anim != 3102 && helper(3102),anim != 1022
;triggerall = var(47) > 50 || var(47) < -20 || var(47) = 0
;triggerall = enemynear,stateno != [20,21]
;triggerall = enemynear,stateno != [100,106]
triggerall = !inguarddist
triggerall = statetype != A
trigger1 = enemynear,ctrl = 0 && enemynear,animtime < -25
trigger1 = p2statetype != A
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = P2BodyDist X > 130
;trigger2 = enemynear,ctrl = 0 && enemynear,animtime < -25
;trigger2 = p2statetype = A
trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger2 = P2BodyDist X > 180
trigger3 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger3 = p2statetype = L
trigger3 = P2BodyDist X > 120
trigger3 = random<=var(58)*5

[State -1,Soff接触空気弾];飛び道具
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0 || helper(3102),anim = 3103
triggerall = statetype != A
triggerall = var(47) > 50 || var(47) < -20 || var(47) = 0
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105 || stateno = 195
;trigger1 = stateno = 1005 && animtime = 0
trigger1 = enemynear,movetype = H
trigger1 = P2BodyDist X > 150

[State -1, 第一の爆弾 点火]
type = ChangeState
value = 1005
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003)= 1
triggerall = helper(1003),anim != 911
triggerall = helper(1003),stateno != [1010,1011]
triggerall = helper(1003),stateno != 11425
triggerall = p2movetype != H
triggerall = p2statetype != L
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105 || stateno = 195
trigger1 = statetype != A
trigger1 = P2BodyDist X = [-20,60]
trigger1 = random<=var(58)*6

trigger2 = statetype != A
trigger2 = P2BodyDist X > 80
trigger2 = random<=var(58)*4

trigger3 = statetype != A
trigger3 = P2statetype = A
trigger3 = random<=var(58)*10

trigger4 = statetype != A
trigger4 = enemynear,alive && enemynear,ctrl = 0 &&  enemynear,movetype != H
trigger4 = enemynear,ctrl = 0
trigger4 = P2BodyDist X > 60
trigger4 = random<=var(58)*14

trigger5 = statetype != A
trigger5 = enemynear,alive && enemynear,ctrl = 0 &&  enemynear,movetype != H
trigger5 = P2BodyDist X = [60,100]
trigger5 = random<=var(58)*14
ignorehitpause = 1

[State -1, 第一の爆弾 点火SON]
type = ChangeState
value = 11030
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(1003)= 1
triggerall = helper(1003),anim != 911
triggerall = helper(1003),stateno != [1010,1011]
triggerall = helper(1003),stateno != 11425
triggerall = p2movetype != H
triggerall = p2statetype != L
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = statetype != A
trigger1 = P2BodyDist X = [-20,60]
trigger1 = random<=var(58)*2

trigger2 = statetype != A
trigger2 = P2BodyDist X > 80
trigger2 = random<=var(58)*3

trigger3 = statetype != A
trigger3 = P2statetype = A
trigger3 = random<=var(58)*8

trigger4 = statetype != A
trigger4 = enemynear,alive && enemynear,ctrl = 0 &&  enemynear,movetype != H
trigger4 = enemynear,ctrl = 0
trigger4 = P2BodyDist X > 60
trigger4 = random<=var(58)*12
ignorehitpause = 1

[State -1, 空気弾 点火]
type = ChangeState
value = 3104
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(3102) = 1
triggerall = helper(3102),anim = 3102
triggerall = helper(3102),anim != 3103 && helper(3102),stateno != 1122 && helper(3102),stateno != 11122 && helper(3102),stateno != 3202
triggerall = !inguarddist || life > 100
trigger1 = (enemynear,pos x) - (helper(3102),pos x) = [-50,50]
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105 || stateno = 195
trigger1 = random<=var(58)*15
ignorehitpause = 1

[State -1, 空気弾 点火]
type = ChangeState
value = 11040
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49)
triggerall = numhelper(3102) = 1
triggerall = helper(3102),anim = 3102
triggerall = helper(3102),anim != 3103 && helper(3102),stateno != 1122 && helper(3102),stateno != 11122 && helper(3102),stateno != 3202
triggerall = !inguarddist || life > 100
trigger1 = (enemynear,pos x) - (helper(3102),pos x) = [-50,50]
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105 || stateno = 195
trigger1 = random<=var(58)*15
ignorehitpause = 1

[State -1, 前掴み];前投げ
type = ChangeState
value = 800
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
trigger1 = !inguarddist
trigger1 = ctrl
trigger1 = P2BodyDist X = [-20,40]
trigger1 = random<=var(58)*10
;------------------------------------------------------------------------------
;Son
;------------------------------------------------------------------------------
[State -1, SonSC第一の爆弾];暗転返し
type = ChangeState
value = 13000
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(58) >= 6
;triggerall = life < 500
triggerall = helper(50000),var(15) > 50
triggerall = random<=var(58)*20
triggerall = P2BodyDist X = [-20,100]
triggerall = P2BodyDist Y > -80
triggerall = statetype != A
triggerall = enemynear,animtime <= -15
triggerall = enemynear,ctrl = 0 && enemynear,alive
triggerall = enemynear,life < 200
triggerall = ifelse(enemynear,life < 200,power >= 1000,power >= 2000)
triggerall = !numtarget
trigger1 = ctrl
trigger2 = stateno = 10200 && time >= 5
trigger3 = stateno = 10210 && time >= 7
trigger4 = stateno = 10220 && time >= 10
trigger5 = stateno = 10400 && time >= 5
trigger6 = stateno = 10410 && time >= 6
trigger7 = stateno = 10420 && time >= 8
ignorehitpause = 1

[State -1, 立ち弱];コンボ始動
type = ChangeState
value = 10200
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = !var(50)
triggerall = statetype != A
triggerall = p2statetype != C
triggerall = p2statetype != L
triggerall = var(47) > 30 || var(47) < -20 || var(47) = 0
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,55]
trigger1 = P2BodyDist Y > -60
trigger1 = ifelse(!inguarddist,random<=var(58)*15,random<=var(58)*3)

trigger2 = stateno = 100 || stateno = 105
trigger2 = P2BodyDist X = [-20,65]
trigger2 = P2BodyDist Y > -60
trigger2 = ifelse(!inguarddist,random<=var(58)*15,random<=var(58)*3)

trigger3 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger3 = P2BodyDist X = [-20,30]
trigger3 = p2movetype = H

[State -1, 屈弱];コンボ始動
type = ChangeState
value = 10400
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = !var(50)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = var(47) > 30 || var(47) < -20 || var(47) = 0
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41
trigger1 = P2BodyDist X = [-20,45]
trigger1 = ifelse(!inguarddist,random<=var(58)*15,random<=var(58)*4)
trigger2 = stateno = 100 || stateno = 105
trigger2 = P2BodyDist X = [-20,55]
trigger2 = ifelse(!inguarddist,random<=var(58)*15,random<=var(58)*4)
trigger3 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger3 = P2BodyDist X = [-20,30]
trigger3 = p2movetype = H

[State -1, 屈中];牽制
type = ChangeState
value = 10410
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = P2BodyDist X = [50,80]
trigger1 = ifelse(!inguarddist,random<=var(58)*3,random<=var(58)*2)

[State -1, 屈強];牽制
type = ChangeState
value = 10420
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = P2BodyDist X = [60,110]
trigger1 = ifelse(!inguarddist,random<=var(58)*3,random<=var(58)*2)
trigger2 = stateno = 10410 && movehit
trigger2 = P2BodyDist X = [60,90]

[State -1, 屈強];牽制
type = ChangeState
value = 10220
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 10410 && movehit
trigger1 = P2BodyDist X = [-20,90]

[State -1, 空中弱];空対空
type = ChangeState
value = 10600
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(50)
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = random<=var(58)*12
trigger1 = p2statetype = A
trigger1 = vel y > 0
trigger1 = pos y < -25
trigger1 = P2BodyDist X = [0,30]
trigger1 = P2BodyDist Y = [-60,60]

[State -1, 空中中];空中攻撃
type = ChangeState
value = 10610
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = random<=var(58)*25
trigger1 = vel x >= 0
trigger1 = vel y >= 0
trigger1 = pos y < -50
trigger1 = P2BodyDist X = [-20,50]
trigger1 = P2BodyDist Y = [0,100]

[State -1, 空中強];空中攻撃
type = ChangeState
value = 10620
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(50)
triggerall = var(49) = 10000
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = random<=var(58)*30
trigger1 = vel x >= 0
trigger1 = vel y >= 0
trigger1 = pos y < -60
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [0,100]

[State -1, 前掴み];前投げ
type = ChangeState
value = 10800
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
trigger1 = !inguarddist
trigger1 = ctrl
trigger1 = P2BodyDist X = [-20,40]
trigger1 = random<=var(58)*10

[State -1, D立強];奇襲
type = ChangeState
value = 10230
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = stateno = 100
triggerall = statetype != A
triggerall = p2statetype != C
triggerall = p2statetype != L
triggerall = numhelper(3102) = 0
;trigger1 = ctrl
trigger1 = P2BodyDist X = [100,150]
trigger1 = P2BodyDist Y > -60
trigger1 = ifelse(!inguarddist,random<=var(58)*3,random<=var(58)*1)

trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger2 = P2BodyDist X = [80,150]
trigger2 = P2BodyDist Y > -60
trigger2 = enemynear,ctrl = 0 && enemynear,alive
trigger2 = ifelse(!inguarddist,random<=var(58)*5,random<=var(58)*2)

[State -1,Son接触空気弾]
type = ChangeState
value = 11120
triggerall = var(59) = 1 && RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(1003) = 0
triggerall =  helper(3102),anim != 3102 && helper(3102),anim != 1022
triggerall = var(47) > 90 || var(47) < -10 || var(47) = 0
;triggerall = p2movetype != H
;triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = P2BodyDist X > 150
trigger1 = ifelse(!inguarddist,random<=var(58)*8,random<=var(58)*2)

[State -1,Son接触小石]
type = ChangeState
value = 11420
triggerall = var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = power >= 100
triggerall = numhelper(1003) = 0
triggerall = !inguarddist
triggerall = statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist X = [150,220]
trigger1 = random<=var(58)*3

trigger2 = ctrl
trigger2 = P2Statetype = L
trigger2 = P2BodyDist X = [80,220]
trigger2 = random<=var(58)*2

[State -1,Son空気弾のクッション]
type = ChangeState
value = 11600
triggerall = var(59) = 1 && RoundState = 2
triggerall = var(49) = 10000
triggerall = power >= 100
triggerall = numhelper(11602) = 0
triggerall = statetype != A
triggerall = !inguarddist
triggerall = var(47) > 90 || var(47) < -10 || var(47) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X > 80 && enemynear,ctrl = 0
trigger1 = random<=var(58)*5

trigger2 = ctrl
trigger2 = P2Statetype = L
trigger2 = random<=var(58)*5
;------------------------------------------------------------------------------
;基本動作
;------------------------------------------------------------------------------
[State -1, 歩く]
type = ChangeState
value = 20
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = ctrl
;triggerall = !inguarddist
;triggerall = p2movetype != A
triggerall = var(50) = 0
triggerall = stateno != [20,21]
triggerall = numhelper(1001) = 0

trigger1 = !numhelper(11602)
trigger1 = p2statetype != L
trigger1 = P2BodyDist X > 120
trigger1 = random<=var(58)*3

trigger2 = numhelper(11602)
trigger2 = p2statetype != L
trigger2 = P2BodyDist X > 120
trigger2 = random<=var(58)*6

trigger3 = ctrl
trigger3 = numhelper(3102)

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = !numhelper(1004)
triggerall = helper(3102),anim != 3103
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 105
triggerall = !inguarddist
triggerall = p2movetype != A
triggerall = var(50) = 0
triggerall = stateno != [100,101]
triggerall = numhelper(1001) = 0

trigger1 = p2statetype != L
trigger1 = enemynear,alive && enemynear,ctrl = 0
trigger1 = P2BodyDist X = [20,120]
trigger1 = random<=var(58)*6

trigger2 = p2statetype != L
trigger2 = enemynear,alive && enemynear,ctrl = 0
trigger2 = P2BodyDist X > 120
trigger2 = random<=var(58)*2

trigger3 = p2statetype != L
trigger3 = enemynear,movetype = H && enemynear,alive && enemynear,ctrl = 0
trigger3 = P2BodyDist X = [-20,120]
trigger3 = random<=var(58)*15

trigger4 = p2statetype != L
trigger4 = enemynear,alive && enemynear,ctrl = 0 && enemynear,animtime < -10
trigger4 = P2BodyDist X = [-20,80]
trigger4 = random<=var(58)*20

trigger5 = P2BodyDist X > 40
trigger5 = numhelper(11602)
trigger5 = random<=var(58)*20

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [105,106]
trigger1 = p2statetype = A
trigger1 = enemynear,vel x > 0; && enemynear,alive
trigger1 = P2BodyDist X = [50,120]
trigger1 = ifelse(!inguarddist,random<=var(58)*5,random<=var(58)*2)

trigger2 = P2BodyDist X = [-20,100]
trigger2 = random<=var(58)*5
trigger2 = p2statetype = L

trigger3 = numhelper(1001) = 1
trigger3 = random<=var(58)*8
trigger3 = P2BodyDist X = [-20,100]

trigger4 = !inguarddist
trigger4 = numtarget
trigger4 = !animtime
trigger4 = stateno = 1100 && stateno = 1120
trigger4 = P2BodyDist X = [-20,80]

trigger5 = !inguarddist
trigger5 = backedgedist > 80
trigger5 = stateno = 11420 && !animtime
trigger5 = P2BodyDist X > 80

;Soffガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = helper(50000),var(16) > 50
triggerall = var(33)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 2000
triggerall = enemynear,animtime <= -10
trigger1 = P2BodyDist X = [20,80]
trigger1 = (stateno = [150,155])
trigger1 = random<=var(58)*4

;Sonガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = helper(50000),var(16) > 50
triggerall = var(33)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 2000
triggerall = enemynear,animtime <= -10
trigger1 = P2BodyDist X = [20,80]
trigger1 = (stateno = [150,155])
trigger1 = random<=var(58)*4

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = ctrl
trigger1 = life >= 1000
trigger1 = var(58) <= 8
trigger1 = p2statetype = L
trigger1 = random<=var(58)*2
;------------------------------------------------------------------------------
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 16000
triggerall = var(59)=1&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !inguarddist
triggerall = life > 500
triggerall = var(47) > 90 || var(47) < -10 || var(47) = 0
trigger1 = var(47) > 120
trigger1 = var(47) < -60
trigger1 = ctrl
trigger1 = P2BodyDist X > 180 && enemynear,ctrl = 0
trigger1 = random = [0,20]

trigger2 = var(47) = 0
trigger2 = ctrl
trigger2 = P2BodyDist X > 180 && enemynear,ctrl = 0
trigger2 = random = [0,20]

trigger3 = var(47) = 0
trigger3 = ctrl
trigger3 = P2BodyDist X > 120 && enemynear,statetype = L
trigger3 = random = [0,40]
ignorehitpause = 0
;------------------------------------------------------------------------------
[State -1, AAAジャンプ];前ジャンプ攻め
type = ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = !inguarddist ||p2statetype = C
triggerall = p2statetype != L
triggerall = !numtarget
triggerall = numhelper(1004) = 0
trigger1 = numhelper(1003) = 0
trigger1 = ctrl || stateno = 21 || (stateno = [120,149])
trigger1 = P2BodyDist X = [30,120]
trigger1 = P2BodyDist Y > -80
trigger1 = ifelse(p2statetype != A,random<=var(58)*8,random<=var(58)*2)

trigger2 = numhelper(1003) = 0
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [120,180]
trigger2 = P2BodyDist Y > -80
trigger2 = ifelse(p2statetype != A,random<=var(58)*3,random<=var(58)*1)

trigger3 = numhelper(1003) = 0
trigger4 = stateno != 100
trigger3 = ctrl || stateno = 21 || (stateno = [120,149])
trigger3 = P2BodyDist X = [20,100]
trigger3 = P2BodyDist Y > -80
trigger3 = ifelse(p2statetype != A,random<=var(58)*1,random<=var(58)*0)

trigger4 = numhelper(1003) = 0
trigger4 = stateno != 100
trigger4 = ctrl || stateno = 21 || (stateno = [120,149])
trigger4 = P2BodyDist X = [-20,30]
trigger4 = P2BodyDist Y > -80
trigger4 = ifelse(p2statetype != A,random<=var(58)*2,random<=var(58)*0)

[State -1, ジャンプ];対飛び道具ジャンプ
type = 	ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !numtarget
triggerall = numhelper(1003) = 0
triggerall = numhelper(1004) = 0
triggerall = ctrl || (stateno = [120,149])
trigger1 = var(47) <= 60
trigger1 = var(47) >= -20
trigger1 = var(47) != 0
trigger1 = enemynear,ctrl = 0 && enemynear,animtime < -20

[State -1, ジャンプ];後ジャンプ後退
type = ChangeState
value = 40
triggerall = var(59)=1&& RoundState = 2 
;triggerall = !var(49)
triggerall = statetype != A
triggerall = !inguarddist
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = p2statetype != L
trigger1 = numhelper(1003) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X = [50,90]
trigger1 = P2BodyDist Y > -80
trigger1 = ifelse(p2statetype != A,random<=var(58)*4,random<=var(58)*0)
;---------------------------------------------------------------------------
;Soffアドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
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
value = 4100

;Soffアドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = !var(49)
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
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
value = 4105

;Sonアドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = power >= 100
triggerall = statetype = S
triggerall = enemynear,animtime > -20
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
value = 14400

;Sonアドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = var(32)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
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
value = 14405
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(31)
triggerall = statetype != A
triggerall = !numtarget
triggerall = prevstateno != 950
triggerall = numhelper(1003) = 0
triggerall = enemynear,HitDefAttr != SCA, NT,ST,HT

trigger1 = helper(1001),stateno = 14110
Trigger1 = EnemyNear,MoveType = A
Trigger1 = EnemyNear,ctrl = 0
Trigger1 = EnemyNear,alive && enemynear,animtime < -40
trigger1 = random<=var(58)*25
trigger1 = P2BodyDist X = [-20,80]
trigger1 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

Trigger2 = EnemyNear,MoveType != H
Trigger2 = EnemyNear,StateType != L
Trigger2 = EnemyNear,ctrl = 0
trigger2 = random<=var(58)*30
trigger2 = P2BodyDist X >= 0
Trigger2 = enemynear,animtime < -35 || p2bodydist x > 150
trigger2 = var(47) <= 90
trigger2 = var(47) >= -10
trigger2 = var(47) != 0
trigger2 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41

trigger3 = helper(1001),stateno = 14110
trigger3 = backedgedist < 20
Trigger3 = EnemyNear,MoveType = A
Trigger3 = EnemyNear,alive && enemynear,animtime < -15
trigger3 = random<=var(58)*25
trigger3 = P2BodyDist X = [-20,80]
trigger3 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105

trigger4 = helper(1001),stateno = 14110
Trigger4 = EnemyNear,MoveType = A
Trigger4 = EnemyNear,alive && enemynear,animtime < -15
trigger4 = random<=var(58)*25
trigger4 = P2BodyDist X = [-20,30]
trigger4 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105

trigger5 = helper(1001),stateno = 14110
trigger5 = backedgedist < 20
trigger5 = random<=var(58)*25
trigger5 = P2BodyDist X = [-20,50]
trigger5 = ctrl || stateno = 21 || (stateno = [120,149]) || stateno = 40 || stateno = 41
value = 799
;------------------------------------------------------------------------------
;ガード
[state -1, Guard]
type = ChangeState
value = 120
triggerall = var(59)
triggerall = NumHelper(1001) = 0
triggerall = roundstate = 2
triggerall = InGuardDist
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
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
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
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
triggerall = NumHelper(1001) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
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
;------------------------------------------------------------------------------
;コンボルートEX(保険)
;------------------------------------------------------------------------------
;コンボルート1(Soff,基本)
[State -1, 前立強]
type = null;ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 0
triggerall = numhelper(2201) = 0
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = stateno = 220 && movecontact
trigger1 = P2BodyDist X = [-20,120]
trigger2 = p2statetype != A
trigger2 = stateno = 410 && movecontact
trigger2 = P2BodyDist X = [-20,60]
;------------------------------------------------------------------------------
;コンボルートEX(被ガード時)
;------------------------------------------------------------------------------
[State -1, 屈強]
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = stateno = 210 && moveguarded
trigger1 = P2BodyDist X = [-20,60]
trigger1 = P2BodyDist Y > -60
;------------------------------------------------------------------------------
;コンボルート4(SOFFバイツァB)
;------------------------------------------------------------------------------
;コンボルート4(Soff,バイツァ)
[State -1, 立中]
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = life < 300 && power > 1600
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,50]
trigger1 = P2BodyDist Y > -60
trigger2 = stateno = 400 && movecontact
trigger2 = P2BodyDist X = [-20,50]
trigger2 = P2BodyDist Y > -60

;コンボルート4(Soff,バイツァ)
[State -1, 打ち上げ]
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = life < 300 && power > 1600
triggerall = var(50) != 11
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,80]
trigger1 = P2BodyDist Y > -60
trigger2 = stateno = 400 && movecontact
trigger2 = P2BodyDist X = [-20,80]
trigger2 = P2BodyDist Y > -60
trigger3 = stateno = 210 && movecontact
trigger3 = P2BodyDist X = [-20,80]
trigger3 = P2BodyDist Y > -60

[State -1, varset]
type = varset
triggerall = life < 300 && power > 1600
trigger1 = stateno = 422 && movehit
var(50) = 20
ignorhitpause = 1

;コンボルート4(Soff,バイツァ)
[State -1, DUSH]
type = ChangeState
value = 98090
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 20
triggerall = statetype != A
triggerall = life < 300 && power > 1600
trigger1 = stateno = 422 && !animtime && numtarget
trigger1 = P2BodyDist X = [-20,120]

;コンボルート4(Soff,バイツァ)
[State -1, H第一の爆弾]
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) != 4
triggerall = var(50) = 20
triggerall = var(40) >= 6
triggerall = target,life > 100
trigger1 = stateno = 422 && movehit && numtarget
trigger1 = P2BodyDist X = [-20,80]

;コンボルート4(Soff,バイツァ)
[State -1, H空気弾]
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) != 4
triggerall = var(50) = 20
triggerall = var(40) >= 10
trigger1 = stateno = 422 && movehit && numtarget
trigger1 = P2BodyDist X = [-20,80]

;コンボルート4(Soff,バイツァ)
[State -1, バイツァ]
type = ChangeState
value = 14000
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = life < 300 && power > 2000
triggerall = !inguarddist
;trigger1 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105
trigger1 = helper(1004),numtarget
trigger1 = P2BodyDist X > 150
trigger1 = stateno = 1005 && animtime = 0

trigger2 = helper(1004),numtarget
trigger2 = P2BodyDist X > 150
trigger2 = stateno = 11030 && animtime = 0

trigger3 = helper(3102),numtarget
trigger3 = P2BodyDist X > 150
trigger3 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100 || stateno = 105

;trigger4 = ctrl
;------------------------------------------------------------------------------
;コンボルート3(Son,強)
;------------------------------------------------------------------------------
[State -1, Son第一の爆弾];(Soff,非高体力時,SRルート)
type = ChangeState
value = 11000
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = power >= 250
;triggerall = life < 850 || var(58) = 0
trigger1 = stateno = 10220 && animelemtime(10) = 1 && movecontact
trigger1 = P2BodyDist X = [-20,100]

[State -1, SR];(Soff,SRしないルート)
type = ChangeState
value = 11120
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = stateno = 10220 && animelemtime(10) = 1 && movecontact

[State -1, SR];(Soff,非高体力時,SRルート)
type = ChangeState
value = 2100
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = power >= 250
triggerall = var(58) > 6
trigger1 = stateno = 11000 && time = 8
trigger1 = numtarget

[State -1, 距離つめ→立ち弱→(KQHIT)→立ち弱];(Soff,非高体力時,SRルート)
type = ChangeState
value = 98000
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 0
triggerall = statetype != A
triggerall = power >= 250
triggerall = life < 850 || var(58) > 8
trigger1 = stateno = 2100 && time = 1
trigger1 = P2BodyDist X = [-20,100]
;------------------------------------------------------------------------------
;コンボルート2(Son)
;------------------------------------------------------------------------------
[State -1, Son立中]
type = ChangeState
value = 10210
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
;triggerall = life > 500
trigger1 = stateno = 10200 && movecontact
trigger1 = P2BodyDist X = [-20,50]
trigger1 = P2BodyDist Y > -50
trigger2 = stateno = 10400 && movecontact
trigger2 = P2BodyDist X = [-20,50]
trigger1 = P2BodyDist Y > -60

[State -1, Son立強]
type = ChangeState
value = 10220
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
;triggerall = life > 500
trigger1 = stateno = 10200 && movecontact
trigger1 = P2BodyDist X = [50,100]
trigger1 = P2BodyDist Y > -50
trigger2 = stateno = 10210 && movecontact
trigger2 = P2BodyDist X = [-20,100]
trigger2 = P2BodyDist Y > -60

;コンボルート1(Soff,基本,締め)
[State -1, SC第一の爆弾]
type = null;ChangeState
value = 13000
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 1000
;triggerall = numhelper(2201) != 0
triggerall = target,life >= 30
triggerall = target,life < 300 || power >= 1500
trigger1 = stateno = 10220 && animelemtime(10) = 1 && movehit
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y > -50

[State -1, Son接触空気弾]
type = null;ChangeState
value = 11120
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
;triggerall = p2statetype != A
;triggerall = life > 500
triggerall = var(50) = 0
trigger1 = stateno = 10220 && animelemtime(10) = 1 && movehit
trigger1 = P2BodyDist X = [-20,80]
trigger1 = P2BodyDist Y > -80

[State -1, Son手動空気弾]
type = null;ChangeState
value = 11110
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
;triggerall = p2statetype != A
;triggerall = life > 500
trigger1 = stateno = 10220 && animelemtime(10) = 1 && movecontact
trigger1 = P2BodyDist X = [-20,80]
trigger1 = P2BodyDist Y > -80
;------------------------------------------------------------------------------
;コンボルート1.5(Soff,ゲージ無い場合)
;------------------------------------------------------------------------------
;コンボルート1.5(Soff,ゲージ無い)
[State -1, 立中]
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = power < 500 || target,life < 200
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,50]
trigger1 = P2BodyDist Y > -60
trigger2 = stateno = 400 && movecontact
trigger2 = P2BodyDist X = [-20,50]
trigger2 = P2BodyDist Y > -60

[State -1, varset]
type = varset
triggerall = var(50) != 11
trigger1 = power < 1500 || target,life < 200
trigger1 = stateno = 210 && movecontact
trigger2 = power < 1500 && var(50) = 1
trigger2 = stateno = 210 && movecontact
trigger3 = power < 1500 || target,life < 200
trigger3 = stateno = 422 && movecontact
var(50) = 10

;コンボルート1.5(Soff,ゲージ無い)
[State -1, 打ち上げ]
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power < 1500 || target,life < 200
triggerall = var(50) != 11
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,80]
trigger1 = P2BodyDist Y > -60
trigger2 = stateno = 400 && movecontact
trigger2 = P2BodyDist X = [-20,80]
trigger2 = P2BodyDist Y > -60
trigger3 = stateno = 210 && movecontact
trigger3 = P2BodyDist X = [-20,80]
trigger3 = P2BodyDist Y > -60

;コンボルート1.5(Soff,ゲージ無い,締め)
[State -1, H第一の爆弾]
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) != 4
triggerall = var(50) != 20
triggerall = var(50) = 10
triggerall = var(40) >= 6
triggerall = var(40) < 10
trigger1 = stateno = 422 && movehit && numtarget
trigger1 = target,backedgedist < 20
trigger1 = P2BodyDist X = [-20,80]

;コンボルート1.5(Soff,ゲージ無い)
[State -1, 点火]
type = ChangeState
value = 1005
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 10
triggerall = statetype != A
trigger1 = stateno = 1000 && !animtime && numtarget
trigger1 = target,statetype = L
trigger1 = P2BodyDist X = [-20,80]

;コンボルート1.5(Soff,ゲージ無い,締め)
[State -1, 待ち]
type = ChangeState
value = 98072
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) = 10
trigger1 = stateno = 1000 && !animtime && numtarget
trigger1 = P2BodyDist X = [-20,120]

;コンボルート1.5(Soff,ゲージ無い,締め)
[State -1, ダッシュ]
type = ChangeState
value = 98073
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) = 10
;trigger1 = var(40) > 15
trigger1 = stateno = 1005 && !animtime && numtarget
trigger1 = P2BodyDist X = [-20,120]

;コンボルート1.5(Soff,ゲージ無い,締め)
[State -1, どうしようもないな]
type = null;ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) = [10,11]
triggerall = var(40) < 15
triggerall = power >= 1000
trigger1 = stateno = 422 && movehit && numtarget
trigger1 = P2BodyDist X = [-20,100]

;コンボルート1.5(Soff,ゲージ無い,締め)
[State -1, どうしようもないな]
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) != 20
triggerall = var(50) = 10
triggerall = var(40) >= 10
triggerall = numhelper(1003) = 0
triggerall = target,pos y < -20
triggerall = target,life < 150
triggerall = power >= 1000
trigger1 = stateno = 422 && movehit && numtarget
trigger1 = P2BodyDist X = [-20,100]

;コンボルート1.5(Soff,ゲージ無い,締め)
[State -1, L空気弾]
type = ChangeState
value = 1100
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) = 10
triggerall = var(40) > 25
trigger1 = target,pos y < -40
trigger1 = stateno = 422 && movehit && numtarget
trigger1 = P2BodyDist X = [-20,100]

;コンボルート1.5(Soff,ゲージ無い,締め)
[State -1, H空気弾]
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) != 20
triggerall = var(50) = 10
triggerall = var(40) >= 10 && target,statetype = A
triggerall = numhelper(1003) = 0
triggerall = target,pos y < -20
trigger1 = stateno = 422 && movehit && numtarget
trigger1 = P2BodyDist X = [-20,100]

;コンボルート1.5(Soff,ゲージ無い)
[State -1, ダッシュ]
type = ChangeState
value = 98070
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) = 10
triggerall = target,statetype = A
trigger1 = stateno = 422 && !animtime && numtarget
trigger1 = P2BodyDist X = [-20,80]
;trigger1 = P2BodyDist Y < -40

;コンボルート1.5(Soff,ゲージ無い)
[State -1, 打ち上げ]
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 10
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,80]

;コンボルート1.5(Soff,ゲージ無い)
[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 11
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,50]

;コンボルート1.5(Soff,ゲージ無い)
[State -1, 屈み強]
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 11
triggerall = statetype != A
trigger1 = stateno = 210 && movecontact
trigger1 = P2BodyDist X = [-20,80]

;コンボルート1.5(Soff,ゲージ無い)
[State -1, H空気弾]
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1003) = 0
triggerall = var(50) != 20
triggerall = var(50) = 11
triggerall = statetype != A
trigger1 = stateno = 422 && movecontact
trigger1 = P2BodyDist X = [-20,80]
;------------------------------------------------------------------------------
;コンボルート1(Soff,基本)
;------------------------------------------------------------------------------
[State -1, しゃがみ弱];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = numhelper(2201) != 0
trigger1 = stateno = 400 && time = 7
trigger1 = P2BodyDist X = [-20,20]

[State -1, 立中];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = numhelper(2201) != 0
trigger1 = stateno = 400 && movecontact
trigger1 = P2BodyDist X = [-20,50]

[State -1, 屈強];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = numhelper(2201) != 0
trigger1 = stateno = 210 && movecontact
trigger1 = P2BodyDist X = [-20,80]

[State -1, ダッシュ];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 98050
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 2
triggerall = statetype != A
trigger1 = stateno = 422 && !animtime
trigger1 = numtarget

[State -1, 屈強];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 3
triggerall = statetype != A
trigger1 = stateno = 200 && time = 4
trigger1 = P2BodyDist X = [-20,80]

[State -1, どうしようもないな];(Soff,基本,QスタONルート締め,SEC1)
type = null;ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 3
triggerall = statetype != A
trigger1 = power >= 1000
trigger1 = stateno = 422 && time = 11
trigger1 = P2BodyDist X = [-20,80]

[State -1, H空気弾];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 3
triggerall = var(50) != 20
triggerall = numhelper(1003) = 0
triggerall = statetype != A
trigger1 = stateno = 422 && time = 11
trigger1 = P2BodyDist X = [-20,80]

[State -1, 点火];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 1005
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 3
triggerall = numhelper(1003) = 1
triggerall = statetype != A
trigger1 = stateno = 422 && time = 16
trigger1 = P2BodyDist X = [-20,120]

[State -1, ダッシュ];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 98060
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 3
triggerall = statetype != A
trigger1 = stateno = 1005 && !animtime
trigger1 = numtarget

[State -1, varset]
type = varset
trigger1 = stateno = 98060
var(50) = 4

[State -1, 立中];(Soff,基本,QスタONルート締め,SEC1)
type = null;ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 400 && time = 5
trigger1 = var(50) = 4

[State -1, 立中];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 200 && time = 4
trigger1 = var(50) = 4
trigger1 = target,backedgedist < 20

[State -1, 屈中];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 410
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 200 && time = 4;stateno = 210 && time = 7
trigger1 = var(50) = 4

[State -1, 屈強];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 210 && time = 7
trigger1 = numtarget && target,statetype != L
trigger1 = var(50) = 4

[State -1, どうしようもないな];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 4
triggerall = var(40) < 30
triggerall = statetype != A
triggerall = numtarget && target,statetype != L
trigger1 = power >= 1000 && target,life < 140
trigger1 = stateno = 410 && movehit
trigger1 = P2BodyDist X = [-20,80]
trigger2 = power >= 1500
trigger2 = stateno = 410 && movehit
trigger2 = P2BodyDist X = [-20,80]

trigger3 = power >= 1000 && target,life < 140
trigger3 = stateno = 422 && movehit
trigger3 = P2BodyDist X = [-20,80]
trigger4 = power >= 1500
trigger4 = stateno = 422 && movehit
trigger4 = P2BodyDist X = [-20,80]

[State -1, L空気弾];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 4
triggerall = var(40) < 20
triggerall = statetype != A
trigger1 = stateno = 410 && movehit
trigger1 = numtarget
trigger1 = target,backedgedist < 20
trigger1 = P2BodyDist X = [-20,80]
trigger2 = stateno = 422 && movehit
trigger2 = numtarget
trigger2 = target,backedgedist < 20
trigger2 = P2BodyDist X = [-20,80]

[State -1, ふみつけ];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 460
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 4
triggerall = var(40) > 20
triggerall = statetype != A
triggerall = target,pos y < -30
trigger1 = stateno = 410 && movehit
trigger1 = numtarget
trigger1 = target,backedgedist < 20
trigger1 = P2BodyDist X = [-20,80]
trigger2 = stateno = 422 && movehit
trigger2 = numtarget
trigger2 = target,backedgedist < 20
trigger2 = P2BodyDist X = [-20,80]

[State -1, L空気弾];(Soff,基本,QスタONルート締め,SEC1)
type = ChangeState
value = 1100
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 4
triggerall = statetype != A
trigger1 = stateno = 410 && movehit
trigger1 = numtarget
trigger2 = stateno = 422 && movehit
trigger2 = numtarget

;コンボルート1(Soff,基本,ルート派生,殺し切り)
[State -1, SoffH第一の爆弾]
type = ChangeState
value = 1008
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = var(50) != 20
triggerall = var(50) != 10
triggerall = var(50) != 2
trigger1 = stateno = 422 && movehit
trigger1 = numtarget
trigger1 = target,life < 60

;コンボルート1(Soff,基本,ルート派生,締め)
[State -1, SoffL第一の爆弾]
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = statetype != A
triggerall = var(50) != 20
triggerall = var(50) != 10
triggerall = var(50) != 2
trigger1 = stateno = 422 && movehit
trigger1 = numtarget

;コンボルート1(Soff,基本,ルート派生2,相手ガード時,締め)
[State -1, SoffL第一の爆弾]
type = ChangeState
value = 1000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = statetype != A
triggerall = var(50) != 20
triggerall = var(50) != 10
triggerall = var(50) != 2
trigger1 = stateno = 422 && movehit
trigger1 = random =[0,499]

;コンボルート1(Soff,基本,ルート派生,既に爆弾設置時締め)
[State -1, SoffL第一の爆弾]
type = ChangeState
value = 460
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = statetype != A
triggerall = var(50) != 20
triggerall = var(50) != 10
triggerall = var(50) != 2
trigger1 = stateno = 422 && movehit
trigger1 = numtarget

[State -1, バックダッシュ];(爆弾設置後距離を取る)
type = ChangeState
value = 105
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
trigger1 = numhelper(1003)= 1
trigger1 = P2BodyDist X = [-20,120]
trigger1 = !inguarddist
trigger1 = stateno = 1000 && !animtime

trigger2 = numhelper(1003)= 1
trigger2 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100
trigger2 = numhelper(1003) && power >= 1900 && life <= 300
trigger2 = backedgedist > 20

trigger3 = !inguarddist
trigger3 = helper(1001),stateno = 14110
trigger3 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100
trigger3 = backedgedist > 60

trigger4 = life < 300
trigger4 = power >= 2000
trigger4 = ctrl || (stateno = [120,149]) || stateno = 40 || stateno = 41 || stateno = 100
trigger4 = p2statetype = L
trigger4 = p2bodydist x < 150

;コンボルート1(Soff,基本,ルート派生2B,,締め)
[State -1, SoffH空気弾]
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = statetype != A
triggerall = var(50) != 20
triggerall = var(50) != 10
triggerall = var(50) != 2
trigger1 = stateno = 422 && movehit

;コンボルート1(Soff,基本,相手立ち)
[State -1, 立強]
type = ChangeState
value = 220
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = numhelper(2201) = 0
triggerall = p2statetype != A
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,90]
trigger1 = P2BodyDist Y > -60
trigger2 = stateno = 210 && movecontact
trigger2 = P2BodyDist X = [-20,90]
trigger2 = P2BodyDist Y > -60

;コンボルート1(Soff,基本)
[State -1, 前立強]
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 0
triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = stateno = 220 && movecontact
trigger1 = P2BodyDist X = [-20,120]
trigger2 = p2statetype != A
trigger2 = stateno = 410 && movecontact
trigger2 = P2BodyDist X = [-20,60]

;コンボルート1(Soff,基本,SONから来た場合)
[State -1, 前立強]
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(2201) = 0
triggerall = statetype != A
;triggerall = p2statetype != A
trigger1 = stateno = 220 && movecontact
trigger1 = P2BodyDist X = [-20,120]

;コンボルート1(Soff,基本)
[State -1, 前立強]
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
;triggerall = numhelper(2201) = 0
triggerall = statetype != A
;triggerall = p2statetype != A
trigger1 = p2statetype != A
trigger1 = stateno = 410 && movehit
trigger1 = P2BodyDist X > 60

;コンボルート1(Soff,基本,締め)
[State -1, SC第一の爆弾]
type = null;ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
;triggerall = p2statetype != A
triggerall = power >= 1000
triggerall = numhelper(2201) != 0
triggerall = target,life >= 30
triggerall = target,life < 300 || power >= 1500
trigger1 = stateno = 250 && movehit
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y > -50

[State -1, varset]
type = varset
triggerall = stateno = 2220
trigger1 = var(50) = 0
trigger2 = var(50) = 3
var(50) = 1

[State -1, 親父];(Soff,基本,派生,SEC+1)
type = ChangeState
value = 98005;2220
triggerall = var(59)=1&& RoundState = 2 
;triggerall = !var(49)
triggerall = var(37)
triggerall = numhelper(2201) = 0
triggerall = power >= 500
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = stateno = 250 && movehit
trigger1 = P2BodyDist X = [-20,100]

[State -1, 前ジャンプ];(Soff,基本,派生,SEC1)
type = ChangeState
value = 98006;40
triggerall = var(59)=1&& RoundState = 2 
;triggerall = !var(49)
;triggerall = var(50) = 1
triggerall = statetype != A
trigger1 = stateno = 2220

[State -1, 空中強];(Soff,基本,派生,SEC1)
type = ChangeState
value = 620
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
;triggerall = var(50) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = vel y >= 0
trigger1 = pos y > -90

[State -1, 屈弱];(Soff,基本,派生,SEC1)
type = ChangeState
value = 400
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 1
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = P2BodyDist X = [-20,40]

[State -1, 立ち中];(Soff,基本,ゲージ足りない場合に打ち上げへ)
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = [0,1]
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = power < 500
trigger1 = stateno = 400 && time = 5
trigger1 = P2BodyDist X = [-20,45]
;trigger2 = power > 1500
;trigger2 = target,life > 500
;trigger2 = stateno = 400 && time = 5
;trigger2 = P2BodyDist X = [-20,45]

[State -1, 屈み強];(Soff,基本,ゲージ足りない場合に打ち上げへ)
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = [0,1]
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 400 && time = 5
trigger1 = P2BodyDist X = [50,80]
trigger2 = stateno = 410 && time = 7
trigger2 = P2BodyDist X = [-20,80]
;trigger3 = stateno = 210 && time = 7 && moveguarded
;trigger3 = P2BodyDist X = [-20,70]

[State -1, 立ち強];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 220
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = power >= 500
trigger1 = power >= 1000 || target,life < 300 || life < 300
trigger1 = numtarget
trigger1 = stateno = 210 && time = 7
trigger1 = P2BodyDist X = [-20,70]

[State -1, QSON];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 10901
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(2201) != 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = numtarget
trigger1 = power >= 2000
trigger1 = stateno = 220 && time = 7
trigger1 = P2BodyDist X = [-20,75]
trigger2 = power >= 500 && target,life < 200
trigger2 = stateno = 220 && time = 7
trigger2 = P2BodyDist X = [-20,75]

[State -1, SONしゃがみ弱];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 10400
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 10901 && animtime = 0
trigger1 = P2BodyDist X = [-20,70]

[State -1, SON立ち中];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 10210
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 10400 && time = 5
trigger1 = P2BodyDist X = [-20,70]

[State -1, SON立ち強];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 10220
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 10210 && time = 7
trigger1 = P2BodyDist X = [-20,90]
trigger2 = stateno = 10400 && time = 5
trigger2 = P2BodyDist X = [70,90]

[State -1, SON第一の爆弾];(Soff,基本,QスタONルート,SEC1)
type = ChangeState
value = 11000
triggerall = var(59)=1&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = numhelper(2201) != 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 10220 && time = 16
trigger1 = P2BodyDist X = [-20,100]

;コンボルート1(Soff,基本,ルート派生・相手しゃがみ)
[State -1, 屈強]
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(2201) != 0
triggerall = statetype != A
;triggerall = p2statetype = C
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [45,80]
trigger1 = P2BodyDist Y > -40
trigger2 = stateno = 210 && movecontact
trigger2 = P2BodyDist X = [-20,80]
trigger2 = P2BodyDist Y > -40

;コンボルート1(Soff,基本,締め)
[State -1, Lしば]
type = ChangeState
value = 450
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = numhelper(2201) = 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = var(50) = 0
;triggerall = enemynear,pos y = [-70,-50]
trigger1 = stateno = 250 && movehit
trigger1 = P2BodyDist X = [-20,120]
trigger1 = P2BodyDist Y > -80

trigger2 = stateno = 200 && movehit
trigger2 = P2BodyDist X = [-20,120]
trigger2 = P2BodyDist Y > -80

trigger3 = stateno = 220 && movehit
trigger3 = P2BodyDist X = [-20,120]
trigger3 = P2BodyDist Y > -80

[State -1, 立中]
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != A
;trigger1 = var(50) = 0 || power <= 1500
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,45]
;trigger2 = var(50) = 0 || power <= 1500
trigger2 = stateno = 400 && movecontact
trigger2 = P2BodyDist X = [-20,45]
;------------------------------------------------------------------------------
;コンボルート0(Soff,爆弾設置時コン)
;------------------------------------------------------------------------------
;コンボルート1.5(Soff,ゲージ無い)
[State -1, 立中]
type = ChangeState
value = 210
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = numhelper(1003)
triggerall = var(50) = 0
trigger1 = stateno = 200 && movecontact
trigger1 = P2BodyDist X = [-20,50]
trigger1 = P2BodyDist Y > -60
trigger2 = stateno = 400 && movecontact
trigger2 = P2BodyDist X = [-20,50]
trigger2 = P2BodyDist Y > -60

[State -1, varset]
type = varset
triggerall = var(50) = 1
triggerall = numhelper(1003)
trigger1 = stateno = 210 && movecontact
trigger2 = stateno = 422 && movecontact
var(50) = 10

;コンボルート1.5(Soff,ゲージ無い)
[State -1, ダッシュ]
type = ChangeState
value = 98070
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = var(50) = 1
triggerall = numhelper(1003)
trigger1 = stateno = 422 && !animtime && numtarget
trigger1 = P2BodyDist X = [-20,100]
;trigger1 = P2BodyDist Y < -40

;コンボルート1.5(Soff,ゲージ無い)
[State -1, 屈み強]
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = var(50) = 11
triggerall = statetype != A
trigger1 = stateno = 210 && movecontact
trigger1 = P2BodyDist X = [-20,80]
;コンボルート1.5(Soff,ゲージ無い)
;------------------------------------------------------------------------------
;コンボルート-1(Soff,対空)
;------------------------------------------------------------------------------
[State -1, 屈み強]
type = ChangeState
value = 422
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = !var(50)
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger1 = p2statetype = A
trigger1 = P2BodyDist X = [-20,70]
trigger1 = P2BodyDist Y = [-60,20]
;------------------------------------------------------------------------------
;コンボルート-100(保険)
;------------------------------------------------------------------------------
[State -1, 6H]
type = ChangeState
value = 250
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = stateno = 220 && movecontact
trigger1 = P2BodyDist X = [-20,80]

[State -1, どうしようもないな]
type = ChangeState
value = 3000
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
trigger1 = power >= 1000
trigger1 = target,life < 150
trigger1 = stateno = 250 && movehit
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-40,20]

[State -1, H空気弾]
type = ChangeState
value = 1120
triggerall = var(59)=1&& RoundState = 2 
triggerall = !var(49)
triggerall = statetype != A
triggerall = numhelper(2201) != 0
trigger1 = p2statetype = A
trigger1 = stateno = 220 && movecontact
trigger1 = movehit || enemynear,backedgedist > 80
trigger1 = P2BodyDist X = [-20,100]
trigger1 = P2BodyDist Y = [-40,20]
trigger2 = stateno = 250
trigger2 = movehit || enemynear,backedgedist > 80
trigger2 = P2BodyDist X = [-20,100]
trigger2 = P2BodyDist Y = [-40,20]
;------------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = helper(1001),movehit
trigger1 = helper(1001),stateno = 461
trigger1 = stateno = 460 && time >= 4
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger2 = power >= 2500
trigger2 = stateno = 1100 || stateno = 1120 || stateno = 11100 || stateno = 11020
trigger2 = time >= 15
trigger2 = inguarddist
trigger2 = p2bodydist x = [-20,80]
trigger3 = power >= 1000 && life < 300
trigger3 = stateno = 1100 || stateno = 1120 || stateno = 11100 || stateno = 11020
trigger3 = time >= 15
trigger3 = inguarddist
trigger3 = p2bodydist x = [-20,80]
value = 700
ignorehitpause = 1
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
