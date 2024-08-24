terraform {
  required_version = "1.8.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
  }
}


resource "google_compute_instance" "vm" {
  name                      = var.name
  machine_type              = var.machine_type
  zone                      = var.zone
  allow_stopping_for_update = var.allow_stopping_for_update
  can_ip_forward            = var.can_ip_forward

  scheduling {
    automatic_restart = var.automatic_restart
  }

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.vm_os
      type  = var.vm_type_disk
    }
  }

  network_interface {
    subnetwork = var.subnet
    network    = var.network

    access_config {
      nat_ip       = var.nat_ip
      network_tier = var.network_tier
    }
  }

  metadata = {
    ssh-keys = var.sskeys
  }

  metadata_startup_script = <<SCRIPT
      sudo apt update -y
      sudo apt install ssh -y
      sudo sed -i 's/#Port 22/Port 2222/g' /etc/ssh/sshd_config
      sudo service ssh restart
      
      
    SCRIPT

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = false
    ignore_changes        = [tags, metadata_startup_script]
  }
}