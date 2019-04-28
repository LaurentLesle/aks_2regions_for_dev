variable "aks_service_principal" {
    description = "Map of name and end_date of the azure AD application"
    type = "map"
}

variable "location_map" {
    description = "Default location to create the resources"
    type = "map"
    default = {
        region1     = "southeastasia"
        region2   = "eastasia"
    }
}

variable "subnets" {
    type = "map"
}

variable "vnet" {
    type = "map"
}

# vnet {
#     region1 {
#         name                    = "vnet-aks"
#         address_space           = "10.30.0.0/16"          # "The IP address CIDR block to be assigned to the entride Azure Virtual Network. If connecting to another peer or to you On-Premises netwokr this CIDR block MUST NOT overlap with existing BGP learned routes"
#         aks-cluster1            = "10.30.0.0/25"          # "The IP address CIDR block to be assigned to the subnet that AKS nodes and Pods will ge their IP addresses from. This is a subset CIDR of the vnetIPCIDR"
#         appgw-aks-cluster1      = "10.30.254.0/24"
#         bastion1                = "10.30.253.0/24"
#     }
# }

variable "aks_map" {
    type = "map"
}

# aks_map {
#     region1 {
#         aks_name                    = "aks-cluster1-sg"
#         aks_version                 = "1.12.7"
#         vm_user_name                = "aks-king"
#         aks_agent_count             = "1"
#         aks_agent_vm_size           = "Standard_DS4_v2"
#         aks_agent_os_disk_size      = "32"
#         aks_dns_service_ip          = "10.30.0.132"       # "The IP address that will be assigned to the CoreDNS or KubeDNS service inside of Kubernetes for Service Discovery. Must start at the .10 or higher of the svc-cidr range"
#         aks_docker_bridge_cidr      = "172.17.0.1/16"     # description = "The IP address CIDR block to be assigned to the Docker container bridge on each node. If connecting to another peer or to you On-Premises network this CIDR block SHOULD NOT overlap with existing BGP learned routes"
#         aks_service_cidr            = "10.30.0.128/25"    # "The IP address CIDR block to be assigned to the service created inside the Kubernetes cluster. If connecting to another peer or to you On-Premises network this CIDR block MUST NOT overlap with existing BGP learned routes"
#         aks_pod_cidr                = "10.133.0.0/16"     # "Only use if kubenet is assigned as the network plugin. It will be divided into a /24 for each node and will be the space assigned for POD IPs on each node. A Rout Table will be created by Azure, but it must be assigned to the AKS subnet upon completion of deployment to complete install"
#         aks_netPlugin               = "kubenet"           # "Can either be azure or kubenet. azure will use Azure subnet IPs for Pod IPs. Kubenet you need to use the pod-cidr variable below"
#     }
# }


variable "resource_groups" {
    type = "map"
}

variable "waf_configuration_map" {
    description = "Map of the waf configuration"
    type        = "map"
}


variable "dns_zone" {
    type = "map"
}

variable "analytics_workspace_name" {
  
}

variable "prefix" {
    description = "Prefix generated by the remote state (./deploy.sh)"
}

