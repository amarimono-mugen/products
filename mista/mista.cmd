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

[State -1, パスパース超 小]
type = null;ChangeState
value = 1160
triggerall = power >= 1000
triggerall = command = "QCB_xy"
triggerall = statetype != A
triggerall = NumHelper(1101) = 0
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 230) && time > 23
trigger3 = stateno = 1300 || stateno = 1310 || stateno = 1320
trigger3 = time > 20

[State -1, パスパース超 中]
type = null;ChangeState
value = 1150
triggerall = power >= 1000
triggerall = command = "QCB_yz"
triggerall = statetype != A
triggerall = NumHelper(1101) = 0
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 230) && time > 23
trigger3 = stateno = 1300 || stateno = 1310 || stateno = 1320
trigger3 = time > 20

[State -1, パスパース超 大]
type = null;ChangeState
value = 1130
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumHelper(1101) = 0 
triggerall = command = "QCB_xz"
triggerall = var(55) != 0
trigger1 = ctrl
trigger2 = (stateno = 230) && time > 23
trigger3 = stateno = 1300 || stateno = 1310 || stateno = 1320
trigger3 = time > 20
;------------------------------------------------------------------------------
[State -1, スパコン];ゲージレベル１
type = ChangeState
value = 2900
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
;-----------------------------------------------------------------------------
[State -1, パスパース弱]
type = null;ChangeState
value = 1100
triggerall = command = "QCB_x"
triggerall = statetype != A
triggerall = NumHelper(1101) = 0
triggerall = var(55) != 0 
trigger1 = ctrl

[State -1, パスパース中]
type = null;ChangeState
value = 1110
triggerall = command = "QCB_y"
triggerall = statetype != A
triggerall = NumHelper(1101) = 0
triggerall = var(55) != 0
trigger1 = ctrl

[State -1, パスパース強]
type = null;ChangeState
value = 1120
triggerall = command = "QCB_z"
triggerall = statetype != A
triggerall = NumHelper(1101) = 0
triggerall = var(55) != 0
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, 空中発砲]
type = ChangeState
value = 1200
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
triggerall = command = "QCF_a"
triggerall = statetype != A
triggerall = var(53) != 10
triggerall = var(55) != 0
trigger1 = ctrl

[State -1, 屈ホールド]
type = ChangeState
value = 11020
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = statetype != A
triggerall = var(53) != 10
triggerall = var(55) != 0
trigger1 = ctrl

[State -1, 空中ホールド]
type = ChangeState
value = 11200
triggerall = command = "QCF_a"
triggerall = statetype = A
triggerall = var(53) != 10
triggerall = var(55) != 0
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, 彫刻]
type = ChangeState
value = 1300
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
triggerall = Var(59)!=1&&roundstate=2
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
trigger1 = statetype != A && ctrl
trigger1 = command = "b"
value = 300
;---------------------------------------------------------------------------
[State -1, 擬似プッツンキャンセル]
type = ChangeState
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
triggerall = NumHelper(4010) = 0 
trigger1 = command = "x+y+z" || command = "b" || command = "z"
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4000 && prevstateno != 4005
value = 4105
;------------------------------------------------------------------------------
[State -1, リロード]
type = ChangeState
value = 350
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
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 6

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

[State -1, 前立ち強]
type = ChangeState
value = 230
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
triggerall = command = "start"
triggerall = var(53) != 10
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 8
trigger3 = (stateno = 400) && time >= 6

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

[State -1, しゃがみ強キック]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
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
