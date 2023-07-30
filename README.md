# RibbonCMS 開発用リポジトリ

RibbonCMS を開発するためのリポジトリです。`issue_builder.yml`と同じ動作をローカルで再現することができます。

## 環境構築

sideM、sideF リポジトリを clone するとともに `issue/`ディレクトリを作成します。

sideF リポジトリは開発したい物を指定します。例えば RibbonCMS/FunctionalBlogTemplate を開発したい場合は次のようになります:

```
$ git clone git@github.com:RibbonCMS/RibbonCMS_sideM.git ./side_m
$ git clone git@github.com:RibbonCMS/FunctionalBlogTemplate.git ./front
$ mkdir issue/
```

## 開発

Makefile に書かれているコマンドを利用してください。
