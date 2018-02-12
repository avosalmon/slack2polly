# slack2polly
Get messages from Slack channel and speak it via Amazon Polly.

It works on Mac only.

Inspired by [kasei-san/call_of_slack](https://github.com/kasei-san/call_of_slack)

## Setup

```
$ bundle install
$ cp .env.example .env
```

- [Create a Slack bot](https://slack.com/services/new/bot) and get API token
- [Configure :credentials and a :region](http://docs.aws.amazon.com/sdkforruby/api/) for aws-sdk
- Set environment variables in `.env`

## How to use
- Invite a Slack bot to a channel

```
bundle exec ruby ./main.rb
```

- When you post a message to the channel, your Mac will speach it!
