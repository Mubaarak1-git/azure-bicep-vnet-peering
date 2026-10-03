param vnetName string
param addressPrefix string
param location string = resourceGroup().location

resource vnet 'Microsoft.Network/virtualNetworks@2024-01-01' = {
  name: vnetName
  location: location

  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }

    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefix: '10.1.1.0/24'
        }
      }
    ]
  }
}

output vnetId string = vnet.id
