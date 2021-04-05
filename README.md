# agqr-stream-check

超 A&G の配信 URL が生きているかチェック

## 環境

- ruby

## 使い方

配信 URL にリクエスト飛ばして 200 か否かチェックするだけ  
Crontab などで一日一回程度実行する

```
$ ruby check.sh
```

## 予定

Slack などで通知飛ばす
