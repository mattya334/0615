# **Zoogゲーム**

<!-- ![2018-06-02 16.50.29](images/enshu.gif) -->
<canvas data-processing-sources="assets/Draw/Draw.pde"></canvas>
<script src="assets/processing.js"></script>
<script></script>

#### 提出日 2018/06/15
#### 作成者 541xxxx, 541xxxx, 541xxxx
#### Source : [Github](https://github.com/moriakijp/0615), [Onedrive](https://1drv.ms/f/s!AtoKHagF3g3Bg4Bt62m3GWnqKWiBoQ)

---

## 仕様

ルール : Zoogの目にBallが当たると消える。両目を潰すと倒せる。制限時間20秒。

開始 : [Space]キーを押す

---
## ファイル構成
```
0615
├── images
│   ├── 81763b16.png
│   └── enshu.gif
├── index.html
├── index.md
└── scripts
    └── Draw
        ├── Count.pde
        ├── Draw.pde
        ├── Messsage.pde
        ├── NormalZoog.pde
        ├── SmartZoog.pde
        ├── StoppingZoog.pde
        ├── Time.pde
        └── Zoog.pde

3 directories, 12 files
```



## クラス
![classDiagram](http://yuml.me/6b520cac.png)

説明 :
Drawクラスで描画。
Playerクラスでマウス座標に追従する板を描画。

使用したUMLモデリングツール : [yuml.me](https://yuml.me/diagram/scruffy/class/draw ) << uml.txt



## 役割分担


 Draw   | Time | Count | Message | Zoog | NormalZoog | StoppingZoog | SmartZoog | Ball
------- | ---- | ----- | ------- | ---- | ---------- | ------------ | --------- | ----
541xxxx | -    | -     | -       | -    | -          | -            | -         | -
541xxxx | -    | -     | -       | -    | -          | -            | -         | -
541xxxx | -    | -     | -       | -    | -          | -            | -         | -


 Draw   | Time | Count | Message | Zoog | NormalZoog | StoppingZoog | SmartZoog | Ball
------- | ---- | ----- | ------- | ---- | ---------- | ------------ | --------- | ----
541xxxx | -    | -     | -       | -    | -          | -            | -         | -
541xxxx | -    | -     | -       | -    | -          | -            | -         | -
541xxxx | -    | -     | -       | -    | -          | -            | -         | -


 Draw   | Time | Count | Message | Zoog | NormalZoog | StoppingZoog | SmartZoog | Ball
------- | ---- | ----- | ------- | ---- | ---------- | ------------ | --------- | ----
541xxxx | -    | -     | -       | -    | -          | -            | -         | -
541xxxx | -    | -     | -       | -    | -          | -            | -         | -
541xxxx | -    | -     | -       | -    | -          | -            | -         | -
