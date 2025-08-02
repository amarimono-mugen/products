;『プロシュート兄貴』のコマンドファイルです。
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
name = "GHD_xy"
command = ~D, DB, B, x+y

[Command]
name = "GHD_yz"
command = ~D, DB, B, y+z

[Command]
name = "GHD_xz"
command = ~D, DB, B, x+z

[Command]
name = "SPHxyz"
command = ~D, DF, F, x+y+z
time = 20

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

[Command]
name = "USEF"
command = ~D, DF, F, b
time = 15

[Command]
name = "USEB"
command = ~D, DB, B, b
time = 15
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 12

[Command]
name = "upper_y"
command = ~F, D, DF, y
time = 12

[Command]
name = "upper_z"
command = ~F, D, DF, z
time = 12

[Command]
name = "upper_b"
command = ~F, D, DF, b
time = 12

[Command]
name = "COU_x"
command = ~B, D, DB, x
time = 12

[Command]
name = "COU_y"
command = ~B, D, DB, y
time = 12

[Command]
name = "COU_z"
command = ~B, D, DB, z
time = 12

[Command]
name = "GHD_a"
command = ~D, DB, B, a
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
name = "HD_a"
command = ~D, DF, F, a
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
name = "GUN_x"
command = ~D,D,x
time = 10

[Command]
name = "GUN_y"
command = ~D,D,y
time = 10

[Command]
name = "GUN_z"
command = ~D,D,z
time = 10

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y
time = 12

[Command]
name = "GTSP_x"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "GTSP_y"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "GTSP_z"
command = ~F, DF, D, DB, B, z
time = 20
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

[State -1, 直に叩き込む！]
type = ChangeState
value = 3300
triggerall = !var(49)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "SPHxyz"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = NumHelper(1001) = 0 
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = NumHelper(1001) = 0 
trigger4 = (stateno = 410) && time >= 5

[State -1, 老いてもらうぞ！]
type = ChangeState
value = 3000
triggerall = !var(49)
triggerall = command = "GHD_xy" || command = "GHD_yz" || command = "GHD_xz" || command = "USEB"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = var(29)=0
trigger1 = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = NumHelper(1001) = 0 
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = NumHelper(1001) = 0 
trigger4 = (stateno = 410) && time >= 5

[State -1, 直は素早いんだぜ！]
type = ChangeState
value = 3200
triggerall = !var(49)
triggerall = command = "SPHxy" || command = "SPHyz" || command = "SPHxz" || command = "USEF"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = NumHelper(1001) = 0 
trigger2 = (stateno = 210) && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = NumHelper(1001) = 0 
trigger4 = (stateno = 410) && time >= 5
;------------------------------------------------------------------------------
[State -1, ON直に叩き込む！]
type = ChangeState
value = 13300
triggerall = var(49) = 10000
triggerall = command = "SPHxyz"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = var(29)=0
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 8

[State -1, ON老いてもらうぞ！]
type = ChangeState
value = 13000
triggerall = var(49) = 10000
triggerall = command = "GHD_xy" || command = "GHD_yz" || command = "GHD_xz" || command = "USEB"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = var(29)=0
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 8

[State -1, 直は素早いんだぜ！]
type = ChangeState
value = 13200
triggerall = var(49) = 10000
triggerall = command = "SPHxy" || command = "SPHyz" || command = "SPHxz" || command = "USEF"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 8
;------------------------------------------------------------------------------
[State -1, デム]
type = ChangeState
value = 3900
;triggerall = var(43) = 0
triggerall = numhelper(4657) = 0
triggerall = command = "GHD_a"
triggerall = power >= 1000
triggerall = NumHelper(1001) = 0 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
ignorehitpause = 0
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
; 変数の使い方の例。
;
; カンフーマンの「地上で必殺技が出せる状況」や、
; 通常技から必殺技へ繋ぐ時の「キャンセル」の部分を設定している。
; 地上で成功すれば、『変数の例２』のステートコントローラで設定した
; 変数が実行され、それ以外なら『変数の例１』でリセットする、という処理。
;
; 個人的にはこの方法はオススメしない。kfmcでの方法を推薦します。
------------------------------------------------------------------------------
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
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 朽ち果てろ！]
type = ChangeState
value = 1100
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "GTSP_x" || command = "GTSP_y" || command = "GTSP_z"
triggerall = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ON朽ち果てろ！]
type = ChangeState
value = 11100
triggerall = var(49) = 10000
triggerall = command = "GTSP_x" || command = "GTSP_y" || command = "GTSP_z" 
triggerall = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, カウンター]
type = ChangeState
value = 1300
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "COU_x" 
triggerall = statetype != A
trigger1 = ctrl

[State -1, カウンター中]
type = ChangeState
value = 1340
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "COU_y" 
triggerall = statetype != A
trigger1 = ctrl

[State -1, カウンター屈]
type = ChangeState
value = 1350
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "COU_z"
triggerall = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, 対空弱]
type = ChangeState
value = 11300
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "GUN_x"
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1, 対空中]
type = ChangeState
value = 11310
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "GUN_y"
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1, 対空強]
type = ChangeState
value = 11320
triggerall = var(49) = 10000
triggerall = statetype != A
triggerall = command = "GUN_z"
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8
;------------------------------------------------------------------------------
[State -1, 連打　弱]
type = ChangeState
value = 1200
triggerall = !var(49)
triggerall = command = "HD_x" || command = "USEF"
triggerall = statetype != A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 210) && anim = 210 && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = (stateno = 410) && anim = 410 && time >= 5

[State -1, 連打　中]
type = ChangeState
value = 1210
triggerall = !var(49)
triggerall = command = "HD_y"
triggerall = statetype != A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 210) && anim = 210 && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = (stateno = 410) && anim = 410 && time >= 5

[State -1, 連打　強]
type = ChangeState
value = 1220
triggerall = !var(49)
triggerall = command = "HD_z"
triggerall = statetype != A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 210) && anim = 210 && time >= 7
trigger3 = (stateno = 250) && time >= 5
trigger4 = (stateno = 410) && anim = 410 && time >= 5
;------------------------------------------------------------------------------
[State -1,ON連打弱]
type = ChangeState
value = 11200
triggerall = var(49) = 10000
triggerall = command = "HD_x" || command = "USEF"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1,ON連打中]
type = ChangeState
value = 11210
triggerall = var(49) = 10000
triggerall = command = "HD_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1,ON連打強]
type = ChangeState
value = 11220
triggerall = var(49) = 10000
triggerall = command = "HD_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8
;------------------------------------------------------------------------------
[State -1, 空中連打　弱]
type = ChangeState
value = 1400
triggerall = !var(49)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "HD_x" || command = "USEF"
triggerall = statetype = A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 3
trigger3 = (stateno = 610) && time >= 8
trigger4 = (stateno = 620) && time >= 8

[State -1, 空中連打　中]
type = ChangeState
value = 1400
triggerall = !var(49)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "HD_y"
triggerall = statetype = A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 3
trigger3 = (stateno = 610) && time >= 8
trigger4 = (stateno = 620) && time >= 8

[State -1, 空中連打　強]
type = ChangeState
value = 1400
triggerall = !var(49)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "HD_z"
triggerall = statetype = A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 600) && time >= 3
trigger3 = (stateno = 610) && time >= 8
trigger4 = (stateno = 620) && time >= 8
;------------------------------------------------------------------------------
[State -1, ON空中連打]
type = ChangeState
value = 11400
triggerall = var(49) = 10000
triggerall = var(59)<=0&& RoundState = 2 
triggerall = command = "HD_x" || command = "HD_y"  || command = "HD_z" || command = "USEF"
triggerall = statetype = A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 10600) && time >= 4
trigger3 = (stateno = 10615) && time >= 4
trigger4 = (stateno = 10610) && time >= 6
trigger5 = (stateno = 10650) && time >= 6
trigger6 = (stateno = 10620) && time >= 10
trigger7 = (stateno = 10670) && time >= 10
;trigger8 = (stateno = 11301) && time >= 10
;trigger9 = (stateno = 11311) && time >= 10
;trigger10 = (stateno = 11321) && time >= 10
;------------------------------------------------------------------------------
[State -1, 銃]
type = ChangeState
value = 1000
triggerall = !var(49)
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 210) && anim = 210 && time >= 7
trigger3 = (stateno = 410) && anim = 410 && time >= 5
trigger4 = (stateno = 1130) && time >= 60
trigger5 = (stateno = 1330) && time >= 60
;------------------------------------------------------------------------------
[State -1, 銃 弱]
type = ChangeState
value = 11000
triggerall = var(49) = 10000
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = command = "x"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1, 銃 中]
type = ChangeState
value = 11010
triggerall = var(49) = 10000
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = command = "y"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1, 銃 強]
type = ChangeState
value = 11020
triggerall = var(49) = 10000
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8
;==============================================================================
; 特殊技
;==============================================================================
---------------------------------------------------------------------------
ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = !var(49)
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z" || command = "upper_b"
trigger1 = (stateno = 151 || stateno = 153)

ONガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z" || command = "upper_b"
trigger1 = (stateno = 151 || stateno = 153)
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = !var(49)
triggerall = NumHelper(310) = 0 
triggerall = statetype != A 
triggerall = command = "b"
trigger1 = ctrl
trigger2 = (stateno = 1320) && time <= 5
trigger3 = (stateno = 1370) && time <= 5
value = 300
;------------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
trigger2 = stateno = 180   ;挑発
trigger3 = stateno = 220 || stateno = 420
trigger4 = stateno = 1000 || stateno = 1003 || stateno = 1005
trigger5 = stateno = 1100 || stateno = 1103 || stateno = 1105
trigger6 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger7 = stateno = 1300 || stateno = 1340 || stateno = 1350
trigger8 = stateno = 11000 || stateno = 11010 || stateno = 11040
trigger9 = stateno = 11100 || stateno = 11110 || stateno = 11140
trigger10 = stateno = 240 || stateno = 10240
value = 700
ignorehitpause = 1
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = !var(49)
triggerall = NumHelper(4010) = 0
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
triggerall = NumHelper(4010) = 0 
trigger1 = command = "x+y+z" || command = "b"
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
trigger1 = prevstateno != 14000 && prevstateno != 14005
ignorehitpause = 1
value = 14000
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）S
[State -1, Run Back]
type = ChangeState
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 14000 && prevstateno != 14005
value = 14005
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = !var(49)
triggerall = (command = "holdfwd" || command = "holdback") && command = "z"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;投げ on
[State -1, Kung Fu Throw]
type = ChangeState
value = 10900
triggerall = var(49) = 10000
triggerall = (command = "holdfwd" || command = "holdback") && command = "z"
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = P2bodydist X = [-const(size.ground.front),22]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------]
[State -1,発現立ち弱]
type = ChangeState
value = 10215
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = stateno = 200 && anim = 200 && time > 4
trigger3 = stateno = 400 && anim = 400 && time >= 4

[State -1,発現立中]
type = ChangeState
value = 10250
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "y+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = stateno = 200 && anim = 200 && time > 3
trigger3 = stateno = 400 && anim = 400 && time > 3

[State -1,発現立強]
type = ChangeState
value = 10270
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = stateno = 200 && anim = 200 && time > 3
trigger3 = stateno = 210 && anim = 210 && time >= 7
trigger4 = stateno = 400 && anim = 400 && time > 3
trigger5 = stateno = 410 && anim = 410 && time >= 4
;------------------------------------------------------------------------------
[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && anim = 200 && time > 4
trigger3 = stateno = 400 && anim = 400 && time >= 4
trigger4 = (stateno = 100) && time >= 0
trigger5 = (stateno = 105) && time >= 0

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = !var(49)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time > 3
trigger3 = (stateno = 400) && anim = 400 && time > 3
trigger4 = (stateno = 100) && time >= 0
trigger5 = (stateno = 105) && time >= 0

[State -1, 前立ち強]
type = ChangeState
value = 240
triggerall = !var(49)
triggerall = var(59)<=0&& RoundState = 2 
triggerall = NumHelper(1001) = 0 
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time > 3
trigger3 = (stateno = 210) && anim = 210 && time >= 7
trigger4 = (stateno = 400) && anim = 400 && time > 3
trigger5 = (stateno = 410) && anim = 410 && time >= 4

[State -1, 立ち強]
type = ChangeState
value = 220
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time > 3
trigger3 = (stateno = 210) && anim = 210 && time >= 7
trigger4 = (stateno = 400) && anim = 400 && time > 3
trigger5 = (stateno = 410) && anim = 410 && time >= 4

[State -1, 立ち強（スタンド出てる場合）]
type = ChangeState
value = 230
triggerall = !var(49)
triggerall = NumHelper(1001) != 0 
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time >= 0
trigger3 = (stateno = 105) && time >= 0

[State -1, D立ち強]
type = ChangeState
value = 250
triggerall = !var(49)
triggerall = NumHelper(1001) = 0 
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (stateno = 100) && time >= 0
trigger2 = (stateno = 105) && time >= 0
;------------------------------------------------------------------------------
[State -1,ON立ち弱]
type = ChangeState
value = 10200
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10400) && time >= 4
trigger5 = (stateno = 10415) && time >= 4

[State -1,ON立ち中]
type = ChangeState
value = 10210
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10400) && time >= 4
trigger5 = (stateno = 10415) && time >= 4
trigger6 = (stateno = 100) && time >= 0
trigger7 = (stateno = 105) && time >= 0

[State -1,ON後立ち強]
type = ChangeState
value = 10230
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10210) && time >= 10
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1,ON前立ち強]
type = ChangeState
value = 10240
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8

[State -1,ON立ち強]
type = ChangeState
value = 10220
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 8
trigger9 = (stateno = 10450) && time >= 8
;------------------------------------------------------------------------------
[State -1, 発現攻撃]
type = ChangeState
value = 10300
triggerall = !var(49)
triggerall = command = "HD_a"
triggerall = statetype != A
triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA ;立ちしゃがみの通常攻撃(引き寄せも含む)
;------------------------------------------------------------------------------
[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1,発現しゃがみ弱]
type = ChangeState
value = 10415
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "x+a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 200 && anim = 200 && time > 4
trigger4 = stateno = 400 && anim = 400 && time >= 4

[State -1,発現しゃがみ中]
type = ChangeState
value = 10450
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "y+a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 200 && anim = 200 && time > 3
trigger4 = stateno = 400 && anim = 400 && time > 3

[State -1,発現しゃがみ強]
type = ChangeState
value = 10470
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z+a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 200 && anim = 200 && time > 3
trigger4 = stateno = 210 && anim = 210 && time >= 7
trigger5 = stateno = 400 && anim = 400 && time > 3
trigger6 = stateno = 410 && anim = 410 && time >= 4
;------------------------------------------------------------------------------
[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = !var(49)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && anim = 400 && time >= 4
trigger3 = (stateno = 200) && anim = 200 && time > 4
trigger4 = (stateno = 100) && time > 2
trigger5 = (stateno = 105) && time > 2

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = !var(49)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 400) && anim = 400 && time >= 4
trigger4 = (stateno = 100) && time > 2
trigger5 = (stateno = 105) && time > 2

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 400) && anim = 400 && time >= 4
trigger4 = (stateno = 410) && time > 8
trigger5 = (stateno = 100) && time > 2
trigger6 = (stateno = 105) && time > 2

[State -1, しゃがみ強 （スタンド出てる場合）]
type = ChangeState
value = 410
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) != 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 400) && anim = 400 && time >= 4
trigger4 = (stateno = 100) && time > 2
trigger5 = (stateno = 105) && time > 2
;------------------------------------------------------------------------------
[State -1,ON屈弱]
type = ChangeState
value = 10400
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = (stateno = 10200) && time >= 4
trigger4 = (stateno = 10215) && time >= 4
trigger5 = (stateno = 10400) && time >= 4
trigger6 = (stateno = 10415) && time >= 4

[State -1,ON屈中]
type = ChangeState
value = 10410
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = (stateno = 10200) && time >= 4
trigger4 = (stateno = 10215) && time >= 4
trigger5 = (stateno = 10400) && time >= 4
trigger6 = (stateno = 10415) && time >= 4

[State -1,ON屈強]
type = ChangeState
value = 10420
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = (stateno = 10415) && time >= 4
trigger4 = (stateno = 10450) && time >= 8
;------------------------------------------------------------------------------
[State -1,発現ジャンプ弱]
type = ChangeState
value = 10615
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "x+a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact

[State -1,発現ジャンプ中]
type = ChangeState
value = 10650
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "y+a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact

[State -1,発現ジャンプ強]
type = ChangeState
value = 10670
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z+a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
;------------------------------------------------------------------------------
[State -1, ジャンプ弱]
type = ChangeState
value = 600
triggerall = !var(49)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = ChangeState
value = 610
triggerall = !var(49)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = ChangeState
value = 620
triggerall = !var(49)
triggerall = command = "z"
triggerall = NumHelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact

[State -1, ジャンプ強 （スタンド出てる場合）]
type = ChangeState
value = 610
triggerall = !var(49)
triggerall = command = "z"
triggerall = NumHelper(1001) != 0
trigger1 = statetype = A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ONジャンプ弱]
type = ChangeState
value = 10600
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = (stateno = 11301) && time >= 10
;trigger3 = (stateno = 11311) && time >= 10
;trigger4 = (stateno = 11321) && time >= 10

[State -1, ONジャンプ中]
type = ChangeState
value = 10610
triggerall = var(49) = 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = (stateno = 11301) && time >= 10
;trigger3 = (stateno = 11311) && time >= 10
;trigger4 = (stateno = 11321) && time >= 10

[State -1, ONジャンプ強]
type = ChangeState
value = 10620
triggerall = var(49) = 10000
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10610
trigger2 = movecontact
;trigger3 = (stateno = 11301) && time >= 10
;trigger4 = (stateno = 11311) && time >= 10
;trigger5 = (stateno = 11321) && time >= 10
;===========================================================================
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = !var(49)
triggerall = var(7) = 0;スタンド発現可のとき
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = S;!= A    ;S, C, A(立ち、しゃがみ、空中
trigger1 = NumHelper(2) = 0 ;SFがでてないとき
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（しゃがみ）
[State -1, Taunt]
type = ChangeState
value = 16001
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（空中）
[State -1, Taunt]
type = ChangeState
value = 16002
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;スタンド解除（立ち）
[State -1, Taunt]
type = ChangeState
value = 830
triggerall = var(44) = 0
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
triggerall = var(44) = 0
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
triggerall = var(44) = 0
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
