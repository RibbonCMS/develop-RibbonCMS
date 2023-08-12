# RibbonCMS 開発用リポジトリ

RibbonCMS を開発するためのリポジトリです。`issue_builder.yml`と同じ動作をローカルで再現することができます。

## 環境構築

1. sideM リポジトリを `side_m/` へ、 sideF リポジトリを `front/` ディレクトリへそれぞれ clone します

```
$ git clone git@github.com:RibbonCMS/RibbonCMS_sideM.git ./side_m
$ git clone git@github.com:<SIDE_F_REPO>.git ./front
```

2. 次のコマンドを実行して Compose ファイルを生成します

```
$ make setup
```

## 開発

Makefile に書かれているコマンドを利用してください。
