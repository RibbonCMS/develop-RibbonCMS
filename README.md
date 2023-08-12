# RibbonCMS 開発用リポジトリ

RibbonCMS を開発するためのリポジトリです。`issue_builder.yml`と同じ動作をローカルで再現することができます。

## 環境構築

1. このリポジトリを任意の名前で clone します（任意の名前にする理由は、このリポジトリは様々なケースで何度も clone する可能性があり、その際の名前衝突を防ぐためです）

```
$ git clone git@github.com:RibbonCMS/develop-RibbonCMS.git ./<DIR_NAME>/
$ cd <DIR_NAME>/
```

2. sideM リポジトリを `side_m/` へ、 sideF リポジトリを `front/` ディレクトリへそれぞれ clone します

```
$ git clone git@github.com:RibbonCMS/RibbonCMS_sideM.git ./side_m
$ git clone git@github.com:<SIDE_F_REPO>.git ./front
```

3. 次のコマンドを実行して Compose ファイルを生成します

```
$ make setup
```

## 開発

Makefile に書かれているコマンドを利用してください。
