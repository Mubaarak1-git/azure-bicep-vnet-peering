# Project Overview
This project demonstrates how to automate Azure networking deployment using Bicep by creating:

Two Azure Virtual Networks
Separate subnets
Virtual Network Peering
Secure communication between VNets
Azure-native Infrastructure as Code (IaC)

The solution follows enterprise networking practices commonly used for workload isolation and cross-network communication.

## Architecture
VNet-Production
10.0.0.0/16
│
│ Peering
│
VNet-Development
10.1.0.0/16

## Technologies Used
Azure Virtual Network
Azure VNet Peering
Azure Resource Group
Bicep
Azure CLI

## Repository Structure

```text

azure-bicep-vnet-peering/
|__ bicep/   
    |__ main.bicep
    |__ vent1.bicep
    |__ vent2.bicep
    |__ peerings.bicep
    |__ parameters.json
```
## Bicep Templates

| File | Purpose |
|--------|---------|
|[main.bicep](./bicep/main.bicep) 📄| Main deployment template|
|[vnet1.bicep](./bicep/vnet1.bicep)📄| Deploys the Production VNet|
|[vent2.bicep](./bicep/vnet2.bicep)📄| Deploys the Development VNet|
|[peerings.bicep](./bicep/peerings.bicep)📄| Configures biderctional VNet peerings|
|[parameters.json](./bicep/parameters.json)📄| Stores deployment parameters|



