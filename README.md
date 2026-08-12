# ezproxy-docs

The CUNY Office of Library Services manages more than a dozen EZproxy servers on behalf of the CUNY Libraries. To help manage all the [EZproxy web pages](https://help.oclc.org/Library_Management/EZproxy/Manage_EZproxy/Default_web_pages) (which are identical except for the campus-specific information), we automated the creation and standardization of the HTML files. Using templates, we can now easily make universal changes with just a couple of keystrokes.

## Development Environment

This project was built on MacOS. It uses Python, the [Jinja2](https://jinja.palletsprojects.com/) template engine, and the [Bootstrap](https://getbootstrap.com/) CSS framework.

### Edit Directly in GitHub

If you are a contributing member of the [CUNY Libraries organization](https://github.com/cuny-libraries), you can edit files directly in GitHub. When your commit is merged, view the [Actions of the "Push Main" workflow](https://github.com/cuny-libraries/ezproxy-docs/actions/workflows/push_main.yml). Click on the most recent workflow run and scroll down to "Artifacts." Download the `output.zip` file.

### Edit Remotely via Pull Request

Make a pull request and edit the files. If your commits are merged into the main branch, you'll find the output file in the [Actions of the "Push Main" workflow](https://github.com/cuny-libraries/ezproxy-docs/actions/workflows/push_main.yml). Click on the most recent workflow run and scroll down to "Artifacts." From there, download the `output.zip` file.

### Install and Edit on Local Machine

#### Python

Python 3.11 or later is required. It is pre-installed on most systems. You can check your version with:

```
python3 --version
```

#### Jinja2

Run the following command in your terminal:

```
pip install jinja2
```

### Navigate

The file and folder structure is not necessarily intuitive.

#### Folders

* **configs**: contains one `.toml` configuration file for each campus.
* **templates**: contains the templates that are extended by the pages.
* **pages**: contains the actual pages that are to be served up by EZproxy.
* **static**: contains common files that will live in the `docs\public` folder on EZproxy.
* **favicons**: contains one `.ico` favorite icon for each campus.
* **logos**: contains one `.png` logo file for each campus.

#### Files

* **README.md**: that's this file!
* **build.py**: Python script you must run in the command line to build the `.htm` (and all other) files you will need for EZproxy.

## Edit

Make changes to the files in the `templates` folder when you need to change the overarching appearance of the HTML pages.

Make changes to the files in the `pages` folder when you need to change the individual HTML pages.

Make changes to the files in the `config` folder when you need to update campus-specific information (e.g., URL for A-Z list).

Add/remove/update logos in the `logos` folder.

Add/remove/update favicons in the `favicons` folder.

To add a new campus, create a new `.toml` file in the `configs` folder (and add its logo and favicon). It will be picked up automatically on the next build.

## Build

After editing the files, you must build the pages that you will upload to the `docs` directory on the EZproxy server.

Run the following command in your terminal:

```
python build.py
```

This will create an `output` folder in the working directory, with a subfolder for each EZproxy site.

## Upload

Upload the contents of the `output` folder to EZproxy's `docs` folder.

## Credit

This would not be possible without [@philipcristiano](https://github.com/philipcristiano). Thank you!
