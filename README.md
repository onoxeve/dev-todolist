# README

- 利用する言語に関わらずWEBアプリケーションフレームワークを利用すること
- 文字コードは UTF-8 を利用（ソースコード・入出力全て）
- IE11以上、Edge、Firefox、Chrome、Safariのいずれかで動作すること
- 仕様書に記載された機能仕様を全て満たすこと
- デザインはご自身で使いやすいユーザインターフェイスを考え、実装してください
- 仕様書にはない独自機能を1つ追加してください
- README ファイルに以下の内容を記載してください
- 使用した技術要素
- 全体の設計・構成についての説明
- 開発環境のセットアップ手順

## 環境
- フレームワーク: Ruby on Rails 5, Bootstrap 4  
- データベース: MariaDB  
- GoogleChromeで動作確認済    

## 設計
sitemap,ER図
https://cacoo.com/diagrams/jaHXnLqvPPasXHLr

※その他設計は仕様書通り。

## 開発環境
- Docker for Mac

1. git clone
2. docker-compose build
3. docker-compose up
4. docker-compose run web rake db:create
5. docker-compose run web rake db:migrate

## 独自機能
- 初動を早めるため、トップ画面のみページネーション化  
- ToDo詳細画面は、一度に全ToDoを確認したいため未実装

## データベースのエクスポートデータ
- backup.sql

## 動作可能URL
https://onox-todolist.herokuapp.com/
