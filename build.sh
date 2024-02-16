set -ex

SITES=(
  "al"
  "bc"
  "bx"
  "bm"
  "cl"
  "gj"
  "ho"
  "kb"
  "le"
  "lg"
  "me"
  "nc"
  "ny"
  "qb"
  "qc"
  "si"
  "yc"
)

rm -rf output

for SITE in ${SITES[@]}; do
  mkdir -p output/${SITE}/{pages,public}

  for PAGE in pages/*; do
    ./bin/tera --include-path=templates --template="${PAGE}" "configs/${SITE}.toml" --out "output/${SITE}/${PAGE}"
  done

  mv output/${SITE}/pages/* output/${SITE}/
  rm -rf output/${SITE}/pages
  cp -R logos/${SITE}.png output/${SITE}/public/logo.png
  cp -R favicons/${SITE}.ico output/${SITE}/public/favicon.ico
  cp -R static/* output/${SITE}/public
done
