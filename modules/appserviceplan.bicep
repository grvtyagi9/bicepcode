param name string
param location string = resourceGroup().location
param sku string = 'B1'


resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: name
  location: location
  properties: {
    reserved: true
  }
  sku: {
    name: sku
  }
}

output planid string = appServicePlan.id

