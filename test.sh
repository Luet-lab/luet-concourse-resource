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