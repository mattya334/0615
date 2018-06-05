# ***Zooggame***

#### 提出日 2018/06/15
#### 作成者 541xxxx, 541xxxx, 541xxxx
#### Source :
[Github](https://github.com/moriakijp/0615)
[Onedrive](https://1drv.ms/f/s!AtoKHagF3g3Bg4Bt62m3GWnqKWiBoQ)

---

## 仕様

ルール : Zoogの目にBallが当たると消える。両目を潰すと倒せる。制限時間20秒。

開始 : [Space]キーを押す

---
## ファイル構成
```
0615
├── index.html
├── images
│   └── enshu.gif
├── docs
│   ├── uml.txt
│   └── index.md
├── scripts
│   └── Draw
│       ├── Count.pde
│       ├── StoppingZoog.pde
│       ├── Zoog.pde
│       ├── SmartZoog.pde
│       ├── Time.pde
│       ├── Messsage.pde
│       ├── NormalZoog.pde
│       └── Draw.pde
└── assets
    ├── processing.js
    ├── processing.min.js
    └── Zooggame
        ├── Count.pde
        ├── StoppingZoog.pde
        ├── Player.pde
        ├── Zoog.pde
        ├── SmartZoog.pde
        ├── Time.pde
        ├── Zooggame.pde
        ├── Messsage.pde
        └── NormalZoog.pde

6 directories, 23 files

```
---
## クラス
![classDiagram](http://yuml.me/6b520cac.png)

説明 :
Drawクラスで描画。
Playerクラスでマウス座標に追従する板を描画。

使用したUMLモデリングツール : [yuml.me](https://yuml.me/diagram/scruffy/class/draw ) << uml.txt



## 役割分担

|         | Zooggame | Count | Message | Zoog  | NormalZoog | StoppingZoog | SmartZoog | Ball  |
| :-----: | :------: | :---: | :-----: | :---: | :--------: | :----------: | :-------: | :---: |
| 541xxxx |    -     |   -   |    -    |   -   |     -      |      -       |     -     |   -   |
| 541xxxx |    -     |   -   |    -    |   -   |     -      |      -       |     -     |   -   |
| 541xxxx |    -     |   -   |    -    |   -   |     -      |      -       |     -     |   -   |

|         | Player | Block | Wall  |       |       |       |       |       |
| :-----: | :----: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 541xxxx |        |       |       |       |       |       |       |       |
| 541xxxx |        |       |       |       |       |       |       |       |
| 541xxxx |        |       |       |       |       |       |       |       |

|         |       |       |       |       |       |       |       |       |
| :-----: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 541xxxx |       |       |       |       |       |       |       |       |
| 541xxxx |       |       |       |       |       |       |       |       |
| 541xxxx |       |       |       |       |       |       |       |       |
