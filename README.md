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
