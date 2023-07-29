## stone for OpenWRT

これはパケットリピータ stone (stone-ssl) を OpenWRT にポートするプロジェクトです．

### ビルド方法

- [ここ](https://openwrt.org/docs/guide-developer/start)を参考に，ターゲットデバイス用のビルド環境を構築します
- 上記ビルド環境に合わせ，build.sh を修正します．デフォルトでは，Buffalo WZR-HP-AG300H と ELECOM WRC-1167GST2 の設定が定義されています．
- ./build.sh を実行すると，stone-ssl がビルドされます．

### stone のオリジナルドキュメント

- [ja](./README.txt)
- [en](./README.en.txt)
