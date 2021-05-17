terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = "1.0.2"
    }
  }
}

provider "boundary" {
  addr             = var.url
  recovery_kms_hcl = <<EOT
kms "awskms" {
	purpose    = "recovery"
  region  = "us-east-1"
	key_id     = "global_root"
  kms_key_id = "${var.kms_recovery_key_id}"
}
EOT
}
