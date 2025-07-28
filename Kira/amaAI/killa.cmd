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
name = "kou_xy"
command = ~B, D, DB, x+y

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

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
name = "QCF_yz"
command = ~D, DF, F, b

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
name = "money"
command = D, D, x

[Command]
name = "money1"
command = D, D, y

[Command]
name = "money2"
command = D, D, z

[Command]
name = "Sheer Heart Attack"
command = ~D, DB, B, x+y

[Command]
name = "Sheer Heart Attack 2"
command = ~D, DB, B, x+z

[Command]
name = "Sheer Heart Attack 4"
command = ~D, DB, B, b

[Command]
name = "Sheer Heart Attack 3"
command = ~D, DB, B, y+z
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
;-| 空中ジャンプ関連 |---------------------------------------------------------

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
;---------------------------------------------------------------------------
;空中プッツンs
[State -1, カウンターsp]
type = ChangeState
value = 2401
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
triggerall = command = "money"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

;---------------------------------------------------------------------------
;空中プッツンs
[State -1, カウンターsp]
type = ChangeState
value = 11303
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
triggerall = command = "money1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

;--------------------------------------

;空中プッツンs
[State -1, カウンターsp]
type = ChangeState
value = 11304
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
triggerall = command = "money2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

;--------------------------------------------------------------------------------

[State -1, カウンターsp]
type = ChangeState
value = 113044
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = power >= 1000
triggerall = command = "Sheer Heart Attack"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

;------------------------------------------------------------------------------

[State -1, カウンターsp]
type = ChangeState
value = 1130441
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = power >= 2000
triggerall = command = "Sheer Heart Attack 2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

;------------------------------------------------------------------------------------

[State -1, カウンターsp]
type = ChangeState
value = 1130442
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = power >= 3000
triggerall = command = "Sheer Heart Attack 3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

;-------------------------------------------------------------------------------

[State -1, カウンターsp]
type = ChangeState
value = 1134442
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = power >= 5000
triggerall = life <= 300
triggerall = command = "Sheer Heart Attack 4"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

;--------------------------------------------------------------------------------

[State -1, カウンターsp]
type = ChangeState
value = 1210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(100310) = 0
triggerall = command = "kou_xy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13
;------------------------------------------------------------------------------
[State -1, 空気弾 ポーズ]
type = ChangeState
value = 3104
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(3102) = 1
triggerall = helper(3102),anim = 3102
trigger1 = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "QCF_y"
trigger2 = statetype = S
trigger2 = ctrl
trigger3 = command = "QCF_z"
trigger3 = statetype = S
trigger3 = ctrl
;------------------------------------------------------------------------------
[State -1, 美那子さん];ゲージレベル１
type = ChangeState
value = 3000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "QCF_xy"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加
trigger4 = (stateno = 240) && time > 7
trigger5 = (stateno = 410) && time > 11
;------------------------------------------------------------------------------

[State -1, 美那子さんvar2];ゲージレベル１
type = ChangeState
value = 3010
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "QCF_yz"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加
trigger4 = (stateno = 240) && time > 5

[State -1, キラークィーン ポーズ]
type = ChangeState
value = 3012
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(3013) = 1
triggerall = statetype != A
triggerall = command = "a"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact
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
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1
;------------------------------------------------------------------------------

[State -1, 親父];ゲージ消費
type = ChangeState
value = 1120
triggerall = var(59)<=0&& RoundState = 2 
triggerall = power >= 500
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

[State -1, 親父]
type = ChangeState
value = 1100
triggerall = var(59)<=0&& RoundState = 2
triggerall = power >= 500
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

[State -1, 親父]
type = ChangeState
value = 1110
triggerall = var(59)<=0&& RoundState = 2
triggerall = power >= 500
triggerall = command = "c"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

;------------------------------------------------------------------------------

[State -1, 対空]
type = ChangeState
value = 450
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "upper_x"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time >= 11

[State -1, 対空2]
type = ChangeState
value = 452
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "upper_y"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time >= 11

[State -1, 対空3]
type = ChangeState
value = 454
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "upper_z"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time >= 11

;------------------------------------------------------------------------------
[State -1, キラークィーン]
type = ChangeState
value = 1000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
triggerall = command = "QCF_x"
trigger1 = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, キラークィーン中]
type = ChangeState
value = 1006
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "QCF_y"
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
trigger1 = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, キラークィーン強]
type = ChangeState
value = 1008
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "QCF_z"
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
trigger1 = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, キラークィーン ポーズ]
type = ChangeState
value = 1005
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 1
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1000
;------------------------------------------------------------------------------
[State -1, カウンター]
type = ChangeState
value = 1200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
triggerall = command = "kou_x"
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, カウンター2]
type = ChangeState
value = 1200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
triggerall = command = "kou_y"
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, カウンター3]
type = ChangeState
value = 1200
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
triggerall = command = "kou_z"
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(2) = 0
triggerall = statetype != A
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = 151 || stateno = 153)
;------------------------------------------------------------------------------
[State -1, シアハ]
type = ChangeState
value = 1303
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = statetype != A
triggerall = command = "QCB_x"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact

[State -1, シアハ]
type = ChangeState
value = 1303
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = statetype != A
triggerall = command = "QCB_y"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact

[State -1, シアハ]
type = ChangeState
value = 1300
triggerall = var(59)<=0&& RoundState = 2 
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = statetype != A
triggerall = command = "QCB_z"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact
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

[State -1, 投げ]
type = ChangeState
value = 800
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(1003) = 0 
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0
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
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0
triggerall = power >= 250
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
trigger1 = statetype != A && ctrl
trigger1 = command = "b"
value = 799
;------------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 195   ;挑発
trigger3 = stateno = 410 || stateno = 442
trigger4 = stateno = 450 || stateno = 452 || stateno = 454
trigger5 = stateno = 1000 || stateno = 1006 || stateno = 1008
trigger6 = stateno = 1200
trigger7 = stateno = 1300 || stateno = 1303
value = 700
ignorehitpause = 1
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
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = stateno = 400 && time >= 5

[State -1, 前立ち強]
type = ChangeState
value = 250
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 240) && time >= 9

[State -1, 前立ち強]
type = null;ChangeState
value = 250
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = command = "holdfwd"
trigger1 = (stateno = 240) && time >= 9

[State -1, 立ち強]
type = ChangeState
value = 240
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 210) && time >= 7

;------------------------------------------------------------------------------

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
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400 && time >= 5

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強2]
type = ChangeState
value = 440
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強]
type = ChangeState
value = 442
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

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
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

[State -1, ジャンプ強]
type = ChangeState
value = 640
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "z"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい  ]

;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49) != 10000
triggerall = numhelper(2) = 0
triggerall = statetype != A
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = 151 || stateno = 153)


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
[State -1, 近距離コンボ]
type = ChangeState
value = 20100
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1003) = 0
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = S
trigger1 = P2BodyDist X = [-30,50] 
trigger1 = statetype != A
;------------------------------------------------------------------------------
[State -1, 中距離コンボ(相手しゃがみ)]
type = ChangeState
value = 20200
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1003) = 0
trigger1= random<=var(58)*26
Trigger1 = EnemyNear,stateType = C
trigger1 = P2BodyDist X = [50,110] 
trigger1 = statetype != A
;------------------------------------------------------------------------------
[State -1, 近距離コンボ(相手しゃがみ)]
type = ChangeState
value = 20300
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = C
trigger1 = P2BodyDist X = [-30,50] 
trigger1 = statetype != A
;------------------------------------------------------------------------------
[State -1, シアハ(爆弾設置時中距離牽制)]
type = ChangeState
value = 1303
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
triggerall = numhelper(1003) = 1
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = statetype != A
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
trigger1= random<=var(58)*20
Trigger1 = EnemyNear,stateType != C
trigger1 = P2BodyDist X = [50,130] 
trigger1 = P2BodyDist Y = [-100,0]

[State -1, シアハ(爆弾設置時中距離牽制)]
type = ChangeState
value = 1300
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
triggerall = numhelper(1003) = 1
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = statetype != A
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
trigger1= random<=var(58)*20
Trigger1 = EnemyNear,stateType = C
trigger1 = P2BodyDist X = [50,130] 
;------------------------------------------------------------------------------
[State -1, しゃがみ中(相手しゃがみ時中距離牽制)]
type = ChangeState
value = 410
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1001) = 0
trigger1= random<=var(58)*18
Trigger1 = EnemyNear,stateType = C
trigger1 = statetype != A
trigger1 = P2BodyDist X = [40,90] 
;------------------------------------------------------------------------------
[State -1, 立ち強(相手立ち・空中時中距離牽制)]
type = ChangeState
value = 240
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
triggerall = numhelper(1001) = 0
trigger1= random<=var(58)*18
Trigger1 = EnemyNear,stateType != C
trigger1 = statetype != A
trigger1 = P2BodyDist X = [40,110] 
trigger2 = numhelper(1003) != 0
Trigger2 = EnemyNear,stateType = A
trigger2 = statetype != A
trigger2 = P2BodyDist X = [60,120] 
;------------------------------------------------------------------------------
[State -1, 対空(相手空中時近距離牽制)]
type = ChangeState
value = 20400
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1001) = 0
Trigger1 = EnemyNear,vel X >= 0
Trigger1 = EnemyNear,vel Y >= 0
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = A
trigger1 = statetype != A
trigger1 = P2BodyDist X = [50,120] 
trigger1 = P2BodyDist Y = [-120,0]

Trigger2 = EnemyNear,vel X >= 0
Trigger2 = EnemyNear,vel Y <= 0
trigger2= random<=var(58)*30
Trigger2 = EnemyNear,stateType = A
trigger2 = statetype != A
trigger2 = P2BodyDist X = [-20,60] 
trigger2 = P2BodyDist Y = [-50,0]

Trigger3 = EnemyNear,vel X <= 0
Trigger3 = EnemyNear,vel Y <= 0
trigger3= random<=var(58)*30
Trigger3 = EnemyNear,stateType = A
trigger3 = statetype != A
trigger3 = P2BodyDist X = [-30,40] 
trigger3 = P2BodyDist Y = [-40,0]
;------------------------------------------------------------------------------
[State -1, 対空(相手空中時中距離牽制)]
type = ChangeState
value = 450
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
triggerall = numhelper(1001) = 0
Trigger1= EnemyNear,MoveType != H
trigger1 = random<=var(58)*20
Trigger1 = EnemyNear,stateType = A
trigger1 = statetype != A
trigger1 = P2BodyDist X = [-20,90] 
trigger1 = P2BodyDist Y = [-250,0]

Trigger2= EnemyNear,MoveType = H
trigger2 = random<=var(58)*30
Trigger2 = EnemyNear,stateType = A
Trigger2 = EnemyNear,pos y <= -50
trigger2 = statetype != A
trigger2 = P2BodyDist X = [-20,90] 
trigger2 = P2BodyDist Y = [-250,0]
;------------------------------------------------------------------------------
[State -1, キラークィーン中(遠距離牽制)]
type = ChangeState
value = 1006
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != A
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(3013) = 0
trigger1 = numhelper(1001) = 0
trigger1= random<=var(58)*5
Trigger1 = EnemyNear,Ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X = [100,180] 
;------------------------------------------------------------------------------
[State -1, キラークィーン強(遠距離牽制)]
type = ChangeState
value = 1008
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != A
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(3013) = 0
trigger1 = numhelper(1001) = 0
trigger1= random<=var(58)*5
Trigger1 = EnemyNear,Ctrl = 0
trigger1 = statetype != A
trigger1 = P2BodyDist X = [100,180] 
;------------------------------------------------------------------------------
[State -1, (遠距離から奇襲もしくは対空)]
type = ChangeState
value = 20499
triggerall = var(59)=1&& RoundState = 2 
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1003) = 0
trigger1= random<=var(58)*15
trigger1 = statetype != A
trigger1 = P2BodyDist X = [135,200] 
;---------------------------------------------------------------------------投げ
[State -1, 投げ]
type = ChangeState
value = 800
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59) = 1 && RoundState = 2 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X < 10
triggerall = NumHelper(1001) = 0 
triggerall = NumHelper(1003) = 0 
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*4 
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random<=var(58)*4
;------------------------------------------------------------------------------
;回り込み
[State -1, 回避]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = (RoundState = 2) && (Alive)
triggerall = statetype != A 
Triggerall = EnemyNear,MoveType != H
triggerall = !(enemynear,hitdefattr = SCA,AT)
triggerall = frontedgebodydist>=150

trigger1 = random<=var(58)*1 
trigger1 = enemynear,statetype != L && p2BodyDist X = [0,70] 
trigger1 = enemynear,movetype = A  
trigger1 = enemynear,stateno = [200,4999]
trigger1 = statetype != A 
trigger1 = ctrl || stateno = 130 || stateno = 131

trigger2 = random<=var(58)*1 
trigger2 = enemynear,statetype != L && p2BodyDist X = [0,70] 
trigger2 = enemynear,movetype = A  
trigger2 = enemynear,stateno = [10200,14999] 
trigger2 = statetype != A 
trigger2 = ctrl || stateno = 130 || stateno = 131

trigger3 = NumHelper(40005) != 0 
trigger3 = random<=var(58)*80 
trigger3 = var(47) <= 50
trigger3 = statetype != A && ctrl
value = 799
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(4010) = 0 
triggerall = statetype = S
triggerall = stateno = 150 || stateno = 151
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*5
trigger1 = P2BodyDist X = [-20,60] 
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(59)=1&& RoundState = 2 
triggerall = NumHelper(4010) = 0 
triggerall = statetype = C
triggerall = stateno = 152 || stateno = 153
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = random<=var(58)*5 
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
[State -1, ダッシュ]
type = ChangeState
value = 100
triggerall = var(59)=1&& RoundState = 2 
triggerall = statetype != A
triggerall = stateno != 100
triggerall = !inguarddist
triggerall = enemynear,statetype != L
triggerall = NumHelper(1003) = 0
trigger1= random<=var(58)*10
trigger1 = ctrl
trigger1 = P2BodyDist X >= 100

[State -1, 距離を取る]
type = ChangeState
value = 105
triggerall = var(59)=1&& RoundState = 2 
triggerall = BackEdgeBodyDist >= 100
trigger1 = Random <= var(58)*80
Trigger1 = EnemyNear,MoveType != H 
Trigger1 = EnemyNear,MoveType != A
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = P2BodyDist X = [35,50]

trigger1 = Random <= var(58)*80
Trigger2 = EnemyNear,StateType = L
trigger2 = statetype = S
trigger2 = ctrl
trigger2 = P2BodyDist X = [0,50]

;------------------------------------------------------------------------------
;飛び道具感知
[State -1, ];相手のprojもしくはhelperが増えた瞬間ヘルパー呼び出し
type=helper
triggerall = !ishelper
triggerall = !NumHelper(40005)
triggerall = NumEnemy
trigger1 = var(23) <= 0 ; 以下,監視で代入しといた値より相手のprojやhelperが大きい時
trigger1 = Enemy(0),numproj > 0 ;
trigger2 = var(24)< Enemy(0),numhelper ;
trigger3 = var(25) <= 0 ;
trigger3 = Enemy(numenemy=2),numproj > 0 ;
trigger4 = var(26) < Enemy(numenemy=2),numhelper ;
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
trigger1 = var(23) := Enemy(0),numproj
trigger2 = var(24) := Enemy(0),numhelper

[State 30006, 飛び道具監視タッグ二人目用]
type = null
triggerall = !ishelper
triggerall = NumEnemy
trigger1 = var(25) := Enemy(numenemy=2),numproj
trigger2 = var(26) := Enemy(numenemy=2),numhelper
;------------------------------------------------------------------------------

[State -1, 近距離コンボ]
type = ChangeState
value = 2401
triggerall = var(59)=1&& RoundState = 2
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = S
trigger1 = P2BodyDist X = [-30,50]
trigger1 = statetype != A

[State -1, 近距離コンボ]
type = ChangeState
value =  11303
triggerall = var(59)=1&& RoundState = 2
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = S
trigger1 = P2BodyDist X = [-30,50]
trigger1 = statetype != A

[State -1, 近距離コンボ]
type = ChangeState
value =  11304
triggerall = var(59)=1&& RoundState = 2
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = numhelper(24011) = 0
triggerall = numhelper(24021) = 0
triggerall = numhelper(240211) = 0
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = S
trigger1 = P2BodyDist X = [-30,50]
trigger1 = statetype != A

[State -1, 近距離コンボ]
type = ChangeState
value = 113044
triggerall = var(59)=1&& RoundState = 2
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = power >= 1000
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = S
trigger1 = P2BodyDist X = [-30,50]
trigger1 = statetype != A

[State -1, 近距離コンボ]
type = ChangeState
value =  1130441
triggerall = var(59)=1&& RoundState = 2
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = power >= 2000
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = S
trigger1 = P2BodyDist X = [-30,50]
trigger1 = statetype != A

[State -1, 近距離コンボ]
type = ChangeState
value =  1130442
triggerall = var(59)=1&& RoundState = 2
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = power >= 3000
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = S
trigger1 = P2BodyDist X = [-30,50]
trigger1 = statetype != A

[State -1, 近距離コンボ]
type = ChangeState
value =  1134442
triggerall = var(59)=1&& RoundState = 2
triggerall = ctrl || stateno = 100 || stateno = 105
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = numhelper(113144) = 0
triggerall = numhelper(1131441) = 0
triggerall = numhelper(1131442) = 0
triggerall = numhelper(11314442) = 0
triggerall = numhelper(100310) = 0
triggerall = power >= 5000
triggerall = life <= 300
trigger1= random<=var(58)*30
Trigger1 = EnemyNear,stateType = S
trigger1 = P2BodyDist X = [-30,50]
trigger1 = statetype != A

