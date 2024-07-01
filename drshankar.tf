resource "cloudflare_record" "terraform_managed_resource_drshankar_root_redirect" {
  comment = "Dummy A record so that page rule will work."
  name    = "drshankar.ca"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.drshankar.id
}

resource "cloudflare_record" "terraform_managed_resource_drshankar_www_redirect" {
  comment = "Dummy A record so that page rule will work."
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.drshankar.id
}

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

