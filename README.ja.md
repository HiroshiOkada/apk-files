apk-files
=========

簡易版 apk-files (Docker版)

## 概要

ファイルパス名一部を指定することにより、 
Alpine Linux の apk パッケージ名を表示しましす。

## 例

```
docker run --rm -it okadahiroshi/apk-files libssh.h
libssh-dev-0.7.3-r0:/usr/include/libssh/libssh.h
```

## 使い方

`docker run --rm -it okadahiroshi/apk-files ファイルパス名(部分)`
: ファイル名を含むパッケージ名とファイルのバスを表示

`docker run --rm -it okadahiroshi/apk-files`
: コンテナに入る(シェルを実行)
: コンテナ内にはパッケージ名のファイルに含まれているファイルのフルパスが
: 書き込まれているファイルがあるので、それを grep 等で検索して使用できる


## ライセンス

MIT ライセンスです。 LICENSE.txt を参照してください。

## 作者

[岡田洋](https://hiroshi.toycode.com/)
