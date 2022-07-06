echo "test"
az login
variable="$(az role definition list --name humalect | jq -r '.[0].name')"
echo $variable
echo "finish"
