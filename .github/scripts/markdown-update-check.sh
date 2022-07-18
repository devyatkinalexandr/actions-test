STATUSCODE=$(curl -LI -o /dev/null -w '%{http_code}\n' -X 'GET' 'https://api-dev.waves.tech/api/v1/test' \
  -H 'accept: */*' \
  -H 'secret: ${{ secrets.SECRET_FOR_UPDATE }}')
if test "$STATUSCODE" -ne 200; then
  exix 1
fi