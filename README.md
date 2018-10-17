# 使い方

## IoLanguage.debファイルの配置

http://iolanguage.com/binaries.html から、Linux (x64deb)をクリックして、`IoLanguage-2013.11.04-Linux-x64.deb`をダウンロードします。
filesディレクトリの下に`IoLanguage-2013.11.04-Linux-x64.deb`を配置します。

(異なるバージョンを配置する場合、DockerfileでIO_LANGのファイル名を適時変更してください)

## イメージファイルの作成

`git clone`したディレクトリ(Dockerfileが存在するディレクトリ)に移動して、以下を実行します。

```
$ docker build -t ubuntu_with_io . --no-cache=true
```

インストールについて詳しくは
http://iolanguage.com/binaries.html
からLinux x64debをダウンロードして、展開した中に入っているREADMEを参照してください。



## コンテナの起動(Mac)

```
$ docker run --privileged -d --name io_server -v `pwd`/work:/mnt/work/ -it ubuntu_with_io
```