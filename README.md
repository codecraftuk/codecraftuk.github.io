# CodeCraft web site

This is a Jekyll based site. Jekyll is a static site generator which has free hosting on Github.

It uses a Ruby toolchain.

If you have Docker you can run:
```
./run_with_docker.sh
```

Or with Ruby 2.4.0 with

```
./run_with_ruby.sh

```

# Check it out
open http://localhost:4000
```

Once you push any changes they will appear on our main site.

## Tweets

While running locally there is a page with sample Tweet text available at:

`http://localhost:4000/tweets.txt`

It's controlled by `_plugins/tweets.rb`. The date, link and location are constants in the [`#generate`](https://github.com/codecraftuk/codecraftuk.github.io/blob/master/_plugins/tweets.rb#L93) method.
