# alexa-skill-random-words

日本語の単語をランダムにピックアップして話します。
新しい発想を得たいときや、テーマ決め、語彙力チェック、アイディア出しなどにおすすめです。

https://www.amazon.co.jp/dp/B07HHVPB2R/

## Talk Examples

- 「ランダム単語を開いて」
- 「ランダム単語で単語を10個教えて」
- 「ランダム単語で単語を1つ言って」

## Deployment

### Local

```sh
git clone git@github.com:wktk/alexa-skill-random-words.git
cd alexa-skill-random-words
bundle install
bundle exec rake assets:precompile # Extract Japanese word dictionary
bundle exec rackup
```

### Heroku

```sh
git clone git@github.com:wktk/alexa-skill-random-words.git
cd alexa-skill-random-words
heroku create
heroku config:add BUILDPACK_URL="https://github.com/wktk/heroku-buildpack-ruby-with-sqlite3"
git push heroku master
```

## Thanks

単語辞書として、 [日本語 WordNet](http://compling.hss.ntu.edu.sg/wnja/) を利用しています。
Japanese Wordnet (v1.1) © 2009-2011 NICT, 2012-2015 Francis Bond and 2016-2017 Francis Bond, Takayuki Kuribayashi

## License

GPLv3  
Copyright (C) wktk 2018
