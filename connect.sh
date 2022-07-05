echo "test"
az vm list
variable="$(az role definition list --name humalect | jq -r '.[0].name')"
echo $variable
