This repository is a fork of [catatsuy/private-isu](https://github.com/catatsuy/private-isu).

## 総括・反省
初めてisuconの問題を解いたため、戸惑いも多かったですが、大変勉強になりました。  
nginxのログの設定など、初めて行うことも多かったため、設定が上手く行かず多くの時間を消費してしまいました。焦ると見落としが多くなるので、改善していきたいです。  
環境構築を初めて成功した際に、scoreが0だったため失敗したと早とちりし、消してしまったことはとても反省しています。  
やるべきことの優先順位を上手く付けられず、思ったようにscoreを伸ばすことができなかったので、もう一度解きなおしたいと考えています。

## 詰まったこと・失敗したこと

- 環境構築が上手くいっていたにもかかわらず、早とちりをして何度も環境構築を繰り返していた
- Ubuntu 20.04でdocker-compose upを行うと`Unsupported config option`とエラーが出る
  - Ubuntu 22.04では動いたため、原因不明
- ./sqlディレクトリにインデックスを張るためのsqlファイルを入れていた結果アプリサーバーが上手く動かなくなった
  - docker-entrypoint-initdbの動作を理解していなかったことが原因(ファイルを一時的に移動させることで対処)
- MySQLのログ出力をonにしたままdocker-compose upを何度も行った結果、ディスクがいっぱいになった
  - 環境の再構築を行ったがアプリサーバーが上手く動かななかったため何度かdocker-compose upを行ってしまい再発
  - ncduコマンドでログファイルの肥大化が発覚した

## 実行環境
VM: Virtual Box
OS: Ubuntu 22.04 LTS
RAM: 4GB

## タイムテーブル
大まかですが、作業の流れです。
| 日時 | やったこと |
|-----|-----------------------------|
|2/11(土) 10:00 〜 12:00 | Virtual Boxで起動に成功したが、失敗したと勘違いしていた |
|2/11(土) 13:00 〜 16:00 | multipassを導入し、cloud-initを実行したが、上手く環境が構築されなかった |
|2/11(土) 16:00 〜 17:00 | Virtual Boxで環境構築に成功 |
|2/11(土) 17:00 〜 18:00 | テーブルにindexを張る |
|2/12(土) 19:00 〜 22:00 | 開発しやすい環境の整備に苦戦 |
|2/12(日) 01:00 〜 03:00 | SQLにインデックスを張る |
|2/12(日) 03:00 〜 03:30 | nginxがログを出力するように設定しようとして苦戦 |
|2/12(日) 10:00 〜 14:00 | alpなどの解析ツールを導入して解析を行おうとして苦戦|
|2/12(日) 14:00 〜 16:00 | ベンチマークが失敗するため、環境を再構築 |
|2/12(日) 16:00 〜 18:00 | ./sql にマイグレーション用のファイルを入れていたため、上手く環境構築できなかったことが判明 |
|2/12(日) 18:00 〜 20:00 | VMの容量が足りなくなり、対処に時間を割くことに(のちに原因判明) |
|2/12(日) 20:00 〜 21:00 | 別件のMTG |
|2/12(日) 21:00 〜 22:00 | キャッシュの作り方を調べる |
|2/12(日) 22:00 〜 23:00 | getImageのリファクタリング(失敗) |
|2/12(日) 23:00 〜 23:50 | getIndexのリファクタリング | 
