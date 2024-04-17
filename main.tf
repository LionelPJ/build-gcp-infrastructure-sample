resource "google_compute_instance" "tf_instance_1" {
  name         = "tf-instance-1"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20240415"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
    allow_stopping_for_update = true
}

resource "google_compute_instance" "tf_instance_2" {
  name         = "tf-instance-2"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20240415"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
    allow_stopping_for_update = true
}

