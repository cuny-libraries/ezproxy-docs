# ezprozy-docs

The CUNY Office of Library Services manages more than a dozen EZproxy servers on behalf of the CUNY Libraries. To help manage all the [EZproxy web pages](https://help.oclc.org/Library_Management/EZproxy/Manage_EZproxy/Default_web_pages) (which are identical except for the campus-specific information), we are using the [tera-cli](https://github.com/chevdor/tera-cli) command line tool for the [tera](https://github.com/Keats/tera) template engine. We use the [Bootstrap](https://getbootstrap.com/) CSS framework.

## Install

### Rust

Use the [rustup](https://rustup.rs/) installer to download and install the Rust programming language.

### Tera-CLI

Run the following command in your terminal and follow the on-screen prompts:

```
cargo install --git https://github.com/chevdor/tera-cli --tag v0.3.0 --root .
```

## Build

### Build a single file

Run the following command in your terminal:

```
./bin/tera --include-path=templates --template=pages/login.htm configs/bx.toml --out public/bx/login.htm
```

#### Serve a single site for local development

Run the following command in your terminal:

```open public/bx/login.htm```

This should open the page in your default browser.

### Build all sites

Run the following command in your terminal:

```
bash build.sh
```

## Credit

This would not be possible without [@philipcristiano](https://github.com/philipcristiano). Thank you!