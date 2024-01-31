# ezprozy-static-pages

Generate ezproxy static pages for CUNY!


## Install zola and Tailwind!

Download and install from the github release:

https://github.com/getzola/zola/releases/tag/v0.18.0

[Install tailwindcss](https://tailwindcss.com/blog/standalone-cli)

## Build a single site

```
zola -c configs/bcc.toml build  --output-dir public/bcc --force
```

## Serve a single site for local development

```
zola -c configs/bcc.toml serve --force
```

Setting `--output-dir` doesn't [work with](https://github.com/getzola/zola/issues/2423) `serve`

## Build all sites

```
sh build.sh
```
