param storageName string = 'testsa0009'
param storageName1 string = 'testsa0008'
param appserviceplanname string = 'testpaln01'
// param appservicename string = 'teatwebapp001'
// param skuname string
// param accessTier string

module storageaccount1 'modules/storageaccount.bicep' = {
  name: 'storagedeployment1'
  params: {
    storageName: storageName
  }

}

module storageaccount2 'modules/storageaccount.bicep' = {
  name: 'storagedeployment2'
  params: {
    storageName: storageName1
    skuname: 'Premium_ZRS'
    accessTier: 'Cool'

  }

}

module appserviceplan 'modules/appserviceplan.bicep' = {
  name: 'appplandeploy'
  params: {
    name: appserviceplanname
  }
}

// module appservicedeploy 'modules/appservice.bicep' = {
//   name: 'deployappservice'

//   params: {
//     appServicePlanid: appserviceplan.outputs.planid
//     appservicename: appservicename
//   }
// }
