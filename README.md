# agqr-stream-check

超 A&G の配信 URL が生きているかチェック  
レスポンスが 200 以外を返した場合は Slack に通知する

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
Crontab などで一日一回程度実行する

```
$ ruby check.sh
```

## 予定

Slack などで通知飛ばす
