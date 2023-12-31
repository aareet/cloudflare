resource "cloudflare_record" "terraform_managed_resource_7c31122f2a230ed894b080fd5401d816" {
  name    = "vancouversapasa.org"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.sapasa.id
}

resource "cloudflare_record" "terraform_managed_resource_fa368a53e600e026471644e01910d0a6" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.sapasa.id
}

resource "cloudflare_record" "terraform_managed_resource_295b73c37a7ec26feb690f11d56fd3a2" {
  name    = "37306350"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "google.com"
  zone_id = data.cloudflare_zone.sapasa.id
}

resource "cloudflare_record" "terraform_managed_resource_64139e199b168af5f0c6b3cb813f25f9" {
  name     = "vancouversapasa.org"
  priority = 6
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.sapasa.id
}

resource "cloudflare_record" "terraform_managed_resource_7237603e4635351ffad86ff24ad51e15" {
  name     = "vancouversapasa.org"
  priority = 69
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.sapasa.id
}

resource "cloudflare_record" "terraform_managed_resource_c08040f5c06934b809089e94c90ddcd1" {
  name     = "vancouversapasa.org"
  priority = 58
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.sapasa.id
}

resource "cloudflare_record" "terraform_managed_resource_460d52069567ac1142ebb292d27f71b3" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:a0b6c69e09e248939b15875d803c467a@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.sapasa.id
}

resource "cloudflare_record" "terraform_managed_resource_3030d32b3f313a1ea96409b2539e74cc" {
  name    = "vancouversapasa.org"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = data.cloudflare_zone.sapasa.id
}

resource "cloudflare_page_rule" "terraform_managed_resource_1020e72f98fcbecb3c74b6188c499e89" {
  priority = 1
  status   = "active"
  target   = "http://*vancouversapasa.org/*"
  zone_id  = data.cloudflare_zone.sapasa.id
  actions {
    forwarding_url {
      status_code = 302
      url         = "https://www.facebook.com/vansapasa"
    }
  }
}
