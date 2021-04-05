# agqr-stream-check

超 A&G の配信 URL が生きているかチェック  
レスポンスのステータスが 200 以外の場合は Slack に通知する

## 環境

- Ruby 2.7.1 で動作確認
- dotenv

## 使い方

Ruby の Gem である dotenv を使用するので、`bundle install` を事前に行う

```
$ bundle install
```

`.env` ファイルを同じディレクトリに設置し、Slack の Webhook URL を記述する

```
URL=<SLACK_WEBHOOK_URL>
```

配信 URL にリクエスト飛ばして 200 か否かチェックするだけ  
Cron などで 1 日 1 回程度実行する

```
$ ruby check.sh
```

## 備考

今回は `.m3u8` ファイルの有無を確認しているだけですが、  
本来は HLS のストリームが受け取れるかを確認するべきなので、  
上手く監視できない場合は後者の方法で実装するかも
