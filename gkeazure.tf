resource "google_container_cluster" "workload_cluster" {
  name               = "cluster"
  logging_service    = "none"
  location           = "us-central1"
  initial_node_count = 1

  enable_legacy_abac       = true
  monitoring_service       = "none"
  remove_default_node_pool = true
  network                  = "network"
  subnetwork               = "public-subnetwork"
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "0.0.0.0/0"
    }
  }
}
