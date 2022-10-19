
resource "google_compute_firewall" "rules" {
  project     = "my-project-demo-361612"
  name        = "custom-firewall"
  network     = google_compute_network.vpc_network.name
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol = "tcp"
    ports    = ["80", "22", "443"]
  }

  source_tags = ["vpc-network"]

  #target_tags = ["web"]
}
