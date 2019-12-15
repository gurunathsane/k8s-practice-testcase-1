variable "service_account_file_name" {
  default = "serviceaccount.json"
}

variable "gcp_project" {
	default = "ch-engg"
}

variable "region" {
	default = "europe-west1"
}

variable "zone" {
	default = "europe-west1-b"
}

variable "node_count" {
	default = 1
}

variable "cluster_name" {
	default = "my-cluster"
}

variable "network" {
	default = "default"
}

variable "machinetype" {
	default = "n1-standard-2"
}
