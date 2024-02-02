# ezprozy-static-pages

Generate ezproxy static pages for CUNY!


## Install tooling

### Rust

https://rustup.rs/

### Tera-CLI

cargo install --git https://github.com/chevdor/tera-cli --tag v0.3.0 --root .

## Build a single file

```
./bin/tera --include-path=templates --template=pages/404.htm configs/bcc.toml --out public/bcc/404.htm
```

## Serve a single site for local development

`open public/bcc/pages/404.htm`

## Build all sites

```
bash build.sh
```
