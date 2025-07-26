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
name = "QCF_xz"
command = ~D, DF, F, x+z

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
name = "dd_x"
command = ~D,D, x

[Command]
name = "dd_y"
command = ~D,D, y

[Command]
name = "dd_z"
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
triggerall = var(59)<=0;&& RoundState = 2
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
triggerall = !var(49)
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 220 && time >= 11
ignorhitpause = 1

[State -1, 糸の結界 弱]
type = ChangeState
value = 1100
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
;------------------------------------------------------------------------------
[State -1, 投げ]
type = ChangeState
value = 800
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
triggerall = var(49) = 10000
triggerall = command = "LM" || command = "MH" || command = "LH"|| command = "c"
triggerall = statetype != A
triggerall = ctrl 
trigger1 = command != "holdback"

[State -1, Son投げ(後方)]
type = ChangeState
value = 10801
triggerall = var(49) = 10000
triggerall = command = "LM" || command = "MH" || command = "LH"|| command = "c"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdback"
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
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
triggerall = var(59)<=0&& RoundState = 2
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
triggerall = !var(49)
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 200 && time >= 4
ignorhitpause = 1

[State -1, 立ち強];EBver
type = ChangeState
value = 220
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 210 && time >= 5

[State -1, 前立ち強];EBver
type = ChangeState
value = 250
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
;triggerall = var(40) = 9999
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10210 && time >= 8

[State -1, Son第一の爆弾SC];EBver
type = ChangeState
value = 13000
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
triggerall = !var(49)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Son挑発]
type = ChangeState
value = 195
triggerall = var(49) = 10000
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
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
triggerall = !var(49)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2000) && time >= 14
trigger3 = (stateno = 2010) && time >= 14

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = !var(49)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 2000) && time >= 14
trigger3 = (stateno = 2010) && time >= 14

[State -1, ジャンプ強]
type = ChangeState
value = 620
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
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 10610
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 10620
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
