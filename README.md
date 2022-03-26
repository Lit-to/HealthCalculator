
# 体力操作モジュール / Managing Health
エンティティの体力操作を簡潔に行うためのモジュール <br />
A instant tool for managing entities health.

## 必要環境 / Recuired
- Minecraft JavaEdition ver.1.16~
- [Ai-Akaishi/ScoreToHealth](https://github.com/Ai-Akaishi/ScoreToHealth)

# 使い方 / How to Use
``var hp_cal``に数値を入れる。<br /> Put Arbitrary number into ``var hp_cal``<br />
操作したいエンティティを主体として``function hp:``を実行する。<br /> Execute function ``hp:`` as entity which you want to modify.<br />
これだけで、現在の体力からスコアの体力を足し引きします。<br />That's all! The entity will change its health.<br />
※ただし、上限を突破することはできません。<br />Warning:You can't set over MaxHealth.br />

# 使用例 / Example
全クリーパーの体力を+10する Add 10 every creaper's health.
```
/scoreboard players set var hp_cal 10
/execute as @e[type=creeper] run function hp:
```
プレイヤーをランダムに一人選んで体力を-5する remove 5 every player's health.
```
/scoreboard players set var hp_cal -5
/execute as @a[sort=random,limit=1] run function hp:
```
# 目的 / Goal
このモジュールは、あるだけで便利な赤石愛氏のScoreToHealthをもっと使いやすく、という自分用に作りました。そのため、本来持っている機能を幾つか失っている点もあります。例えば、一番必要な整数部分だけいじるようにしているので小数点以下を操作する必要がある場合には使うことが出来ません。<br />
This module make ScoreToHealth more easier for me. Unfortunately,there is some points which lost its founction. For example,It can't modify after the decimal point. <br />
その代わり、プレイヤー以外のエンティティにも対応しました。これはScoreToHealthのモジュールに依存していませんが防具を無視したダメージを与えることが出来ます。このモジュールひとつで体力をもつエンティティすべてに足し引きをすることができます。
<br />
Instead, this module also deal with all entity except plalyer. And it doesn't rely on recuired module. It can damage entities ignoring armor. 
# 連絡先 / Contact
[Twitter](https://twitter.com/Lit_to_)
