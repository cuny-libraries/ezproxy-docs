# ezprozy-static-pages

Generate ezproxy static pages for CUNY!


## Install zola!

Download and install from the github release:

https://github.com/getzola/zola/releases/tag/v0.18.0


## Build a single site

```
zola -c configs/bcc.toml build  --output-dir public/bcc --force
```

## Serve a single site for local development

```
zola -c configs/bcc.toml serve  --output-dir public/bcc --force
```

## Build all sites

```
sh build.sh
```
