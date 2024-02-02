set -ex


SITES=(
  "bcc"
  "bmcc"
)

rm -rf public

for SITE in ${SITES[@]}; do
  mkdir -p public/${SITE}/pages

  for PAGE in pages/*; do
    ./bin/tera --include-path=templates --template="${PAGE}" "configs/${SITE}.toml" --out "public/${SITE}/${PAGE}"
  done
done
