# Cloudflare email routing configuration
resource "cloudflare_record" "terraform_managed_resource_7bca0507c0fecf87c1a83d218ee8ffb8" {
  name     = "krsnaa.com"
  priority = 40
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.krsnaa.id
}

resource "cloudflare_record" "terraform_managed_resource_1ec383e2540454efc7b16f5e533f6924" {
  name     = "krsnaa.com"
  priority = 89
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.krsnaa.id
}

resource "cloudflare_record" "cloudflare_email_routing_record_3" {
  name     = "krsnaa.com"
  priority = 33
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.krsnaa.id
}

resource "cloudflare_record" "terraform_managed_resource_a0741eafafcfe1363381b378b84bb19e" {
  name    = "krsnaa.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = data.cloudflare_zone.krsnaa.id
}

# Sendgrid configuration for bots.krsnaa.com
resource "cloudflare_record" "terraform_managed_resource_baa1855b1a2c1cf8ff7627d2803375da" {
  name    = "bots"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:sendgrid.net ~all"
  zone_id = data.cloudflare_zone.krsnaa.id
}

resource "cloudflare_record" "terraform_managed_resource_44cd4f14f9e0924687203fff1cf4a2ec" {
  name    = "em4535.bots"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "u2058867.wl118.sendgrid.net"
  zone_id = data.cloudflare_zone.krsnaa.id
}

resource "cloudflare_record" "terraform_managed_resource_31d887663b3e69d26fd4a5c7ea920b86" {
  name    = "s1._domainkey.bots"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "s1.domainkey.u2058867.wl118.sendgrid.net"
  zone_id = data.cloudflare_zone.krsnaa.id
}

resource "cloudflare_record" "terraform_managed_resource_4184eb8a39cb1de5f3d48d51ef1cc3a2" {
  name    = "s2._domainkey.bots"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "s2.domainkey.u2058867.wl118.sendgrid.net"
  zone_id = data.cloudflare_zone.krsnaa.id
}

# Cloudflare dmarc for bare domain
resource "cloudflare_record" "terraform_managed_resource_969ae7172bd551e8a3c5ae9328dc2d05" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:237b9a44245e48639882a3e50c34bbe3@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.krsnaa.id
}

# Github pages verification
resource "cloudflare_record" "terraform_managed_resource_f74088c5c849e611d5aee0350decbcaa" {
  name    = "_github-pages-challenge-aareet"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "519afc90cfd3e67578041c7b47fdc5"
  zone_id = data.cloudflare_zone.krsnaa.id
}



