RG=appgw
 
az group create -l eastus -n ${RG}

echo "Creating Azure Virtual Network"
az network vnet create -g ${RG} -n ${RG}-vNET1 --address-prefix 10.1.0.0/16 \
--subnet-name ${RG}-Subnet-1 --subnet-prefix 10.1.1.0/24 -l eastus

az network vnet subnet create -g ${RG} --vnet-name ${RG}-vNET1 -n ${RG}-Subnet-2 \
--address-prefixes 10.1.2.0/24

az network vnet create -g ${RG} -n ${RG}-WEST2-vNET1 --address-prefix 10.2.0.0/16 \
--subnet-name ${RG}-WEST2-Subnet-1 --subnet-prefix 10.2.1.0/24 -l westus2

az network vnet subnet create -g ${RG} --vnet-name ${RG}-WEST2-vNET1 -n ${RG}-WEST2-Subnet-2 \
--address-prefixes 10.2.2.0/24

az network vnet create -g ${RG} -n ${RG}-CEINDIA-vNET1 --address-prefix 10.3.0.0/16 \
--subnet-name ${RG}-CEINDIA-Subnet-1 --subnet-prefix 10.3.1.0/24 -l centralindia

az network vnet subnet create -g ${RG} --vnet-name ${RG}-CEINDIA-vNET1 -n ${RG}-CEINDIA-Subnet-2 \
--address-prefixes 10.3.2.0/24

echo "Managed Identity Creation"
az identity create -n appgw-msi -g ${RG} -l eastus

#Need NSG IF WE ARE USING STANDARD LOAD BALANCER
echo "Creating Azure NSG & Rules"
az network nsg create -g ${RG} -n ${RG}_NSG1
az network nsg rule create -g ${RG} --nsg-name ${RG}_NSG1 -n ${RG}_NSG1_RULE1 --priority 100 \
--source-address-prefixes '*' --source-port-ranges '*'     --destination-address-prefixes '*' \
--destination-port-ranges '*' --access Allow     --protocol Tcp --description "Allowing All Traffic For Now"

az network nsg create -g ${RG} -n ${RG}_WEST2_NSG1 --location westus2
az network nsg rule create -g ${RG} --nsg-name ${RG}_WEST2_NSG1 -n ${RG}_NSG1_RULE1 --priority 100 \
--source-address-prefixes '*' --source-port-ranges '*'     --destination-address-prefixes '*' \
--destination-port-ranges '*' --access Allow     --protocol Tcp --description "Allowing All Traffic For Now"

az network nsg create -g ${RG} -n ${RG}_CEINDIA_NSG1 --location centralindia
az network nsg rule create -g ${RG} --nsg-name ${RG}_CEINDIA_NSG1 -n ${RG}_NSG1_RULE1 --priority 100 \
--source-address-prefixes '*' --source-port-ranges '*'     --destination-address-prefixes '*' \
--destination-port-ranges '*' --access Allow     --protocol Tcp --description "Allowing All Traffic For Now"
 