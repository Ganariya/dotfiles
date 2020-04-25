
<div align="center">
    <img src="images/ganariya.png" width="200px">
</div>
# はじめに

このDotfilesはganariyaの設定ファイルです。

- https://hacker-tools.github.io/dotfiles
- http://vdeep.net/github-dotfiles

これらの記事を参考に作成しました。

ganariyaが書いた[Dotfilesの解説記事](https://qiita.com/ganariya/items/d9adffc6535dfca6784b)です。

まだ新環境に出会ってないため、動作は未確認です＞＜

ご了承ください。


# How to Use

### cloneと実行権限


```bash
cd ~
git clone https://github.com/Ganariya/dotfiles.git
cd dotfiles
chmod +x install.sh
chmod +x install_brew.sh
chmod +x install_other.sh
```

### 設定ファイルのインストール

```bash
./install.sh
```

### HomeBrew関連のインストール

```bash
./install_brew.sh
```

### その他のインストール

```bash
./install_other.sh
```