resource "cloudflare_record" "terraform_managed_resource_acc8b8a21311ba86520ab7fe6734efff" {
  name    = "sig1._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "sig1.dkim.maadh.com.at.icloudmailadmin.com"
  zone_id = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "terraform_managed_resource_e20d99f535899c7a94ce31e52896b63b" {
  name     = "maadh.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx02.mail.icloud.com"
  zone_id  = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "terraform_managed_resource_369125f277428594bd62e0ce0c5c1122" {
  name     = "maadh.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx01.mail.icloud.com"
  zone_id  = data.cloudflare_zone.maadh.id
}

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

resource "cloudflare_record" "terraform_managed_resource_517e3e8c36ddf426dc561fcbf8c48ce8" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:976a7f966f204fa2b6cc265ebf35ed85@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "terraform_managed_resource_21266e9835fa29c19c7ef3dfd1de321d" {
  name    = "_github-pages-challenge-aareet"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "c336ec7d1a5e65335d861581d9e404"
  zone_id = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "terraform_managed_resource_2a83bb9a39510446be75a4e85051f2d1" {
  name    = "maadh.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:icloud.com ~all"
  zone_id = data.cloudflare_zone.maadh.id
}

resource "cloudflare_record" "terraform_managed_resource_ca1c50b74673a9a87128be2894167278" {
  name    = "maadh.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "apple-domain=zmhIv1eleB6E9nJK"
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

