param storageName string
param location string = resourceGroup().location
param skuname string = 'Standard_LRS'
param kind string = 'StorageV2'
param accessTier string = 'Hot'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageName
  location: location
  kind: kind
  sku: {
    name: skuname
  }
  properties: {
     accessTier: accessTier
  }
}

output storageAccountId string = storageaccount.id

