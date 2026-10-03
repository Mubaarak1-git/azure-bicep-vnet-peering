param location string = resourceGroup().location

module vnet1 './vnet1.bicep' = {
  name: 'deployVnet1'
  params: {
    vnetName: 'vnet-prod'
    addressPrefix: '10.0.0.0/16'
    location: location
  }
}

module vnet2 './vnet2.bicep' = {
  name: 'deployVnet2'
  params: {
    vnetName: 'vnet-dev'
    addressPrefix: '10.1.0.0/16'
    location: location
  }
}

module peerings './peerings.bicep' = {
  name: 'deployPeering'

  params: {
    vnet1Name: 'vnet-prod'
    vnet2Name: 'vnet-dev'
  }

  dependsOn: [
    vnet1
    vnet2
  ]
}
