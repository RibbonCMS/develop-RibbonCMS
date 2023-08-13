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

## `issue_builder.yml` の処理をローカルで再現する

```
$ make closed
$ make copy_contents
$ make build
$ make export
```

## sideF の画面を localhost で確認する

1. 初回や sideM に更新がある場合、次のコマンドを実行してください

```
$ make closed
$ make copy_contents
```

2. 次のコマンドを実行します

```
$ make dev
```

## sideF を 1 から新規開発する場合

1. sideF に `front_contents/`ディレクトリを作成し、そこへサンプルデータを格納してください

2. 次のコマンドを実行してサンプルデータを sideF のそれぞれの場所へコピーします

```
$ make closed_from_sidef
$ make copy_contents
```

3. 次のコマンドを実行して sideF の画面を localhost で確認します

```
$ make dev
```
