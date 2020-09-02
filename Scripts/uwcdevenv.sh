az group create --name UWCVirtualMachinesRg --location "South Africa North"

az deployment group create \
  --name UwcVirtualMachineDeployment \
  --resource-group UWCVirtualMachinesRg \
  --template-uri "https://raw.githubusercontent.com/apead/virtualdevelopmentenvironment/master/Templates/template.json" 
  