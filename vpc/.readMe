MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/tf-gcp-connection/vpc (feature/tf-code-by-ankit-mistry)
$ terraform apply
google_compute_network.autovpc: Refreshing state... [id=projects/extended-cable-455910-g2/global/networks/autovpc]
google_compute_network.customvpc: Refreshing state... [id=projects/extended-cable-455910-g2/global/networks/customvpc]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
symbols:
  + create

Terraform will perform the following actions:

  # google_compute_subnetwork.sub-singapore will be created
  + resource "google_compute_subnetwork" "sub-singapore" {
      + creation_timestamp         = (known after apply)
      + fingerprint                = (known after apply)
      + gateway_address            = (known after apply)
      + id                         = (known after apply)
      + ip_cidr_range              = "10.1.0.0/24"
      + name                       = "sub-sg"
      + network                    = "projects/extended-cable-455910-g2/global/networks/customvpc"
      + private_ipv6_google_access = (known after apply)
      + project                    = (known after apply)
      + purpose                    = (known after apply)
      + region                     = "asia-southeast1"
      + secondary_ip_range         = (known after apply)
      + self_link                  = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_compute_subnetwork.sub-singapore: Creating...
google_compute_subnetwork.sub-singapore: Still creating... [10s elapsed]
google_compute_subnetwork.sub-singapore: Still creating... [20s elapsed]
google_compute_subnetwork.sub-singapore: Still creating... [30s elapsed]
google_compute_subnetwork.sub-singapore: Still creating... [40s elapsed]
google_compute_subnetwork.sub-singapore: Creation complete after 42s [id=projects/extended-cable-455910-g2/regions/asia-southeast1/subnetworks/sub-sg]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

auto = "projects/extended-cable-455910-g2/global/networks/autovpc"
custom = "projects/extended-cable-455910-g2/global/networks/customvpc"

MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/tf-gcp-connection/vpc (feature/tf-code-by-ankit-mistry)
