# はじめに
偶然GitHubで見つけた情報工学科の先輩が作っていた卒論フォーマットを電子工学科向けに作り直しました．

図表を大量に挿入するとコンパイル時間が長くなってつらいので，適当に章ごとにコンパイルしつつ編集ができるようにファイル分割がしてあります．
プリアンブルを書きたくなったらpreamble.texに追記すれば，すべての章に適用されます．

# 使い方
## 表紙の編集
cover.texの後ろの方にこんなところがあります．
ここの変数を適当に書き換えてあげれば表紙がいい感じになります．
```
\title{HOGEに関するFUGAの研究} %タイトル
\thesis{令和00年度　卒業研究論文} %年度
\date{20XX.00.00} %日付
\id{00000} %学籍番号
\author{author} %氏名
\university{東京工業高等専門学校} %学校名
\department{電子工学科} %学科名
\supervisor{supervisor} %教員名
```
## 章の追加
章を追加するときは，ますsample_section.texを適当な名前でコピーします
```
$ cp sample_section.tex another_section.tex
```
そのあと，master.texの章を追加したい位置に
```
\input{another_section.tex}
```
と書きましょう，

## CI
適当に執筆した後masterにpushするとそれをトリガにコンパイルが走ります.
releaseに適宜追加されるので"あのバージョンの卒論が欲しい"が実現できます．

# 最後に
卒論執筆は計画的に(?)
