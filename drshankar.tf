# NOTE: MX has been moved away from cloudflare

# DMARC analysis
resource "cloudflare_record" "terraform_managed_resource_0413bd47491f52d0ff6333c1cd1e7fd6" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:3788b3fc96424886924c6aad1efec3b1@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.drshankar.id
}

