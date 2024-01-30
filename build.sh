set -ex


zola -c configs/bcc.toml build --output-dir public/bcc --force
zola -c configs/bmcc.toml build --output-dir public/bmcc --force
