【あまりもの氏製作「影ディアボロ」AI　　by天窟カリヤ】






今年も良いジョジョ年でありますように







適用方法は他のAIと変わりありません。

AI常時起動スイッチはcmdファイル内にあります。


;AI--------------------------------------------------------------------------

;AI Command Check
[State -1, AI Command]
Type = VarSet
TriggerAll = Var(59)=0 && !isHelper
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
；Trigger14 = 1;AI即起動スイッチ
↑
この；を外すと常時起動となります。デフォルトでは「常時起動on」なのでご注意を。
※ここの；を弄っても意味はありません、cmdファイル内にある方を弄って下さい。確か下の方にあります。


動画での使用は構いません。
※このAIはタッグ戦をまだ想定していません。タッグ戦時に高確率で挙動不審になると思います･･･



もし何か不都合なことや不具合があれば　http://doukutunohoshizora.blog.fc2.com/  にて、報告お願いします。
意見なども大歓迎です。



――――――――――――――――――――――――――――――――――――――
更新履歴

2014/12/30
公開

2015/1/2
挙動不審、その他技の発動条件を改善

1/9
最新版に対応、立ち回り追加

1/12
手動操作時に「キング・クリムゾンの宮殿」を発動するとキャラが失踪するバグを修正

2/11
立ち回り強化
細かいバグ修正

4/1
立ち回りを更に強化&行動パターン追加
最新版に対応

4/2
記述ミスを修正

4/3
ゲージを消費する技の発動条件変更

4/5
連続SMバグ修正、血コンボ通常ルートでの〆技変更

――――――――――――――――――――――――――――――――――――――
今後の予定

バグ修正 、PCコンボ追加、その他色々･･･





――――――――――――――――――――――――――――――――――――――

スペシャルサンクス

あまりもの氏
DLしてくれた方々
荒木飛呂彦先生
ブログ訪問者の方々
他のAI製作者の方々、多くの記述を参考にさせていただきました。


