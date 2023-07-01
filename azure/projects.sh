#! /bin/bash
clear

######################### Variables Test #########################
base="tzather-test"

######################### Variables Uat #########################
# base="tzather-uat"

######################### Variables Production #########################
# base="tzather-prod"

######################### Get from environment variable #########################
# sql_server_username
# sql_server_password

######################### Variables Common #########################
resource_group="$base-rg"
location="centralus"
appservice="$base-appservice"
sql_server="$base-sql-server"
sql_server_firewall_rule="$base-sql-server-firewall-rule"

webangular="$base-webangular"
mock="$base-mock-cs"
identity="$base-identity"
identity_db="Identity"

######################### Execute Scripts #########################

# delete resource group
# az group delete --name $resource_group --yes 2>/dev/null
# exit

# # create resource group
# az group create \
#   --name $resource_group \
#   --location $location \
#   --output table

# # create appservice plan
# az appservice plan create \
#   --name $appservice \
#   --resource-group $resource_group \
#   --location $location \
#   --is-linux \
#   --sku B1

# # create angular app
# az webapp create \
#   --resource-group $resource_group \
#   --plan $appservice \
#   --name $webangular \
#   --runtime "PHP:8.2"

# # create mock api
# az webapp create \
#   --resource-group $resource_group \
#   --plan $appservice \
#   --name $mock \
#   --runtime "DOTNETCORE:7.0"

# # create identity api
# az webapp create \
#   --resource-group $resource_group \
#   --plan $appservice \
#   --name $identity \
#   --runtime "DOTNETCORE:7.0"

# # create sql server
# az sql server create \
#   --resource-group $resource_group \
#   --location $location \
#   --name $sql_server \
#   --admin-user $sql_server_username \
#   --admin-password $sql_server_password

# # create firewall rule to allow azure apps to access to the database
# az sql server firewall-rule create \
#   --resource-group $resource_group \
#   --server $sql_server \
#   --name $sql_server_firewall_rule \
#   --start-ip-address 0.0.0.0 \
#   --end-ip-address 0.0.0.0

# # create database
# az sql db create \
#   --resource-group $resource_group \
#   --server $sql_server \
#   --name $identity_db \
#   --edition Basic
