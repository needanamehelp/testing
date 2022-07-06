echo "test"
variable="$(az role definition list --name humalect | jq -r '.[0].name')"
az ad sp create --id 5b6d1e77-3e8c-4197-a201-c01b345627f2
echo $variable
echo "change"
