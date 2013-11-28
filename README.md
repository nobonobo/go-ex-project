go-ex-project
=============

Golang Multiple Package Project Example

ポイント
-------------
- 「GOPATH=このリポジトリルート」
- この構成にした時はこのプロジェクト自身をgo getで引っ張る形は使わない（使えない）。
- relative import は非推奨（スタンダードパッケージからは懸命にドット除去作業が行われている模様）

他人のパッケージ取り込み方
-------------------------------------
- インポートパスを改名するのはコンプライアンス的によろしくないので変わらない案を使う。
- 案１：ふつーに「go get」する
- 案２：src/インポートパスにフォークリポジトリからgit submoduleで引きこむ
