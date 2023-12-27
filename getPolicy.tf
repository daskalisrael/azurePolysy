data "azurerm_policy_definition" "example" {
  display_name = "Allowed resource types"
}

json = jsondecode(data.azurerm_policy_definition.example.policy_rule)


key = "policy"

data.xyz.example[key]

get(data.xyz.example, key)
key = json.properties

lookup(json, "properties",null)