# MX configuration for cloudflare email routing
resource "cloudflare_record" "terraform_managed_resource_bcecc4bb6d4cd24253090d42144a3582" {
  name     = "drshankar.ca"
  priority = 23
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.drshankar.id
}

resource "cloudflare_record" "terraform_managed_resource_f0c64aeddf8a9fd0ef821558eb2464ce" {
  name     = "drshankar.ca"
  priority = 50
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.drshankar.id
}

resource "cloudflare_record" "cloudflare_email_routing_record_3" {
  name     = "drshankar.ca"
  priority = 88
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.drshankar.id
}

# DMARC analysis
resource "cloudflare_record" "terraform_managed_resource_0413bd47491f52d0ff6333c1cd1e7fd6" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:3788b3fc96424886924c6aad1efec3b1@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.drshankar.id
}

# SPF record for cloudflare email
resource "cloudflare_record" "terraform_managed_resource_63f40c4bcc751b87c1147b69e73cffb6" {
  name    = "drshankar.ca"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = data.cloudflare_zone.drshankar.id
}

