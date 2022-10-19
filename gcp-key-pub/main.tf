provider "google" {

  credentials = file("my-project-demo-361612-487165fc186a.json")
  project     = "my-project-demo-361612"

  region = "us-central1 "
}


/*
metadata = {
    ssh-keys = "user:${file("C:/gcp-key-pub/user.txt")}"
  }

*/


resource "google_compute_instance" "default" {
  name         = "demo"
  machine_type = "e2-micro"
 # subnetwork      = data.google_compute_subnetwork.subnet01.id
  #key_name = var.my_key

  #enable_ula_external_ipv4 = true
  zone = "us-central1-c"

  tags = ["vpc-network"]

  boot_disk {
    initialize_params {
      image = "centos-7-v20220822"



    }
  }

network_interface { 
    network = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnet01.name
    
    access_config {
    }
  }



}



 












