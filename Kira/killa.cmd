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
name = "kou_xy"
command = ~B, D, DB, x+y

[Command]
name = "upper_yz"
command = ~D, DB, B, y+z

[Command]
name = "upper_xy"
command = ~D, DB, B, x+y

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
; ■準常時監視ステート（‐１）■
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
[State -1, カウンターsp]
type = ChangeState
value = 1210
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = command = "kou_xy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13
;------------------------------------------------------------------------------
[State -1,接触空気弾屈];ゲージレベル１
type = ChangeState
value = 3300
triggerall = command = "upper_yz"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = statetype = C
trigger1 = (stateno = 410) && time > 11
trigger2 = (stateno = 442) && time > 17

[State -1,接触空気弾];ゲージレベル１
type = ChangeState
value = 3200
triggerall = command = "upper_yz"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger3 = (stateno = 240) && time > 7

[State -1,空気弾];ゲージレベル１
type = ChangeState
value = 3100
triggerall = command = "upper_xy"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
trigger1 = statetype = S
trigger1 = ctrl


[State -1, 空気弾 ポーズ]
type = ChangeState
value = 3104
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
triggerall = command = "QCF_xy"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(3013) = 0
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
triggerall = command = "QCF_yz"
triggerall = power >= 1000
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(3013) = 0
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
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

[State -1, 親父]
type = ChangeState
value = 1100
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

[State -1, 親父]
type = ChangeState
value = 1110
triggerall = command = "c"
triggerall = numhelper(1101) = 0
trigger1 = var(1)

;------------------------------------------------------------------------------

[State -1, 対空];ゲージ消費
type = ChangeState
value = 450
triggerall = command = "upper_x"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time > 15

[State -1, 対空2]
type = ChangeState
value = 452
triggerall = command = "upper_y"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time > 15

[State -1, 対空3]
type = ChangeState
value = 454
triggerall = command = "upper_z"
triggerall = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 442) && time > 17
trigger3 = (stateno = 250) && time > 15

;------------------------------------------------------------------------------
[State -1, キラークィーン]
type = ChangeState
value = 1000
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = command = "QCF_x"
trigger1 = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, キラークィーン中]
type = ChangeState
value = 1006
triggerall = command = "QCF_y"
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
trigger1 = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, キラークィーン強]
type = ChangeState
value = 1008
triggerall = command = "QCF_z"
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
trigger1 = numhelper(1001) = 0
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, キラークィーン ポーズ]
type = ChangeState
value = 1005
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
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = command = "kou_x"
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, カウンター2]
type = ChangeState
value = 1200
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
triggerall = command = "kou_y"
trigger1 = var(1)
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 410) && time > 11
trigger4 = (stateno = 440) && time > 13

[State -1, カウンター3]
type = ChangeState
value = 1200
triggerall = numhelper(1001) = 0
triggerall = numhelper(1003) = 0
triggerall = numhelper(3102) = 0
triggerall = numhelper(1004) = 0
triggerall = numhelper(3013) = 0
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
triggerall = var(49) != 10000
triggerall = numhelper(2) = 0
triggerall = statetype != A
trigger1 = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = (stateno = 151 || stateno = 153)
;------------------------------------------------------------------------------
[State -1, シアハ]
type = ChangeState
value = 1303
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = statetype != A
triggerall = command = "QCB_x"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact

[State -1, シアハ]
type = ChangeState
value = 1303
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
triggerall = statetype != A
triggerall = command = "QCB_y"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 400) && movecontact

[State -1, シアハ]
type = ChangeState
value = 1300
triggerall = var(59) != 1 && Roundstate = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(1301) = 0
triggerall = numhelper(1304) = 0
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

[State -1, カンフースルー];投げ技
type = ChangeState
value = 800
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
;------------------------------------------------------------------------------

[State -1, パワー溜め];ちょっとこ丸が追加した技
type = ChangeState
value = 700
triggerall = command = "hold_c"
triggerall = power > 99999 ;ゲージが満タンの時は出せない
trigger1 = statetype != A && ctrl

[State -1, シールド];ちょっとこ丸が追加した技
type = ChangeState
value = 701
triggerall = power > 99999 ;ゲージが満タンの時は出せない
triggerall = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
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
triggerall = var(49) != 10000
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------

[State -1, 回り込み]
type = ChangeState
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

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

[State -1, 立ち強パンチ]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = stateno = 400 && time >= 5

[State -1, 前立ち強]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 210) && movecontact

[State -1, 立ち強]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400 && time >= 5

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 410
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
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
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
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

[State -1, ジャンプ強]
type = ChangeState
value = 640
triggerall = command = "z"
triggerall = numhelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
