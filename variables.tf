#####################################################################
##
##      Created 9/8/20 by IBMDemo. for PowerVS-IBMi
##
#####################################################################

variable "ibmcloud_api_key" {
    description = "Denotes the IBM Cloud API key to use"
    default     = "nlRgZOKJZz2IskYnJsuRJ0GWFAeQ1NS9NIInf0rgTWSQ"
    
}

variable "ibmcloud_region" {
    description = "Denotes which IBM Cloud region to connect to"
    default     = "us-east"
}

variable "ibmcloud_zone" {
    description = "Denotes the zone within the region to connect to (only needed for multi-zone regions--e.g., eu-de-1)"
    default     = "us-east"
}

variable "networkname" {
    description = "Name of the Network"
    default     = "CMN"
}


variable "vm_name" {
    description = "Name of the VM"
    default     = "demo-VMi"
}

variable "power_instance_id" {
    description = "Power Virtual Server instance ID associated with your IBM Cloud account (note that this is NOT the API key)"
    default  =  "30295a9a-9ffa-4b5b-8b7d-efa06f3d38a7"
}

variable "memory" {
    description = "Amount of memory (GB) to be allocated to the VM"
    default     = "12"
}

variable "processors" {
    description = "Number of virtual processors to allocate to the VM"
    default     = "0.25"
}

variable "proc_type" {
    description = "Processor type for the LPAR - shared/dedicated"
    default     = "shared"
}

variable "ssh_key_name" {
    description = "SSH key name in IBM Cloud to be used for SSH logins"
    default     = "ibmikey"
 }   

#variable "shareable" {
#    description = "Should the data volume be shared or not - true/false"
#    default     = "true"
#}

#variable "networks" {
#    description = "List of networks that should be attached to the VM"
#    default     = ["public-192_168_130_56-29-VLAN_2000"]
#}

variable "system_type" {
    description = "Type of system on which the VM should be created - s922/e880"
    default     = "s922"
}

#variable "migratable" {
#    description = "Can the VM be migrated - true/false"
#    default     = "true"
#}

variable "image_name" {
    description = "Name of the image from which the VM should be deployed"
    default     = "ibmi73vm"
}

variable "replication_policy" {
    description = "Replication policy of the VM"
    default     = "none"
}

#variable "replication_scheme" {
#    description = "Replication scheme for the VM"
#    default     = "suffix"
#}

variable "replicants" {
    description = "Number of VM instances to deploy"
    default     = "1"
}
