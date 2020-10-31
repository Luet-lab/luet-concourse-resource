parse_source_config() {
  payload=$(mktemp /tmp/resource-in.XXXXXX)
  cat > $payload <&0
  URL=$(jq -r '.source.url // "https://get.mocaccino.org/mocaccino-extra"' $payload)
  VERSION=$(jq -r '.version.ref // ""' $payload)
}
