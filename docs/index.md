# ***Zooggame***

#### 提出日 2018/06/15

#### 作成者 5415031 癸生川裕紀, 5415082 森田瑛仁, 5416001 天本大陽

####  [Source](tree.html)

---
## 仕様
#### ルール
Zoogを倒してステージを進めよう。
#### 操作
開始 : [Space]
次へ進む : [G]
タイトルへ戻る:[R]

---
## クラス

![classDiagram]([http://yuml.me/moriakijp/zooggame.svg](http://yuml.me/moriakijp/zooggame.svg))
説明 :
Drawクラスで描画。
Playerクラスでマウス座標に追従する板を描画。
使用したUMLモデリングツール : [yuml.me](https://yuml.me/diagram/scruffy/class/draw ) << uml.txt

## 役割分担


|         | Zooggame | State | State_Title | State_Game | State_End_Youwon |
| :-----: | :------: | :---: | :---------: | :--------: | :--------------: |
| 5415031 |    -     |   -   |      -      |     -      |        -         |
| 5415082 |    ○     |   ○   |      ○      |     ○      |        ○         |
| 5416001 |    -     |   -   |      -      |     -      |        -         |

|         | Count | Time  | Board | NormalZoog | StoppingZoog | SmartZoog |
| :-----: | :---: | :---: | :---: | :--------: | :----------: | :-------: |
| 5415031 |   -   |   -   |   -   |     ○      |      ○       |     ○     |
| 5415082 |   -   |   -   |   -   |     -      |      -       |     -     |
| 5416001 |   ○   |   ○   |   ○   |     -      |      -       |     -     |
