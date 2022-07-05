$variable = Get-AzRoleDefinition -name "humalect" | grep Id |  %{ $_.Split(' ')[-1]; }
$test = az ad sp create --id 5b6d1e77-3e8c-4197-a201-c01b345627f2  | jq -r '.id'
az role assignment create -g test_group --assignee-object-id $test --role $variable
