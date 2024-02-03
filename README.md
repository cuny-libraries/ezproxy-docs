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

## Navigate

### Folders

* **configs**: contains one `.toml` configuration file for each campus.
* **templates**: contains the templates that are extended by the pages.
* **pages**: contains the actual pages that are to be served up by EZproxy.
* **static**: contains common files that will live in the `docs\public` folder on EZproxy.
* **favicons**: contains one `.ico` favorite icon for each campus.
* **logos**: contains one `.png` logo file for each campus.

### Files

* **README.md**: that's this file!
* **build.sh**: shell script you must run in the command line to build the `.htm` (and all other) files you will need for EZproxy.

## Edit

Make changes to the files in the `templates` folder when you need to change the overarching appearance of the HTML pages.

Make changes to the files in the `pages` folder when you need to change the individual HTML pages.

Make changes to the files in the `config` folder when you need to update campus-specific information (e.g., URL for A-Z list).

Add/remove/update logos in the `logos` folder.

Add/remove/update favicons in the `favicons` folder.

Modify `build.sh` when you need to add/remove campus sites to the project.

## Build

After you have edited the files you needed to edit, you must build the pages that you will upload to the `docs` directory on the EZproxy server.

Run the following command in your terminal:

```
bash build.sh
```

This will create a folder for each site with all the necessary files in the `public` folder. It will also create a `.zip` file of each site's contents in the same `public` folder, allowing you to move the files around more easily.

## Upload

Upload the contents of the output site folder to EZproxy's `docs` folder.

## Credit

This would not be possible without [@philipcristiano](https://github.com/philipcristiano). Thank you!