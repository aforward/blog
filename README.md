# Blog

## Writing

The blog articles are located in

```
../writing/blog
```

## Re-generate

To regenerate run

```bash
mix run --eval "Blog.Generator.run()"
```

## Deploy

When ready, deploy to [anunknown.dev](https://anunknown.dev) with

```bash
fly deploy
```

## More languages

If you provide additional code samples in an unsupported language then
visit [prism.js](/assets/vendor/prism.js) to get the current confirmation
which will look like the following

```
https://prismjs.com/download.html#themes=prism-okaidia&languages=markup+css+clike+javascript+bash+elixir+go&plugins=line-numbers */
```

Add the new language and update [prism.js](/assets/vendor/prism.js) and [prism.css](/priv/static/css/prism.css).