STATUSCODE=$(curl -LI -o /dev/null -w '%{http_code}\n' -X 'GET' 'https://api-dev.waves.tech/api/v1/test' \
  -H 'accept: */*' \
  -H "secret: $1")
if test "$STATUSCODE" -ne 200; then
  exit 1
fi