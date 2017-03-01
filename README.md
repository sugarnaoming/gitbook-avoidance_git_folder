# Gitbookの_book内.gitフォルダ自動退避スクリプト
---
## 効果
gitbook buildした際に消される_book内の.gitフォルダを生存させます。
## 使い方
gitbook buildを行うディレクトリにalt-gitbook_build.shをコピーしてください。
alt-gitbook_build.shを実行するだけです。
> 後始末の際に`rm`コマンドを使用しているので適切な権限をalt-gitbook_build.shに付与してください。