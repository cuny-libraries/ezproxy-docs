set -ex

SITES=(
  "bx"
  "bm"
)

rm -rf public

for SITE in ${SITES[@]}; do
  mkdir -p public/${SITE}/{pages,public}

  for PAGE in pages/*; do
    ./bin/tera --include-path=templates --template="${PAGE}" "configs/${SITE}.toml" --out "public/${SITE}/${PAGE}"
  done

  mv public/${SITE}/pages/* public/${SITE}/
  rm -rf public/${SITE}/pages
  cp -R logos/${SITE}.png public/${SITE}/public/logo.png
  cp -R favicons/${SITE}.ico public/${SITE}/public/favicon.ico
  cp -R static/* public/${SITE}/public
  zip -r public/${SITE}.zip public/${SITE}
done
