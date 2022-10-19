

resource "google_compute_network" "vpc_network" {
name = "terraform-network"
#auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "subnet01" {
name = "terraform-subnetwork01"
ip_cidr_range = "10.2.0.0/16"
region = "us-central1"
network = google_compute_network.vpc_network.name
}

resource "google_compute_subnetwork" "subnet02" {
name = "terraform-subnetwork02"
ip_cidr_range = "10.3.0.0/16"
region = "us-central1"
network = google_compute_network.vpc_network.name
}

