variable "name" {
  description = "The name of the GKE cluster"
}

variable "region" {
  description = "The region where the GKE cluster will be created."
}

variable "project" {
  description = "The project where the GKE cluster will be created. Leave unspecified to use the project from the provider."
  default     = ""
}

variable "network_name" {
  description = "The name of an existing google_compute_network resource to which the cluster will be connected."
}

variable "nodes_subnetwork_name" {
  description = "The name of an existing google_compute_subnetwork resource where cluster compute instances are launched."
}

variable "kubernetes_version" {
  description = "The minimum version of master nodes. This can be changed to upgrade the cluster - remember to upgrade the Kubernetes version for node pools (managed separately)."
}

variable "pods_secondary_ip_range_name" {
  description = "The name of an existing network secondary IP range to be used for pods."
}

variable "services_secondary_ip_range_name" {
  description = "The name of an existing network secondary IP range to be used for services."
}

variable "master_authorized_network_cidrs" {
  type        = "list"
  description = "A list of up to 20 maps containing `master_authorized_network_cidrs` and `display_name` keys, representing source network CIDRs that are allowed to connect master nodes over HTTPS."

  default = [
    {
      cidr_block   = "0.0.0.0/0"
      display_name = "everywhere"
    },
  ]
}

variable "maintenance_policy_start_time" {
  description = "The time (in GMT) when the cluster maintenance window will start."
  default     = "06:00"
}
