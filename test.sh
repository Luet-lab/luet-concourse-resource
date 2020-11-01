#!/bin/bash

out=`bash assets/check <<EOF
{
  "source": {
    "url": "https://get.mocaccino.org/mocaccino-extra"
  },
  "version": { "ref": "MISSING" }
}
EOF
`
echo $out
if [ -z "$out" ]; then
echo "No output: $out"
exit 1

fi

mkdir tmp
out=`bash assets/in tmp <<EOF
{
  "source": {
    "url": "https://get.mocaccino.org/mocaccino-extra"
  },
  "version": { "ref": "MISSING" }
}
EOF
`

echo $out
if [ -z "$out" ]; then
echo "No output: $out"
exit 1

fi

if [ ! -e "tmp/repository.yaml" ]; then
echo "repository file not fetched"
exit 1
fi

rm -rfv tmp/repository.yaml