# はじめに
偶然GitHubで見つけた情報工学科の先輩が作っていた卒論フォーマットを電子工学科向けに作り直しました．

図表を大量に挿入するとコンパイル時間が長くなってつらいので，適当に章ごとにコンパイルしつつ編集ができるようにファイル分割がしてあります．
プリアンブルを書きたくなったらpreamble.texに追記すれば，すべての章に適用されます．

# 使い方
## 最初の一歩
適当にsample.texをコピーして編集しましょう．
```
$ cp sample.tex master.tex
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

# 最後に
卒論執筆は計画的に(?)
