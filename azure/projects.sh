#! /bin/bash
clear

######################### Variables Test #########################
base="tzather-test"
# sql_server_username="USERNAME"
# sql_server_password="PASSWORD"

######################### Variables Uat #########################
# base="tzather-uat"
# sql_server_username="USERNAME"
# sql_server_password="PASSWORD"

######################### Variables Production #########################
# base="tzather-prod"
# sql_server_username="USERNAME"
# sql_server_password="PASSWORD"

######################### Variables Common #########################
resource_group="$base-rg"
location="centralus"
appservice="$base-appservice"
webangular="$base-webangular"
# api="$base-api"
# sql_server="$base-sql-server"
# sql_server_firewall_rule="$base-sql-server-firewall-rule"
# sql_server_db="Identity"

######################### Execute Scripts #########################

# delete resource group
# az group delete --name $resource_group --yes 2>/dev/null
# exit

# create resource group
az group create \
  --name $resource_group \
  --location $location \
  --output table

# create appservice plan
az appservice plan create \
  --name $appservice \
  --resource-group $resource_group \
  --location $location \
  --is-linux \
  --sku B1

# create angular web app
az webapp create \
  --resource-group $resource_group \
  --plan $appservice \
  --name $webangular \
  --runtime "PHP:8.0"

# # create webapp api
# az webapp create \
#   --resource-group $resource_group \
#   --plan $appservice \
#   --name $api \
#   --runtime "DOTNETCORE:6.0" \
#   --output table

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
#   --name $sql_server_db \
#   --edition Basic
