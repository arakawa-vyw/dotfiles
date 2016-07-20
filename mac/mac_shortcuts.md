# Mac shortcuts

About **OS X(EI Capitan) on Macbook Air**.  
Edited and Viewed by [MacDown](http://macdown.uranusjr.com)

## Decoration Keys

|Decoration|Key|
|---|---|
|⌘|command|
|⇧|shift|
|⌥|option|
|⌃|control|
|⇪|caps lock|

## Mac

- スクリーンロック

	[http://blog.310326.com/2013/05/mac_1.html](http://blog.310326.com/2013/05/mac_1.html)

		control + shift + power

- 逆スラッシュの入力

		option + ¥

- キャプチャ
	- 画面全体

			#デスクトップに画像保存
			command + shift + 3
			#クリップボードに保存
			control + command + shift + 3

	- ウィンドウ

			command + shift + 4 + space + option

	- 選択 -> デスクトップに画像保存

			#デスクトップに画像保存
			command + shift + 4
			#クリップボードに保存
			control + command + shift + 4

- スリープ抑止

	[Mac OS X 10.8以降で一時的にスリープを抑制するコマンド](http://henry.animeo.jp/blog/2013/12/07/caffeinate/)

		$caffeinate -d

## Window

- 最大化(≠フルスクリーン)

	※OS X Yoshimeから変わった  
	[http://gori.me/macosx/osxyosemite/63848](http://gori.me/macosx/osxyosemite/63848)

		optionキーを押しながらウィンドウ左上の緑色ボタンをクリック
		(optionキーを押している間アイコンが変わる)


## Finder

- ファイル/フォルダを開く

	winと異なりreturnはリネーム...

		command + o

- ファイルの移動

		command + c
		でコピーした後
		option + command + v
		でペーストでなく移動になる

- パスを指定して開く

		shift + command + g

## Terminal

- パスの選択（/込みで選択したい）

		command + shift + ダブルクリック

- history検索

		control + r

- タブの切り替え

		shift + command + ←(→)

- カレントディレクトリをFinderで開く

		open .

## Safari

- タブの切り替え

		shift + command + ←(→)

## Chrome

- タブの切り替え

		option + command + ←(→)

## Sublime Text 3

- Find

		command + f

- Replace

		option + command + f

- 矩形選択

		option + ドラッグ

## RubyMine

- Select current line *(Original setting)*

	Preferences -> Keymap -> "Select Line at Caret"

		control + l

## Excel for Mac(ver 15.14)

[Excel 2016 for Mac のキーボード ショートカット](https://support.office.com/ja-jp/article/Excel-2016-for-Mac-のキーボード-ショートカット-acf5419e-1f87-444d-962f-4e951a658ccd)


- コンテキストメニュー

		shift + F10

- セル内改行

		セルをアクティブにして
		option + command + Enter

- セルクリア

		fn + delete

- セル編集

		control + u
		もしくは
		F2

- セルもしくは行の挿入

		control + shift + =

- １画面下（上）へ移動

		fn + ↓（↑）

- シート切り替え

		option + ←（→）

- 図として貼り付け（カメラ機能）

	コピー元ファイル（シート）

		セル範囲をコピー

	コピー先ファイル（シート）

		ESC押下後、右クリック -> "形式を選択して貼り付け"

## MySQL

[MySQLコマンドラインツールで使えるコマンド小ネタ](http://b.l0g.jp/mysql/mysql-commands-on-cli/)

- 結果をless形式で表示

		pager less

	- 横スクロールオプション

			pager less -S

	- 元に戻す

			nopager

- 標準出力＆ファイル出力

		tee output.txt
		# 停止
		notee

- OSコマンド実行

		system ls | grep 'sample.txt'

## MySQL Workbench(6.3)

- Execute SQL(All or Selected)

		shift + command + enter
