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
[command]
name = "OTYA"
command = ~x, x, F, y, z
time = 46

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
name = "ryaku"
command = ~D, DF, F, b

[Command]
name = "ryaku2"
command = ~D, DB, B, b

[Command]
name = "tandem"
command = ~D, B, a
time = 20
;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "syutugen"
command = ~D, DF, F, a

[Command]
name = "cou_fx"
command = ~B, DB, D, DF, F, x

[Command]
name = "cou_fy"
command = ~B, DB, D, DF, F, y

[Command]
name = "cou_fz"
command = ~B, DB, D, DF, F, z

[Command]
name = "cou_bx"
command = ~F, DF, D, DB, B, x

[Command]
name = "cou_by"
command = ~F, DF, D, DB, B, y

[Command]
name = "cou_bz"
command = ~F, DF, D, DB, B, z

[Command]
name = "AIR_x"
command = ~B, D, DB, x

[Command]
name = "AIR_y"
command = ~B, D, DB, y

[Command]
name = "AIR_z"
command = ~B, D, DB, z

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

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
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
;===========================================================================
;------------------------------------------------------------------------------
[State -1, お茶でもしようや];ゲージレベル１
type = ChangeState
value = 3300
;triggerall = var(49) = 0
triggerall = command = "OTYA"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger3 = (stateno = [1000,1021]) && time > 8
trigger4 = stateno = 195
;------------------------------------------------------------------------------
[State -1, on全てをリプレイする！];ゲージレベル１
type = ChangeState
value = 13000
triggerall = var(49) = 10000
triggerall = command = "QCF_xy"|| command = "ryaku"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = stateno != [13000,13050)
;------------------------------------------------------------------------------
[State -1, 全てをリプレイする！];ゲージレベル１
type = ChangeState
value = 3000
triggerall = var(49) = 0
triggerall = command = "QCF_xy"|| command = "ryaku"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger3 = (stateno = [1000,1021]) && time > 8
trigger4 = (stateno = 220) && time > 12
;---------------------------------------------------------------------------
[State -1, デム];スタンドoff
type = ChangeState
value = 3900
triggerall = !numhelper(4657);var(24) = 0 
triggerall = numhelper(2) = 0
triggerall = command = "tandem"
triggerall = power >= 1000
triggerall = var(49) = 0  ;スタンドoffの時
triggerall = NumHelper(2) = 0 
triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time > 4
trigger3 = stateno = 201 && time > 2
trigger4 = stateno = 205 && time > 2
trigger5 = stateno = 210 && time > 8
trigger6 = stateno = 211 && time > 3
trigger7 = stateno = 215 && time > 3
trigger8 = stateno = 220 && time > 6
trigger9 = stateno = 225 && time > 9
trigger10 = stateno = 230 && time > 9
trigger11 = stateno = 400 && time > 5
trigger12 = stateno = 410 && time > 7
trigger13 = stateno = 420 && time > 9

[State -1, デム];スタンドon
type = ChangeState
value = 3900
triggerall = stateno != 14000 
triggerall = !numhelper(4657);var(24) = 0 
triggerall = command = "tandem"
triggerall = power >= 1000
triggerall = var(49) = 10000  ;スタンドonの時
triggerall = NumHelper(2) = 0 
triggerall = numhelper(1001) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = movecontact
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, カウンターfwd強]
type = ChangeState
value = 1200
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = numhelper(1001) = 0
triggerall = ctrl = 1
triggerall = statetype != A
trigger1 = command = "cou_fz"

[State -1, カウンターfwd中]
type = ChangeState
value = 1203
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = numhelper(1001) = 0
triggerall = ctrl = 1
triggerall = statetype != A
trigger1 = command = "cou_fy"

[State -1, カウンターfwd弱]
type = ChangeState
value = 1205
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = numhelper(1001) = 0
triggerall = ctrl = 1
triggerall = statetype != A
trigger1 = command = "cou_fx"

[State -1, カウンターback強]
type = ChangeState
value = 1210
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = numhelper(1001) = 0
triggerall = ctrl = 1
triggerall = statetype != A
trigger1 = command = "cou_bz"

[State -1, カウンターback中]
type = ChangeState
value = 1212
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype != A
triggerall = numhelper(1001) = 0
triggerall = ctrl = 1
trigger1 = command = "cou_by"

[State -1, カウンターback弱]
type = ChangeState
value = 1214
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = numhelper(1001) = 0
triggerall = ctrl = 1
triggerall = statetype != A
trigger1 = command = "cou_bx"
;------------------------------------------------------------------------------
[State -1, リプレイする！air　x]
type = ChangeState
value = 1040
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype != A
triggerall = numhelper(1001) = 0
triggerall = command = "AIR_x"
triggerall = var(20) != 0
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && time > 7
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && time > 11

[State -1, リプレイする！air　y]
type = ChangeState
value = 1050
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype != A
triggerall = numhelper(1001) = 0
triggerall = command = "AIR_y"
triggerall = var(20) != 0
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && time > 7
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && time > 11

[State -1, リプレイする！air　z]
type = ChangeState
value = 1060
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype != A
triggerall = numhelper(1001) = 0
triggerall = command = "AIR_z"
triggerall = var(20) != 0
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && time > 7
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && time > 11
;------------------------------------------------------------------------------
[State -1, 空中 リプレイする！air　x]
type = ChangeState
value = 1070
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype = A
triggerall = numhelper(1001) = 0
triggerall = command = "AIR_x"
triggerall = var(20) != 0
trigger1 = ctrl = 1

[State -1, 空中 リプレイする！air　y]
type = ChangeState
value = 1080
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype = A
triggerall = numhelper(1001) = 0
triggerall = command = "AIR_y"
triggerall = var(20) != 0
trigger1 = ctrl = 1

[State -1, 空中 リプレイする！air　z]
type = ChangeState
value = 1090
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype = A
triggerall = numhelper(1001) = 0
triggerall = command = "AIR_z"
triggerall = var(20) != 0
trigger1 = ctrl = 1
;------------------------------------------------------------------------------
[State -1, リプレイする！　x]
type = ChangeState
value = 1000
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype = S
triggerall = numhelper(1001) = 0
triggerall = command = "QCF_x"
triggerall = !var(25)
triggerall = var(10)
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && time > 7
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && time > 11

[State -1, リプレイする！　y]
type = ChangeState
value = 1010
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype = S
triggerall = numhelper(1001) = 0
triggerall = command = "QCF_y"
triggerall = !var(25)
triggerall = var(10)
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && time > 7
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && time > 11


[State -1, リプレイする！　z]
type = ChangeState
value = 1021
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype = S
triggerall = numhelper(1001) = 0
triggerall = command = "QCF_z"
triggerall = !var(25)
triggerall = var(10)
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && time > 7
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && time > 11
;------------------------------------------------------------------------------
[State -1, onリプレイする！　x]
type = ChangeState
value = 11000
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = numhelper(1001) = 0
triggerall = command = "QCF_x"
triggerall = var(10) != 0
trigger1 = ctrl = 1
trigger2 = (stateno = 10200) && time > 3
trigger3 = (stateno = 10210) && time >= 5
trigger4 = (stateno = 10410) && time > 7

[State -1, onリプレイする！　y]
type = ChangeState
value = 11000
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = numhelper(1001) = 0
triggerall = command = "QCF_y"
triggerall = var(10) != 0
trigger1 = ctrl = 1
trigger2 = (stateno = 10200) && time > 3
trigger3 = (stateno = 10210) && time >= 5
trigger4 = (stateno = 10410) && time > 7

[State -1, onリプレイする！　z]
type = ChangeState
value = 11000
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = numhelper(1001) = 0
triggerall = command = "QCF_z"
triggerall = var(10) != 0
trigger1 = ctrl = 1
trigger2 = (stateno = 10200) && time > 3
trigger3 = (stateno = 10210) && time >= 5
trigger4 = (stateno = 10410) && time > 7
;------------------------------------------------------------------------------
[State -1, ＭＢキック！x]
type = ChangeState
value = 1100
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype = S
triggerall = numhelper(1001) = 0
triggerall = command = "QCB_x"
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && time > 7
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && time > 11

[State -1, ＭＢキック！y]
type = ChangeState
value = 1103
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype = S
triggerall = numhelper(1001) = 0
triggerall = command = "QCB_y"
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && time > 7
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && time > 11

[State -1, ＭＢキック！z]
type = ChangeState
value = 1105
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
triggerall = statetype = S
triggerall = numhelper(1001) = 0
triggerall = command = "QCB_z"
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && time > 7
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 410) && time > 11
;---------------------------------------------------------------------------
;ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(49) = 0
triggerall = var(49) != 10000
triggerall = numhelper(2) = 0
triggerall = statetype != A
trigger1 = command = "AIR_x" || command = "AIR_y" || command = "AIR_z"
trigger1 = (stateno = [150,153])
;-----------------------------------------------------------------------------
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
triggerall = NumHelper(2) = 0 
triggerall = var(49) = 0
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

;投げ on
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = var(49) = 10000
triggerall = (command = "holdfwd" || command = "holdback") && command = "z"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(49) = 0
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
triggerall = var(49) = 0
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;---------------------------------------------------------------------------
;アドバンシング（立ち）S
[State -1, Run Back]
type = ChangeState
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b" 
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
ignorehitpause = 1
value = 14100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）S
[State -1, Run Back]
type = ChangeState
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b" 
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 14105
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = var(49) = 0
triggerall = NumHelper(798) = 0 
triggerall = var(11) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) != 10000
trigger1 = statetype != A && ctrl
trigger1 = command = "b" || command = "x+y+z"
value = 799
;------------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 180   ;挑発
trigger3 = stateno = 1000 || stateno = 1010 || stateno = 1021
trigger4 = stateno = 1040 || stateno = 1050 || stateno = 1060
trigger5 = stateno = 1100 || stateno = 1103 || stateno = 1105
trigger6 = stateno = 11000
trigger7 = stateno = 11200 || stateno = 11210 || stateno = 11220
trigger8 = stateno = 11201 || stateno = 11215 || stateno = 11225
trigger9 = stateno = 11400 || stateno = 11410 || stateno = 11420
value = 700
ignorehitpause = 1
;===========================================================================
;スタンド出現攻撃
[State -1, Stand Strong Punch]
type = ChangeState
value = 14000
triggerall = numhelper(1001) = 0
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "syutugen"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105

;スタンド出現攻撃B
[State -1, Stand Strong Punch]
type = ChangeState
value = 14000
triggerall = numhelper(1001) = 0
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "syutugen"
triggerall = statetype != A
trigger1 = stateno = 200 && time > 4
trigger2 = stateno = 201 && time > 2
trigger3 = stateno = 205 && time > 2
trigger4 = stateno = 210 && time > 8
trigger5 = stateno = 211 && time > 3
trigger6 = stateno = 215 && time > 3
trigger7 = stateno = 220 && time > 6
trigger8 = stateno = 225 && time > 9
trigger9 = stateno = 230 && time > 9
trigger10 = stateno = 400 && time > 5
trigger11 = stateno = 410 && time > 7
trigger12 = stateno = 420 && time > 9

;出現立ち弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 14200
triggerall = numhelper(1001) = 0
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105

;出現立ち中
[State -1, Stand Strong Punch]
type = ChangeState
value = 14210
triggerall = numhelper(1001) = 0
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105

;出現立ち強
[State -1, Stand Strong Punch]
type = ChangeState
value = 14220
triggerall = numhelper(1001) = 0
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105

;出現しゃがみ弱
[State -1, Stand Strong Punch]
type = ChangeState
value = 14400
triggerall = numhelper(1001) = 0
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = var(49) != 10000
triggerall = NumHelper(2) = 0 
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105
trigger4 = stateno = 405 && time > 5
;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, D立ち弱]
type = ChangeState
value = 205
triggerall = var(49) = 0
triggerall = stateno = 100
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S

[State -1, 前立ち弱]
type = ChangeState
value = 201
triggerall = var(49) = 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(49) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time >=6
trigger3 = stateno = 400 && time >=6

[State -1, 前立ち中]
type = ChangeState
value = 215
triggerall = var(49) = 0
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 201
trigger3 = time > 5
trigger4 = stateno = 205
trigger4 = time > 7
trigger5 = stateno = 400
trigger5 = time > 7

[State -1, D立ち中]
type = ChangeState
value = 211
triggerall = var(49) = 0
triggerall = stateno = 100
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(49) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time >=6
trigger3 = stateno = 400 && time >=6

[State -1, D立ち強]
type = ChangeState
value = 230
triggerall = var(49) = 0
triggerall = stateno = 100
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S

[State -1, 前立ち強]
type = ChangeState
value = 225
triggerall = var(49) = 0
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 立ち強]
type = ChangeState
value = 220
triggerall = var(49) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, D立ち弱on]
type = ChangeState
value = 10205
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = stateno = 100

[State -1, 立ち弱on]
type = ChangeState
value = 10200
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 3
trigger3 = (stateno = 10205) && time > 8
trigger4 = (stateno = 10405) && time > 5

[State -1, D立ち中on]
type = ChangeState
value = 10215
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = stateno = 100

[State -1, 立ち中on]
type = ChangeState
value = 10210
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 3

[State -1, D立ち強on]
type = ChangeState
value = 10225
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = stateno = 100

[State -1, 立ち強on]
type = ChangeState
value = 10220
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 3
trigger3 = (stateno = 10210) && time > 5
;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
trigger1 = numhelper(2) = 0
trigger1 = numhelper(1001) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, Dしゃがみ弱]
type = ChangeState
value = 405
triggerall = var(49) = 0
triggerall = stateno = 100
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(49) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >=4
trigger3 = stateno = 400 && time >=6

[State -1, Dしゃがみ中]
type = ChangeState
value = 415
triggerall = var(49) = 0
triggerall = stateno = 100
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = var(49) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = var(49) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Dしゃがみ弱on]
type = ChangeState
value = 10405
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = S
trigger1 = stateno = 100

[State -1, しゃがみ弱on]
type = ChangeState
value = 10400
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10400) && time > 4
trigger3 = (stateno = 10405) && time > 4

[State -1, 前しゃがみ中on]
type = ChangeState
value = 10411
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

[State -1, しゃがみ中on]
type = ChangeState
value = 10410
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10400) && time > 4
trigger3 = (stateno = 10405) && time > 4

[State -1, Dしゃがみ強on]
type = ChangeState
value = 10425
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, しゃがみ強on]
type = ChangeState
value = 10420
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10400) && time > 4
trigger3 = (stateno = 10410) && time > 6
;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = var(49) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = var(49) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerall = var(49) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

[State -1, ジャンプ弱on]
type = ChangeState
value = 10600
triggerall = var(49) = 10000
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強on]
type = ChangeState
value = 10610
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強on]
type = ChangeState
value = 10620
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10600 || stateno = 10610
trigger2 = movecontact
;------------------------------------------------------------------------------
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
triggerall = numhelper(1001) = 0
triggerall = !var(49)
triggerall = var(7) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S
trigger1 = ctrl

;スタンド発現（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 10821
triggerall = numhelper(1001) = 0
triggerall = numhelper(2) = 0
triggerall = !var(49)
triggerall = var(7) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl

;スタンド発現（空中）
[State -1, Taunt]
type = ChangeState
value = 10822
triggerall = numhelper(1001) = 0
triggerall = numhelper(2) = 0
triggerall = !var(49)
triggerall = var(7) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 16003
triggerall = var(39) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16004
triggerall = var(39) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（空中）
[State -1, Taunt]
type = ChangeState
value = 16005
triggerall = var(39) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0
;------------------------------------------------------------------------------
[State -1,2段ジャンプ]
type = ChangeState
value = 41
;triggerall = !Ishelper	     ;プレイヤーがヘルパーでないとき
triggerall = var(49) = 10000 ;スタンドモードのとき
triggerall = var(4) = 1      ;2段ｼﾞｬﾝﾌﾟ可能の時。var(4)は2段ｼﾞｬﾝﾌﾟした瞬間０になり、着地すると１になる
triggerall = command = "up";"holdup"
triggerall = stateno = 50 || stateno = 10822;&& time >= 25
trigger1 = ctrl
triggerall = command != "upc"
;------------------------------------------------------------------------------
