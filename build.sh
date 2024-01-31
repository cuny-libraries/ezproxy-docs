set -ex

tailwindcss -c tailwind.config.js -i input.css -o static/site.css --minify
zola -c configs/bcc.toml build --output-dir public/bcc --force
zola -c configs/bmcc.toml build --output-dir public/bmcc --force
