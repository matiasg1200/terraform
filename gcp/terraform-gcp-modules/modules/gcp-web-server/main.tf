############## COMPUTE ENGINE ##############

resource "google_compute_instance" "web-server" {
  name         = var.instance_name
  machine_type = var.instance_machine_type

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  network_interface {
    network    = google_compute_network.web-server-vpc.id
    subnetwork = google_compute_subnetwork.web-server-subnet.id
    access_config {
    }
  }

  tags = ["web", "ssh"]
  labels = var.instance_labels
  metadata_startup_script = file("modules/gcp-web-server/scripts/webserver.sh")

}

############## FIREWALL RULES ##############

resource "google_compute_firewall" "allow_http" {
  name        = "http"
  network     = google_compute_network.web-server-vpc.id
  description = "Allow HTTP traffic"

  allow {
    protocol = "TCP"
    ports    = [80]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web"]
}

resource "google_compute_firewall" "allow_ssh" {
  name        = "ssh"
  network     = google_compute_network.web-server-vpc.id
  description = "Allow SSH traffic"

  allow {
    protocol = "TCP"
    ports    = [22]
  }
  
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}

############## VPC ##############

resource "google_compute_network" "web-server-vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "web-server-subnet" {
  name          = var.vpc_subnet_name
  ip_cidr_range = var.vpc_subnet_cidr
  network       = google_compute_network.web-server-vpc.id
}
