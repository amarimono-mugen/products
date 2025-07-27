;『岸辺露伴』のコマンドファイルです。
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
name = "SRY_x"
command = ~F, D, DF, x
time = 12

[Command]
name = "SRY_y"
command = ~F, D, DF, y
time = 12

[Command]
name = "SRY_z"
command = ~F, D, DF, z
time = 12

[Command]
name = "GSRY_x"
command = ~B, D, DB, x
time = 12

[Command]
name = "GSRY_y"
command = ~B, D, DB, y
time = 12

[Command]
name = "GSRY_z"
command = ~B, D, DB, z
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
name = "GHD_x"
command = ~D, DB, B, x
time = 12

[Command]
name = "GHD_y"
command = ~D, DB, B, y
time = 12

[Command]
name = "GHD_z"
command = ~D, DB, B, z
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
name = "HD_c"
command = ~D, DF, F, c
time = 12

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
name = "BTF_x"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "BTF_y"
command = ~B, DB, D, DF, F, y
time = 20

[Command]
name = "BTF_z"
command = ~B, DB, D, DF, F, z
time = 20
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
[State -1, Soff 記憶を全て消す]
type = ChangeState
value = 3500
triggerall = var(56) = 3
triggerall = !var(49)
triggerall = command = "SPHxz"
triggerall = statetype != A
triggerall = power >= 3000
triggerall = NumHelper(1001) = 0
trigger1 = ctrl

[State -1, Soff天国の扉]
type = ChangeState
value = 3300
triggerall = !var(49)
triggerall = command = "SPHxyz" || command = "b"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = NumHelper(1001) = 0
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = (stateno = [300,320]) || (stateno = [500,520])
trigger3 = palno = [11,12]
trigger3 = time >= 15
trigger3 = (stateno = [1000,1020])
trigger4 = palno = [11,12]
trigger4 = time >= 15
trigger4 = (stateno = [1100,1120])
trigger5 = palno = [11,12]
trigger5 = time >= 16
trigger5 = (stateno = [1200,1220])
trigger6 = palno = [11,12]
trigger6 = time >= 20
trigger6 = (stateno = [1500,1520])

[State -1, Soff君の記憶を貰う！]
type = ChangeState
value = 3000
triggerall = !var(49)
triggerall = command = "SPHxy" || command = "SPHyz" || command = "SPHxz" || command = "HD_c"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = NumHelper(1001) = 0
trigger1 = ctrl
trigger2 = time >= 20
trigger2 = (stateno = [300,320]) || (stateno = [500,520])
trigger3 = time >= 15
trigger3 = (stateno = [1000,1020])
trigger4 = time >= 15
trigger4 = (stateno = [1100,1120])
trigger5 = time >= 16
trigger5 = (stateno = [1200,1220])
trigger6 = time >= 20
trigger6 = (stateno = [1500,1520])
;------------------------------------------------------------------------------
[State -1, Son 記憶を全て消す]
type = ChangeState
value = 13500
triggerall = var(56) = 3
triggerall = var(49) = 10000
triggerall = command = "SPHxz"
triggerall = statetype != A
triggerall = power >= 3000
triggerall = NumHelper(1001) = 0
trigger1 = ctrl

[State -1, Son天国の扉]
type = ChangeState
value = 13300
triggerall = var(49) = 10000
triggerall = command = "SPHxyz" || command = "b"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
trigger11 = palno = [11,12]
trigger11 = time >= 20
trigger11 = stateno = [11000,11020]
trigger12 = palno = [11,12]
trigger12 = time >= 20
trigger12 = stateno = [11100,11120]
trigger13 = palno = [11,12]
trigger13 = time >= 16
trigger13 = stateno = [11200,11220]
trigger14 = palno = [11,12]
trigger14 = time >= 20
trigger14 = (stateno = [11500,11520])

[State -1, Son君の記憶を貰う！]
type = ChangeState
value = 13000
triggerall = var(49) = 10000
triggerall = command = "SPHxy" || command = "SPHyz" || command = "SPHxz" || command = "HD_c"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
trigger11 = time >= 20
trigger11 = stateno = [11000,11020]
trigger12 = time >= 20
trigger12 = stateno = [11100,11120]
trigger13 = time >= 16
trigger13 = stateno = [11200,11220]
trigger14 = time >= 20
trigger14 = (stateno = [11500,11520])
;------------------------------------------------------------------------------
[State -1, デム]
type = null;ChangeState
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
---------------------------------------------------------------------------
[State -1, ちょいと素早かったかな？]
type = ChangeState
value = 1600
triggerall = var(32) = 1
triggerall = !var(49)
triggerall = command = "GSRY_x"||command = "GSRY_y"||command = "GSRY_z"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ペン投げ]
type = ChangeState
value = 1100
triggerall = !var(49)
triggerall = command = "GHD_x" || command = "GHD_y" || command = "GHD_z"
triggerall = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ONペン投げ]
type = ChangeState
value = 11100
triggerall = var(49) = 10000
triggerall = command = "GHD_x" || command = "GHD_y" || command = "GHD_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
;------------------------------------------------------------------------------
[State -1, どん描き　弱]
type = ChangeState
value = 1200
triggerall = !var(49)
triggerall = command = "SRY_x"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl

[State -1, どん描き　中]
type = ChangeState
value = 1200
triggerall = !var(49)
triggerall = command = "SRY_y"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl

[State -1, どん描き　強]
type = ChangeState
value = 1200
triggerall = !var(49)
triggerall = command = "SRY_z"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, ONどん描き L]
type = ChangeState
value = 11200
triggerall = var(49) = 10000
triggerall = command = "SRY_x"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, ONどん描き M]
type = ChangeState
value = 11200
triggerall = var(49) = 10000
triggerall = command = "SRY_y"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, ONどん描き H]
type = ChangeState
value = 11200
triggerall = var(49) = 10000
triggerall = command = "SRY_z"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
;------------------------------------------------------------------------------
[State -1, ON先手必勝 L]
type = ChangeState
value = 11300
triggerall = var(49) = 10000
triggerall = command = "BTF_x"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, ON先手必勝 M]
type = ChangeState
value = 11300
triggerall = var(49) = 10000
triggerall = command = "BTF_y"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, ON先手必勝 H]
type = ChangeState
value = 11300
triggerall = var(49) = 10000
triggerall = command = "BTF_z"
triggerall = statetype != A
;triggerall = NumHelper(1001) = 0 
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
;------------------------------------------------------------------------------
[State -1, 僕は成長している！]
type = ChangeState
value = 1000
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "HD_x" || command = "HD_y"  || command = "HD_z" || command = "USEF"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 210) && anim = 210 && time >= 7
trigger4 = (stateno = 400) && anim = 400 && time >= 6
trigger5 = (stateno = 410) && anim = 410 && time >= 6
trigger6 = (stateno = 1130) && time >= 60
trigger7 = (stateno = 1330) && time >= 60
;------------------------------------------------------------------------------
[State -1, S僕は成長している！ L]
type = ChangeState
value = 11000
triggerall = var(49) = 10000
triggerall = command = "HD_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, S僕は成長している！ M]
type = ChangeState
value = 11010
triggerall = var(49) = 10000
triggerall = command = "HD_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10

[State -1, S僕は成長している！ H]
type = ChangeState
value = 11020
triggerall = var(49) = 10000
triggerall = command = "HD_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
;------------------------------------------------------------------------------
[State -1, タコに命令した！L]
type = ChangeState
value = 1500
triggerall = var(31) = 1
triggerall = !var(49)
triggerall = ifelse(palno = 11, NumHelper(1500) <= 1, ifelse(palno = 12,NumHelper(1500) <= 10,NumHelper(1500) = 0))
triggerall = command = "DD_x"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl

[State -1, タコに命令した！M]
type = ChangeState
value = 1510
triggerall = var(31) = 1
triggerall = !var(49)
triggerall = ifelse(palno = 11, NumHelper(1500) <= 1, ifelse(palno = 12,NumHelper(1500) <= 10,NumHelper(1500) = 0))
triggerall = command = "DD_y"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl

[State -1, タコに命令した！H]
type = ChangeState
value = 1520
triggerall = var(31) = 1
triggerall = !var(49)
triggerall = ifelse(palno = 11, NumHelper(1500) <= 1, ifelse(palno = 12,NumHelper(1500) <= 10,NumHelper(1500) = 0))
triggerall = command = "DD_z"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, タコに命令した！SonL]
type = ChangeState
value = 11500
triggerall = var(31) = 1
triggerall = var(49) = 10000
triggerall = ifelse(palno = 11, NumHelper(1500) <= 1, ifelse(palno = 12,NumHelper(1500) <= 10,NumHelper(1500) = 0))
triggerall = command = "DD_x"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10220) && time >= 8
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 4
trigger8 = (stateno = 10420) && time >= 12

[State -1, タコに命令した！SonM]
type = ChangeState
value = 11510
triggerall = var(31) = 1
triggerall = var(49) = 10000
triggerall = ifelse(palno = 11, NumHelper(1500) <= 1, ifelse(palno = 12,NumHelper(1500) <= 10,NumHelper(1500) = 0))
triggerall = command = "DD_y"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10220) && time >= 8
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 4
trigger8 = (stateno = 10420) && time >= 12

[State -1, タコに命令した！SonH]
type = ChangeState
value = 11520
triggerall = var(31) = 1
triggerall = var(49) = 10000
triggerall = ifelse(palno = 11, NumHelper(1500) <= 1, ifelse(palno = 12,NumHelper(1500) <= 10,NumHelper(1500) = 0))
triggerall = command = "DD_z"
triggerall = statetype != A
triggerall = power >= 250
trigger1 = ctrl
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10220) && time >= 8
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10410) && time >= 4
trigger8 = (stateno = 10420) && time >= 12
;==============================================================================
; 特殊技
;==============================================================================
---------------------------------------------------------------------------
ガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = var(35) = 1
triggerall = !var(49)
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = command = "SRY_x" || command = "SRY_y" || command = "SRY_z"
trigger1 = (stateno = [150,155]);(stateno = 151 || stateno = 153)

ONガーキャン
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11800
triggerall = var(35) = 1
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = command = "SRY_x" || command = "SRY_y" || command = "SRY_z"
trigger1 = (stateno = 151 || stateno = 153)
;------------------------------------------------------------------------------
[State -1, 回り込み]
type = ChangeState
triggerall = var(33) = 1
triggerall = !var(49)
triggerall = NumHelper(295) = 0 
triggerall = statetype != A
;triggerall = command = "holdfwd"
triggerall = command = "a" && command = "x"
trigger1 = ctrl
trigger2 = (stateno = 1320) && time <= 5
trigger3 = (stateno = 1370) && time <= 5
value = 290
;------------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "c"
triggerall = palno != 12 || var(11) < 3
trigger1 = stateno = 11500 || stateno = 11510 || stateno = 11520
trigger1 = time >= 18
trigger2 = (stateno = 10200) && time >= 7
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10220) && time >= 8
trigger6 = (stateno = 10250) && time >= 10
trigger7 = (stateno = 10400) && time >= 4
trigger8 = (stateno = 10415) && time >= 4
trigger9 = (stateno = 10410) && time >= 10
trigger10 = (stateno = 10420) && time >= 10
trigger11 = stateno = 300 || stateno = 310 || stateno = 320
trigger11 = time >= 19
trigger12 = stateno = 500 || stateno = 510 || stateno = 520
trigger12 = time >= 19
trigger13 = stateno = 1000 || stateno = 1003 || stateno = 1005
trigger13 = time >= 13
trigger14 = stateno = 1100 || stateno = 1103 || stateno = 1105
trigger14 = time >= 7
trigger15 = stateno = 1200 || stateno = 1210 || stateno = 1220
trigger15 = time >= 16
trigger16 = stateno = 1500 || stateno = 1510 || stateno = 1520
trigger16 = time >= 18
trigger17 = stateno = 11000 || stateno = 11010 || stateno = 11020
trigger17 = time >= 13
trigger18 = stateno = 11100 || stateno = 11110 || stateno = 11120
trigger18 = time >= 7
trigger19 = stateno = 11200 || stateno = 11210 || stateno = 11220
trigger19 = time >= 16
trigger20 = stateno = 11300
trigger20 = time >= 33
value = 2000
ignorehitpause = 0
;------------------------------------------------------------------------------
[State -1, 擬似スタンドキャンセル]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 250
triggerall = command = "a"
trigger1 = stateno = 11000 || stateno = 11010 || stateno = 11020
value = 2100
ignorehitpause = 1
;---------------------------------------------------------------------------
;アドバンシング（立ち）
[State -1, Run Back]
type = ChangeState
triggerall = var(34) = 1
triggerall = !var(49)
triggerall = NumHelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = power >= 100
ignorehitpause = 1
value = 4100
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）
[State -1, Run Back]
type = ChangeState
triggerall = var(34) = 1
triggerall = !var(49)
triggerall = NumHelper(4010) = 0 
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
trigger1 = power >= 100
value = 4105
;---------------------------------------------------------------------------
;アドバンシング（立ち）S
[State -1, Run Back]
type = ChangeState
triggerall = var(34) = 1
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 14000 && prevstateno != 14005
trigger1 = power >= 100
ignorehitpause = 1
value = 14000
;---------------------------------------------------------------------------
;アドバンシング（しゃがみ）S
[State -1, Run Back]
type = ChangeState
triggerall = var(34) = 1
triggerall = var(49) = 10000
triggerall = numhelper(4010) = 0
trigger1 = command = "x+y+z" || command = "b"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 14000 && prevstateno != 14005
trigger1 = power >= 100
value = 14005
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "c"
trigger1 = ctrl || ((stateno = [100,105]) && time > 2)
;---------------------------------------------------------------------------
;投げ on
[State -1, Kung Fu Throw]
type = ChangeState
value = 10900
triggerall = var(49) = 10000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "LM" || command = "MH" || command = "LH" || command = "c"
trigger1 = ctrl || ((stateno = [100,105]) && time > 2)
;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------]
[State -1,発現立ち弱]
type = null;ChangeState
value = 10215
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = stateno = 200 && anim = 200 && time > 4
trigger3 = stateno = 400 && anim = 400 && time >= 5

[State -1,発現立中]
type = null;ChangeState
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
type = null;ChangeState
value = 10270
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z+a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = stateno = 200 && anim = 200 && time > 3
trigger3 = stateno = 210 && anim = 210 && time >= 8
trigger4 = stateno = 400 && anim = 400 && time > 3
trigger5 = stateno = 410 && anim = 410 && time >= 4
;------------------------------------------------------------------------------
[State -1, 安全装置L]
type = ChangeState
value = 300
triggerall = !var(49)
triggerall = command = "x"
;triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, 安全装置M]
type = ChangeState
value = 310
triggerall = !var(49)
triggerall = command = "y"
;triggerall = command != "holdfwd"
;triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, 安全装置H]
type = ChangeState
value = 320
triggerall = !var(49)
triggerall = command = "z"
;triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, 立ち弱]
type = null;ChangeState
value = 200
triggerall = !var(49)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && anim = 200 && time > 4
trigger3 = stateno = 400 && anim = 400 && time >= 5
trigger4 = (stateno = 100) && time >= 0
trigger5 = (stateno = 105) && time >= 0

[State -1, 立ち中]
type = null;ChangeState
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

[State -1, 立ち強]
type = null;ChangeState
value = 220
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time > 3
trigger3 = (stateno = 210) && anim = 210 && time >= 8
trigger4 = (stateno = 400) && anim = 400 && time > 3
trigger5 = (stateno = 410) && anim = 410 && time >= 6
;------------------------------------------------------------------------------
[State -1,ON立ち弱]
type = ChangeState
value = 10200
triggerall = var(49) = 10000
triggerall = command = "x" || command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10400) && time >= 6

[State -1,ON立ち中]
type = ChangeState
value = 10210
triggerall = var(49) = 10000
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 4
trigger3 = (stateno = 10215) && time >= 7
trigger4 = (stateno = 10400) && time >= 6
trigger5 = (stateno = 10415) && time >= 4
trigger6 = (stateno = 100) && time >= 0
trigger7 = (stateno = 105) && time >= 0

[State -1,ON立ち中];EBver
type = ChangeState
value = 10210
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = (command = "y" && var(2))
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10200 && time >= 4

[State -1,ON立ち強];EBver
type = ChangeState
value = 10220
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = (command = "y" && var(2))
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10210 && time >= 9

[State -1,ON僕は成長している];EBver
type = ChangeState
value = 11020
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = (command = "y" && var(2))
triggerall = command = "x"
trigger1 = movecontact
trigger1 = stateno = 10220 && time >= 12

[State -1,ON君の記憶を貰う！];EBver
type = ChangeState
value = 13000
triggerall = var(49) = 10000
triggerall = var(8) = 1
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = statetype != A
;triggerall = (command = "y" && var(2))
triggerall = command = "x"
trigger1 = helper(1001),movecontact
trigger1 = stateno = 11020 && time >= 12

[State -1,ON立ち強]
type = ChangeState
value = 10220
triggerall = var(49) = 10000
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || stateno = 105
trigger2 = (stateno = 10200) && time >= 4
trigger3 = (stateno = 10210) && time >= 10
trigger4 = (stateno = 10215) && time >= 7
trigger5 = (stateno = 10250) && time >= 10
trigger6 = (stateno = 10400) && time >= 4
trigger7 = (stateno = 10415) && time >= 4
trigger8 = (stateno = 10410) && time >= 9
trigger9 = (stateno = 10450) && time >= 8
;------------------------------------------------------------------------------
[State -1, 発現攻撃]
type = null;ChangeState
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
value = 196
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発B]
type = ChangeState
value = 195
triggerall = command = "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 挑発C]
type = ChangeState
value = 197
triggerall = command = "holdfwd"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1,発現しゃがみ弱]
type = null;ChangeState
value = 10415
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "x+a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 200 && anim = 200 && time > 4
trigger4 = stateno = 400 && anim = 400 && time >= 5

[State -1,発現しゃがみ中]
type = null;ChangeState
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
type = null;ChangeState
value = 10470
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z+a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno = 100 || stateno = 105
trigger3 = stateno = 200 && anim = 200 && time > 3
trigger4 = stateno = 210 && anim = 210 && time >= 8
trigger5 = stateno = 400 && anim = 400 && time > 3
trigger6 = stateno = 410 && anim = 410 && time >= 4
;------------------------------------------------------------------------------
[State -1, 安全装置屈L]
type = ChangeState
value = 500
triggerall = !var(49)
triggerall = command = "x"
;triggerall = command = "holdback"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, 安全装置屈M]
type = ChangeState
value = 510
triggerall = !var(49)
triggerall = command = "y"
;triggerall = command != "holdfwd"
;triggerall = command != "holdback"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, 安全装置屈H]
type = ChangeState
value = 520
triggerall = !var(49)
triggerall = command = "z"
;triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100) && time > 2
trigger3 = (stateno = 105) && time > 2

[State -1, しゃがみ弱]
type = null;ChangeState
value = 400
triggerall = !var(49)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && anim = 400 && time >= 6
trigger3 = (stateno = 200) && anim = 200 && time > 4
trigger4 = (stateno = 100) && time > 2
trigger5 = (stateno = 105) && time > 2

[State -1, しゃがみ中]
type = null;ChangeState
value = 410
triggerall = !var(49)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 400) && anim = 400 && time >= 5
trigger4 = (stateno = 100) && time > 2
trigger5 = (stateno = 105) && time > 2

[State -1, しゃがみ強]
type = null;ChangeState
value = 420
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 400) && anim = 400 && time >= 5
trigger4 = (stateno = 410) && time > 8
trigger5 = (stateno = 100) && time > 2
trigger6 = (stateno = 105) && time > 2

[State -1, しゃがみ強 （スタンド出てる場合）]
type = null;ChangeState
value = 410
triggerall = !var(49)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(1001) != 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && anim = 200 && time >= 4
trigger3 = (stateno = 400) && anim = 400 && time >= 5
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
trigger5 = (stateno = 10400) && time >= 6
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
trigger3 = (stateno = 10200) && time >= 4
trigger4 = (stateno = 10210) && time >= 10
trigger5 = (stateno = 10400) && time >= 6
trigger6 = (stateno = 10410) && time >= 11
;------------------------------------------------------------------------------
[State -1,発現ジャンプ弱]
type = null;ChangeState
value = 10615
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "x+a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact

[State -1,発現ジャンプ中]
type = null;ChangeState
value = 10650
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "y+a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact

[State -1,発現ジャンプ強]
type = null;ChangeState
value = 10670
triggerall = !var(49)
triggerall = NumHelper(1001) = 0
triggerall = command = "z+a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
;------------------------------------------------------------------------------
[State -1, 安全装置空L]
type = ChangeState
value = 700
triggerall = !var(49)
;triggerall = command = "holdback"
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = palno = 12
trigger2 = stateno = [700,720]
trigger2 = time >= 25

[State -1, 安全装置空M]
type = ChangeState
value = 710
triggerall = !var(49)
;triggerall = command != "holdfwd"
;triggerall = command != "holdback"
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = palno = 12
trigger2 = stateno = [700,720]
trigger2 = time >= 25

[State -1, 安全装置空H]
type = ChangeState
value = 720
triggerall = !var(49)
;triggerall = command = "holdfwd"
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = palno = 12
trigger2 = stateno = [700,720]
trigger2 = time >= 25
;------------------------------------------------------------------------------
[State -1, ジャンプ弱]
type = null;ChangeState
value = 600
triggerall = !var(49)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中]
type = null;ChangeState
value = 610
triggerall = !var(49)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ強]
type = null;ChangeState
value = 620
triggerall = !var(49)
triggerall = command = "z"
triggerall = NumHelper(1001) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

[State -1, ジャンプ強 （スタンド出てる場合）]
type = null;ChangeState
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

[State -1, ONジャンプ中]
type = ChangeState
value = 10610
triggerall = var(49) = 10000
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = palno = 12
trigger2 = stateno = 10600 || stateno = 10610 || stateno = 10620
trigger2 = movecontact

[State -1, ONジャンプ強]
type = ChangeState
value = 10620
triggerall = var(49) = 10000
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = palno = 12
trigger2 = stateno = 10600 || stateno = 10610 || stateno = 10620
trigger2 = movecontact
;===========================================================================
;クイックスタンドオン
[State -1, Taunt]
type = ChangeState
value = 10830
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 300 || stateno = 310 || stateno = 320
trigger1 = time >= 19
trigger2 = stateno = 500 || stateno = 510 || stateno = 520
trigger2 = time >= 19
ignorehitpause = 0
;===========================================================================
;スタンド発現（立ち）
[State -1, Taunt]
type = ChangeState
value = 10820
triggerall = numhelper(1001) = 0
triggerall = NumHelper(2) = 0 
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

;スタンド発現（しゃがみ）
[State -1, Taunt]
type = null;ChangeState
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
type = null;ChangeState
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
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0

;スタンド解除（しゃがみ）
[State -1, Taunt]
type = null;ChangeState
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
type = null;ChangeState
value = 16005
triggerall = var(44) = 0
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
;triggerall = !Ishelper
triggerall = palno = 12
triggerall = var(4) = 1
triggerall = command = "up";"holdup"
triggerall = command != "upc"
trigger1 = stateno = 50
trigger1 = ctrl
trigger2 = stateno = 10600 || stateno = 10610 || stateno = 10620
trigger2 = movecontact
trigger3 = stateno = 10600 && time >= 5
trigger4 = stateno = 10610 && time >= 12
trigger5 = stateno = 10620 && time >= 12
trigger6 = stateno = [700,720]
trigger6 = time >= 25
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
