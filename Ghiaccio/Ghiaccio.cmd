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
name = "SGS"
command = ~F, z, x, F, a
time = 40

[Command]
name = "GHD_xy"
command = ~D, DB, B, x+y

[Command]
name = "GHD_yz"
command = ~D, DB, B, y+z

[Command]
name = "GHD_xz"
command = ~D, DB, B, x+z

[Command]
name = "SPHxy"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "SPHyz"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "SPHxz"
command = ~D, DF, F, x+z
time = 20
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "GTS_x"
command = ~F, DF, D, DB, B, x
time = 30

[Command]
name = "GTS_y"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "GTS_z"
command = ~F, DF, D, DB, B, z
time = 30

[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 12

[Command]
name = "upper_y"
command = ~F, D, DF, x
time = 12

[Command]
name = "upper_z"
command = ~F, D, DF, x
time = 12

[Command]
name = "SNK_x"
command = ~$B, F, x
time = 12

[Command]
name = "SNK_y"
command = ~$B, F, y
time = 12

[Command]
name = "SNK_z"
command = ~$B, F, z
time = 12

[Command]
name = "COU_x"
command = ~D, DB, B, x
time = 12

[Command]
name = "COU_y"
command = ~D, DB, B, y
time = 12

[Command]
name = "COU_z"
command = ~D, DB, B, z
time = 12

[Command]
name = "HD_x"
command = ~D, DF, F, x
time = 12

[Command]
name = "HD_y"
command = ~D, DF, F, y
time = 12

[Command]
name = "HD_z"
command = ~D, DF, F, z
time = 12

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y
time = 12

[Command]
name = "TSP_x"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "TSP_y"
command = ~B, DB, D, DF, F, y
time = 20

[Command]
name = "TSP_z"
command = ~B, DB, D, DF, F, z
time = 20

[Command]
name = "DB_x"
command = ~D, B, F, x
time = 25

[Command]
name = "DB_y"
command = ~D, B, F, y
time = 25

[Command]
name = "DB_z"
command = ~D, B, F, z
time = 25
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
[State -1, 静止の世界！]
type = ChangeState
value = 4000
triggerall = command = "SGS"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 10
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 5
trigger7 = (stateno = 420) && time >= 9
trigger8 = (stateno = 195) && time >= 5
trigger9 = (stateno = 7000) && time >= 8
trigger10 = (stateno = 194) && time >= 5

[State -1, 氷塊結界A]
type = ChangeState
value = 3500
triggerall = command = "GHD_xy"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = NumHelper(3510) <= 12
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, 氷塊結界B]
type = ChangeState
value = 3501
triggerall = command = "GHD_yz"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = NumHelper(3510) <= 12
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, 氷塊結界C]
type = ChangeState
value = 3502
triggerall = command = "GHD_xz"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = NumHelper(3510) <= 12
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, 全てを止める！]
type = ChangeState
value = 3000
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = command = "SPHxy"
trigger1 = ctrl
trigger2 = command = "SPHyz"
trigger2 = ctrl
trigger3 = command = "SPHxz"
trigger3 = ctrl
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

------------------------------------------------------------------------------
---------------------------------------------------------------------------
ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = (stateno = 151 || stateno = 153)
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = var(59)<=0&& RoundState = 2 
triggerall = (command = "holdfwd" || command = "holdback") && command = "z"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
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
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 急加速ダッシュ]
type = ChangeState
value = 10100
triggerall = var(26) != 4
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 10
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 5
trigger7 = (stateno = 420) && time >= 9
ignorehitpause = 1

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
[State -1, ガークラ]
type = ChangeState
triggerall = statetype != A 
triggerall = command = "x+y+z"
trigger1 = ctrl
value = 700
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = NumHelper(310) = 0 
triggerall = statetype != A 
triggerall = command = "b"
trigger1 = ctrl
trigger2 = (stateno = 194) && time >= 5
value = 300
;===========================================================================
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = var(59)<=0&& RoundState = 2 
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command != "holdfwd"
triggerall = command = "c"
;trigger1 = var(26) = 4
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 1000 || stateno = 1010 || stateno = 1020
trigger3 = stateno = 1100 || stateno = 1110 || stateno = 1120
trigger4 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger5 = stateno = 700 || stateno = 701
value = 750
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, ジェントリー・ウィープス]
type = ChangeState
triggerall = NumHelper(7001) = 0 
triggerall = NumHelper(7060) = 0 
triggerall = power != 0
trigger1 = statetype != A && ctrl
trigger1 = command = "a"
value = 7000

[State -1, ジェントリー・ウィープス解除]
type = ChangeState
triggerall = NumHelper(7001) != 0 
triggerall = NumHelper(7060) = 0 
trigger1 = statetype != A && ctrl
trigger1 = command = "a"
value = 7050
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = NumHelper(4010) = 0 
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
triggerall = NumHelper(4010) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------
[State -1, ブチ割れな！]
type = ChangeState
value = 1100
triggerall = command = "DB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, ブチ割れな！中]
type = ChangeState
value = 1110
triggerall = command = "DB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, ブチ割れな！強]
type = ChangeState
value = 1120
triggerall = command = "DB_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, ホワイトアルバム！]
type = ChangeState
value = 1000
triggerall = command = "TSP_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, ホワイトアルバム！中]
type = ChangeState
value = 1010
triggerall = command = "TSP_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, ホワイトアルバム！強]
type = ChangeState
value = 1020
triggerall = command = "TSP_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 8
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, 凍りつきな！]
type = ChangeState
value = 1200
triggerall = command = "GTS_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, 凍りつきな！中]
type = ChangeState
value = 1210
triggerall = command = "GTS_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1

[State -1, 凍りつきな！強]
type = ChangeState
value = 1220
triggerall = command = "GTS_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 410) && time >= 5
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, 攻撃は無駄だ！]
type = ChangeState
value = 1300
triggerall = command = "COU_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 20
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 5
trigger7 = (stateno = 420) && time >= 12
trigger8 = (stateno = 194) && time >= 5
ignorehitpause = 1

[State -1, 攻撃は無駄だ！中]
type = ChangeState
value = 1301
triggerall = command = "COU_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 20
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 5
trigger7 = (stateno = 420) && time >= 12
trigger8 = (stateno = 194) && time >= 5
ignorehitpause = 1

[State -1, 攻撃は無駄だ！強]
type = ChangeState
value = 1302
triggerall = command = "COU_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 220) && time >= 20
trigger5 = (stateno = 400) && time >= 4
trigger6 = (stateno = 410) && time >= 5
trigger7 = (stateno = 420) && time >= 12
trigger8 = (stateno = 194) && time >= 5
ignorehitpause = 1
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 4
trigger4 = stateno = 10100 && time >= 0
ignorehitpause = 1

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 4
trigger4 = stateno = 10100 && time >= 3
ignorehitpause = 1

[State -1, D立ち強キック]
type = ChangeState
value = 230
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, 立ち強キック]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = (stateno = 410) && time > 8
trigger5 = (stateno = 210) && time >= 8
trigger6 = stateno = 10100 && time > 0
ignorehitpause = 1
;------------------------------------------------------------------------------
[State -1, 超挑発]
type = ChangeState
value = 194
triggerall = command = "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 4
trigger4 = (stateno = 100) && time >= 6
trigger5 = (stateno = 100) && time >= 6
trigger6 = stateno = 10100 && time >= 0
ignorehitpause = 1

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 3
trigger3 = (stateno = 400) && time >= 4
trigger4 = (stateno = 100) && time >= 6
trigger5 = (stateno = 100) && time >= 6
trigger6 = stateno = 10100 && time > 0
ignorehitpause = 1

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 4
trigger3 = (stateno = 210) && time >= 8
trigger4 = (stateno = 400) && time >= 5
trigger5 = (stateno = 410) && time > 8
trigger6 = (stateno = 100) && time >= 6
trigger7 = stateno = 10100 && time > 0
ignorehitpause = 1
;------------------------------------------------------------------------------

[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
