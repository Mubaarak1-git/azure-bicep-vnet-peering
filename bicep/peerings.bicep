param vnet1Name string
param vnet2Name string

resource vnet1 'Microsoft.Network/virtualNetworks@2024-01-01' existing = {
  name: vnet1Name
}

resource vnet2 'Microsoft.Network/virtualNetworks@2024-01-01' existing = {
  name: vnet2Name
}

resource peering1 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2024-01-01' = {
  parent: vnet1
  name: '${vnet1Name}-to-${vnet2Name}'

  properties: {
    allowVirtualNetworkAccess: true
    remoteVirtualNetwork: {
      id: vnet2.id
    }
  }
}

resource peering2 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2024-01-01' = {
  parent: vnet2
  name: '${vnet2Name}-to-${vnet1Name}'

  properties: {
    allowVirtualNetworkAccess: true
    remoteVirtualNetwork: {
      id: vnet1.id
    }
  }
}
