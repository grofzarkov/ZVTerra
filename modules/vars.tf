variable "environment" {
  description = "The name of the environment"
}

variable "location" {
  description = "The location of the environment"
}


variable "client_id" {
    default = "1f3ba9ff-6d0c-402c-813d-74e33e0d9cc8"
}


variable "agent_count" {
    default = 1
}

variable "ssh_public_key" {
    default = "./.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "k8stest"
}

variable cluster_name {
    default = "k8stest"
}

variable resource_group_name {
    default = "azure-k8stest"
}

variable log_analytics_workspace_name {
    default = "testLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "westeurope"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}