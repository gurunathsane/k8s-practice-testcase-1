resource "google_container_cluster" "gke-cluster" {
  name               = var.cluster_name
  network            = var.network
  location           = var.zone
  initial_node_count = var.node_count
  node_config   {
      machine_type = var.machinetype
  }
}
