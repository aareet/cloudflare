# Email routing configuration

resource "cloudflare_record" "maadh_email_mx1" {
  name     = "maadh.com"
  priority = 85
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "maadh_email_mx2" {
  name     = "maadh.com"
  priority = 48
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "maadh_email_mx3" {
  name     = "maadh.com"
  priority = 35
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "maadh_email_spf" {
  name    = "maadh.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = data.cloudflare_zone.maadh.id
}

# post.maadh.com email configuration

resource "cloudflare_record" "terraform_managed_resource_e2eb7afcb92c314176a910ded381990d" {
  name     = "post"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mxb.mailgun.org"
  zone_id  = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "terraform_managed_resource_6dacfd0923e68820636ab5ea9e062176" {
  name     = "post"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mxa.mailgun.org"
  zone_id  = data.cloudflare_zone.maadh.id
}

# DMARC not really applicable to cloudflare, but set up to catch spoofing

resource "cloudflare_record" "terraform_managed_resource_517e3e8c36ddf426dc561fcbf8c48ce8" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:976a7f966f204fa2b6cc265ebf35ed85@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.maadh.id
}

# general DNS records, not related to email

resource "cloudflare_record" "terraform_managed_resource_21266e9835fa29c19c7ef3dfd1de321d" {
  name    = "_github-pages-challenge-aareet"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "c336ec7d1a5e65335d861581d9e404"
  zone_id = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "terraform_managed_resource_97a9b970d53945ec9c4244f19158f412" {
  name    = "maadh.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "google-site-verification=LSSySXT8lovgExt6IEsmPhMwncZJ-oaTel_tLMCGymQ"
  zone_id = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "terraform_managed_resource_1d86a9512fa9170b8267deab25868d8a" {
  name    = "smtp._domainkey.post"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDFjdje6EjqfL4YbiAuI+rKJGE9/iL/uugFsmGk+JDOK3q3Cyv4aWTqrNNEHcnLnvq9KxgnCrNZbAbTQzHg7z15z+Rj4McaNsrAj2oKMzTjHvB481LQ9ZzfVKHm2irIKGADS4FOUNHg/RfvyaVPu/mtBJ+0rwCfbHG2umROjpAy1wIDAQAB"
  zone_id = data.cloudflare_zone.maadh.id
}

# Resources below required for functioning page rules

resource "cloudflare_record" "dummy_maadh_ip_for_redirect" {
  comment = "Set to dummy IP to ensure canonical redirect via page rule"
  name    = "maadh.com"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.maadh.id
}

resource "cloudflare_page_rule" "redirect_maadh_to_aareet" {
  priority = 1
  status   = "active"
  target   = "maadh.com/*"
  zone_id  = data.cloudflare_zone.maadh.id
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.aareet.com/$1"
    }
  }
}
