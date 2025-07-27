;みんな大好き『ぼす』のコマンドファイルです。
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
name = "kill"
command = ~x, x, F, y, z
time = 40

[Command]
name = "246a"
command = ~D, B, F, a

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
name = "46x"
command = ~48$B,$F,x
time = 12

[Command]
name = "46x"
command = ~48$B,$F,~x
time = 12

[Command]
name = "46y"
command = ~48$B,$F,y
time = 12

[Command]
name = "46y"
command = ~48$B,$F,~y
time = 12

[Command]
name = "46z"
command = ~48$B,$F,z
time = 12

[Command]
name = "46z"
command = ~48$B,$F,~z
time = 12

[Command]
name = "46a"
command = ~48$B,$F,a
time = 12

[Command]
name = "46a"
command = ~48$B,$F,~a
time = 12

[Command]
name = "41236a"
command = ~B, D, F, a

[Command]
name = "41236x"
command = ~B, D, F, x

[Command]
name = "41236y"
command = ~B, D, F, y

[Command]
name = "41236z"
command = ~B, D, F, z

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
name = "QCF_a"
command = ~D, DF, F, a

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
name = "QCB_a"
command = ~D, DB, B, a

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
[Command]
name = "hold_x"
command = /x

[Command]
name = "hold_y"
command = /y

[Command]
name = "hold_z"
command = /z

[Command]
name = "hold_a"
command = /a

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
[State -1, 永遠の絶頂]
type = ChangeState
value = 3300
triggerall = !var(49)
triggerall = power >= 2000
triggerall = command = "upper_xy" || command = "upper_yz" || command = "b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1,墓碑名]
type = ChangeState
value = 3000
triggerall = !var(49)
triggerall = command = "QCF_xy" || command = "236c"
triggerall = power >= 1000
triggerall = var(26) = 0 ;numhelper(3080) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;ignorehitpause = 1

[State -1,罰]
type = ChangeState
value = 3200
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "246a"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;ignorehitpause = 1
;==============================================================================
; 必殺技
;==============================================================================
[State -1, 俺を良く見ろ！]
type = ChangeState
value = 1400
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "41236x" || command = "41236y" || command = "41236z"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1, 俺を良く見ろ！EX]
type = ChangeState
value = 1460
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "41236a"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 500 && !var(31)
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1, 俺を良く見ろ！EX(ボスモード)]
type = ChangeState
value = 1460
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "41236a"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 250 && var(31)
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;------------------------------------------------------------------------------
[State -1, 時は再び刻み始める！]
type = ChangeState
value = 1000
triggerall = !var(49)
triggerall = command = "QCF_x"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1, 時は再び刻み始める！M]
type = ChangeState
value = 1010
triggerall = !var(49)
triggerall = command = "QCF_y"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1, 時は再び刻み始める！H]
type = ChangeState
value = 1030
triggerall = !var(49)
triggerall = command = "QCF_z"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1, 時は再び刻み始める！EX]
type = ChangeState
value = 1050
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_a"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 500 && !var(31)
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1, 時は再び刻み始める！EX(ボスモード)]
type = ChangeState
value = 1050
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_a"
;triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 250 && var(31)
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;------------------------------------------------------------------------------
[State -1, A時は再び刻み始める！]
type = ChangeState
value = 1500
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_x"
;triggerall = numhelper(1001) = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 5
trigger4 = (stateno = 620) && time >= 7

[State -1, A時は再び刻み始める！]
type = ChangeState
value = 1510
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_y"
;triggerall = numhelper(1001) = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 5
trigger4 = (stateno = 620) && time >= 7

[State -1, A時は再び刻み始める！]
type = ChangeState
value = 1530
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_z"
;triggerall = numhelper(1001) = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 5
trigger4 = (stateno = 620) && time >= 7

[State -1, A時は再び刻み始める！EX]
type = ChangeState
value = 1550
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_a"
;triggerall = numhelper(1001) = 0
triggerall = statetype = A
triggerall = power >= 500 && !var(31)
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 5
trigger4 = (stateno = 620) && time >= 7

[State -1, A時は再び刻み始める！EX(ボスモード)]
type = ChangeState
value = 1550
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCF_a"
;triggerall = numhelper(1001) = 0
triggerall = statetype = A
triggerall = power >= 250 && var(31)
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 5
trigger3 = (stateno = 610) && time >= 5
trigger4 = (stateno = 620) && time >= 7
;---------------------------------------------------------------------------
;Soffガーキャン
[State -1, Strong Kung Fu Palm]
type = null;ChangeState
value = 1800
triggerall = !var(49)
triggerall = var(33)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = [150,155]);(stateno = 151 || stateno = 153)

;Sonガーキャン
[State -1, Strong Kung Fu Palm]
type = null;ChangeState
value = 11800
triggerall = var(49) = 10000
triggerall = var(33)
triggerall = numhelper(1001) = 0
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = [150,155]);(stateno = 151 || stateno = 153)
;------------------------------------------------------------------------------
[State -1, 『時間を消し去って』飛び越えさせた…！！]
type = ChangeState
value = 1200
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = command = "kou_x"
triggerall = statetype != A
triggerall = power >= 250 || var(31)
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1, 『時間を消し去って』飛び越えさせた…！！]
type = ChangeState
value = 1200
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = command = "kou_y"
triggerall = statetype != A
triggerall = power >= 250 || var(31)
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1, 『時間を消し去って』飛び越えさせた…！！]
type = ChangeState
value = 1200
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = command = "kou_z"
triggerall = statetype != A
triggerall = power >= 250 || var(31)
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;------------------------------------------------------------------------------
[State -1,Soffトドメだッ！L]
type = ChangeState
value = 1100
triggerall = !var(49)
triggerall = command = "QCB_x"
;triggerall = numhelper(1001) = 0 || stateno = [200,420]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;ignorehitpause = 1

[State -1,Soffトドメだッ！M]
type = ChangeState
value = 1100
triggerall = !var(49)
triggerall = command = "QCB_y"
;triggerall = numhelper(1001) = 0 || stateno = [200,420]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,Soffトドメだッ！H]
type = ChangeState
value = 1120
triggerall = !var(49)
triggerall = command = "QCB_z"
;triggerall = numhelper(1001) = 0 || stateno = [200,420]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,Soffトドメだッ！EX]
type = ChangeState
value = 1150
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCB_a"
;triggerall = numhelper(1001) = 0 || stateno = [200,420]
triggerall = power >= 500 && !var(31)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,Soffトドメだッ！EX(ボスモード)]
type = ChangeState
value = 1150
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "QCB_a"
;triggerall = numhelper(1001) = 0 || stateno = [200,420]
triggerall = power >= 250 && var(31)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;==============================================================================
[State -1,ダッシュ腹パン]
type = ChangeState
value = 1790
triggerall = !var(49)
triggerall = !var(30)
triggerall = !var(31)
triggerall = command = "46x" || command = "46y" || command = "46z"
trigger1 = statetype != A
trigger1 = ctrl

[State -1,EXダッシュ腹パン]
type = ChangeState
value = 1795
triggerall = !var(49)
triggerall = !var(30)
triggerall = !var(31)
triggerall = command = "46a"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl

[State -1,タメなしダッシュ腹パン]
type = ChangeState
value = 1700
triggerall = !var(49)
triggerall = !var(30)
triggerall = var(31)
triggerall = command = "46x" || command = "46y" || command = "46z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,タメなしEXダッシュ腹パン]
type = ChangeState
value = 1750
triggerall = !var(49)
triggerall = !var(30)
triggerall = var(31)
triggerall = command = "46a"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 8
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
;==============================================================================
; 移動関連
;==============================================================================
[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1700 && time >= 2
trigger2 = command = "x"

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1700 && time >= 2
trigger2 = command = "z"

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 動きが読める…F]
type = ChangeState
triggerall = !var(30)
triggerall = !var(49)
triggerall = (RoundState = 2) && (Alive)
triggerall = command = "holdfwd"
triggerall = command = "x+y+z"
trigger1 = statetype != A && ctrl
;trigger2 = stateno = 200 && time >= 4
;trigger3 = stateno = 210 && time >= 7
;trigger4 = stateno = 220 && time >= 13
;trigger5 = stateno = 230 && time >= 5
;trigger6 = stateno = 250 && time >= 12
;trigger7 = stateno = 400 && time >= 4
;trigger8 = stateno = 410 && time >= 7
;trigger9 = stateno = 420 && time >= 7
;trigger10 = stateno = 205 && time >= 8
;trigger11 = stateno = 215 && time >= 10
;trigger12 = stateno = 225 && time >= 15
value = 750

[State -1, 動きが読める…N]
type = ChangeState
triggerall = !var(30)
triggerall = !var(49)
triggerall = (RoundState = 2) && (Alive)
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "x+y+z"
trigger1 = statetype != A && ctrl
;trigger2 = stateno = 200 && time >= 4
;trigger3 = stateno = 210 && time >= 7
;trigger4 = stateno = 220 && time >= 13
;trigger5 = stateno = 230 && time >= 5
;trigger6 = stateno = 250 && time >= 12
;trigger7 = stateno = 400 && time >= 4
;trigger8 = stateno = 410 && time >= 7
;trigger9 = stateno = 420 && time >= 7
;trigger10 = stateno = 205 && time >= 8
;trigger11 = stateno = 215 && time >= 10
;trigger12 = stateno = 225 && time >= 15
value = 752

[State -1, 動きが読める…B]
type = ChangeState
triggerall = !var(30)
triggerall = !var(49)
triggerall = (RoundState = 2) && (Alive)
trigger1 = statetype != A && ctrl
trigger1 = command = "holdback"
trigger1 = command = "x+y+z"
value = 754
;------------------------------------------------------------------------------
[State -1, 投げ]
type = ChangeState
value = 800
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
triggerall = !var(49)
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "c"
triggerall = statetype != A
triggerall = ctrl
;triggerall = NumHelper(1001) = 0 
;triggerall = NumHelper(1003) = 0 
trigger1 = command = "holdback"
;------------------------------------------------------------------------------
[State -1, Son投げ]
type = null;ChangeState
value = 10800
triggerall = var(49) = 10000
triggerall = command = "LM" || command = "MH" || command = "LH"|| command = "c"
triggerall = statetype != A
triggerall = ctrl 
trigger1 = command != "holdback"

[State -1, Son投げ(後方)]
type = null;ChangeState
value = 10801
triggerall = var(49) = 10000
triggerall = command = "LM" || command = "MH" || command = "LH"|| command = "c"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdback"
;------------------------------------------------------------------------------
[State -1,血の目潰し]
type = ChangeState
value = 900
triggerall = !var(30)
triggerall = !var(49)
triggerall = !var(25) || var(26)
triggerall = command = "holdfwd"
triggerall = command = "a"
triggerall = numhelper(1001) = 0 || stateno = [200,425]
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12
trigger10 = (stateno = 205) && time >= 4
trigger11 = (stateno = 215) && time >= 7
trigger12 = (stateno = 225) && time >= 13
trigger13 = (stateno = 405) && time >= 5
trigger14 = (stateno = 415) && time >= 7
trigger15 = (stateno = 425) && time >= 7
ignorehitpause = 0
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = !var(30)
triggerall = !var(49)
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
triggerall = !var(30)
triggerall = !var(49)
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
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = stateno = 200 && time >= 4
trigger2 = stateno = 210 && time >= 7
trigger3 = stateno = 220 && time >= 13
trigger4 = stateno = 230 && time >= 5
trigger5 = stateno = 250 && time >= 12
trigger6 = stateno = 400 && time >= 4
trigger7 = stateno = 410 && time >= 7
trigger8 = stateno = 420 && time >= 7
trigger9 = stateno = 450 && time >= 11
trigger10 = stateno = 452 && time >= 12
trigger11 = stateno = 454 && time >= 17
trigger12 = stateno = 1005 || stateno = 1015 || stateno = 1035 || stateno = 1055
trigger12 = time >= 2
trigger13 = stateno = 1100 || stateno = 1110
trigger13 = time >= 25
trigger14 = stateno = 1120 || stateno = 1150
trigger14 = time >= 31
trigger15 = stateno = 1400 || stateno = 1460
trigger15 = time >= 13
trigger16 = stateno = 1401 || stateno = 1461
trigger16 = time >= 100
trigger17 = stateno = 1700 || stateno = 1750
trigger17 = time >= 5
trigger18 = stateno = 205 && time >= 8
trigger19 = stateno = 215 && time >= 10
trigger20 = stateno = 225 && time >= 15
trigger21 = stateno = 405 && time >= 5
trigger22 = stateno = 415 && time >= 7
trigger23 = stateno = 425 && time >= 7
value = 700
ignorehitpause = 0
;------------------------------------------------------------------------------
[State -1, 擬似スタンドラッシュ]
type = null;ChangeState
triggerall = statetype != A
triggerall = power >= 250
triggerall = command = "a"
trigger1 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger2 = stateno = 11100 || stateno = 11110 || stateno = 11120
trigger2 = time >= 16
value = 2100
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1,能動的時間跳躍]
type = null;ChangeState
value = 6666
triggerall = !var(49)
triggerall = command = "a"
triggerall = numhelper(1205) = 0
triggerall = numhelper(1001) = 0 || helper(1001),stateno = 1103
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 220) && time >= 13
trigger5 = (stateno = 250) && time >= 12
trigger6 = (stateno = 400) && time >= 5
trigger7 = (stateno = 410) && time >= 7
trigger8 = (stateno = 420) && time >= 7
trigger9 = (stateno = 440) && time >= 12

[State -1,割込時間跳躍]
type = ChangeState
value = 6666
triggerall = !var(49)
triggerall = command = "kou_x" || command = "kou_y" || command = "kou_z"
triggerall = numhelper(1205) = 0
triggerall = numhelper(1001) = 0 || helper(1001),stateno = 1103
trigger1 = power >= 1500 && !var(31)
trigger1 = statetype != A
trigger1 = movetype = H
trigger1 = stateno = [5000, 5019]

trigger2 = power >= 500 && var(31)
trigger2 = statetype != A
trigger2 = movetype = H
trigger2 = stateno = [5000, 5019]
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, D立ち弱]
type = ChangeState
value = 205
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1, D立ち中]
type = ChangeState
value = 215
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1, D立ち強]
type = ChangeState
value = 225
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl; || stateno = 100 || stateno = 105
;trigger2 = stateno = 200 && time >= 4
trigger2 = stateno = 400 && time >= 4

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = !var(49)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl; || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = stateno = 400 && time >= 4
ignorhitpause = 1

[State -1, 立ち強]
type = ChangeState
value = 220
triggerall = !var(49)
triggerall = command = "z"
triggerall = command != "holddown"
;triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl; || stateno = 100 || stateno = 105
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 7

[State -1, 立ち中];EBver
type = ChangeState
value = 210
triggerall = !var(49)
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 200 && time >= 4

[State -1, 立ち強];EBver
type = ChangeState
value = 220
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 210 && time >= 5

[State -1, 時は再び];EBver
type = ChangeState
value = 1030
triggerall = !var(49)
;triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 220 && time >= 8

[State -1, 第一の爆弾SC];EBver
type = null;ChangeState
value = 3000
triggerall = !var(49)
triggerall = numhelper(1001) = 0
triggerall = var(8) = 1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 250 && time >= 12
;------------------------------------------------------------------------------
[State -1,ON立ち弱]
type = null;ChangeState
value = 10200
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
;trigger2 = (stateno = 10200) && time >= 5
trigger2 = (stateno = 10400) && time >= 5

[State -1,ON立ち中]
type = null;ChangeState
value = 10210
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5

[State -1,OND立ち強]
type = null;ChangeState
value = 10230
triggerall = var(49) = 10000
triggerall = var(36)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1,ON立ち強]
type = null;ChangeState
value = 10220
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
type = null;ChangeState
value = 10210
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10200 && time >= 4
ignorhitpause = 1

[State -1, Son立ち強];EBver
type = null;ChangeState
value = 10220
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10210 && time >= 8

[State -1, Son第一の爆弾SC];EBver
type = null;ChangeState
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
triggerall = !var(49)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Son挑発]
type = null;ChangeState
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
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 4
trigger3 = stateno = 400 && time >= 4

[State -1, Dしゃがみ弱]
type = ChangeState
value = 405
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = !var(49)
triggerall = command = "y"
triggerall = command = "holddown"
;triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = stateno = 400 && time >= 4

[State -1, Dしゃがみ中]
type = ChangeState
value = 415
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
;triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 7
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time >= 7

[State -1, Dしゃがみ強]
type = ChangeState
value = 425
triggerall = !var(30)
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = 100; || stateno = 103
trigger2 = stateno = 105 && time <= 20
;------------------------------------------------------------------------------
[State -1,ONしゃがみ弱]
type = null;ChangeState
value = 10400
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
;trigger2 = (stateno = 10200) && time >= 5
trigger2 = (stateno = 10400) && time >= 5

[State -1,ONしゃがみ中]
type = null;ChangeState
value = 10410
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 5
trigger3 = (stateno = 10400) && time >= 5

[State -1,ONしゃがみ強]
type = null;ChangeState
value = 10420
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
triggerall = !var(49)
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) = 1
trigger2 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = !var(49)
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) = 2
trigger2 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerall = !var(49)
trigger1 = command = "z"
;trigger1 = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) = 3
trigger2 = ctrl
;trigger2 = stateno = 600 || stateno = 610
;trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, ジャンプ弱]
type = null;ChangeState
value = 10600
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = null;ChangeState
value = 10610
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = null;ChangeState
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
type = null;ChangeState
value = 16000
triggerall = numhelper(1001) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

[State -1, クイックスタンドon]
type = null;ChangeState
value = 10901
triggerall = numhelper(1001) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = (stateno = 200) && time >= 3
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 220) && time >= 13
trigger4 = (stateno = 250) && time >= 12
trigger5 = (stateno = 400) && time >= 5
trigger6 = (stateno = 410) && time >= 7
trigger7 = (stateno = 420) && time >= 7

;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 830
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
