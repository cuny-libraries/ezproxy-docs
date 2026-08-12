#!/usr/bin/env python3
import shutil
import tomllib
from pathlib import Path
from jinja2 import Environment, FileSystemLoader

ROOT = Path(__file__).parent
OUTPUT_DIR = ROOT / "output"

env = Environment(loader=FileSystemLoader([str(ROOT / "templates"), str(ROOT)]))

shutil.rmtree(OUTPUT_DIR, ignore_errors=True)

for config_file in sorted((ROOT / "configs").glob("*.toml")):
    site = config_file.stem

    site_dir = OUTPUT_DIR / site
    public_dir = site_dir / "public"
    public_dir.mkdir(parents=True)

    with open(config_file, "rb") as f:
        config = tomllib.load(f)

    for page in sorted((ROOT / "pages").iterdir()):
        if page.is_file():
            template = env.get_template(f"pages/{page.name}")
            (site_dir / page.name).write_text(template.render(**config))

    shutil.copy(ROOT / "logos" / f"{site}.png", public_dir / "logo.png")
    shutil.copy(ROOT / "favicons" / f"{site}.ico", public_dir / "favicon.ico")
    for f in (ROOT / "static").iterdir():
        if f.is_file():
            shutil.copy(f, public_dir / f.name)

    print(f"Built {site}")
