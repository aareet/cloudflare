resource "cloudflare_record" "terraform_managed_resource_e84fcc723b4505cfd564ae6825d38585" {
  name    = "bhajans"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "radstah.gitlab.io"
  zone_id = data.cloudflare_zone.radhika.id
}

resource "cloudflare_record" "terraform_managed_resource_bcd7b0e5a1c34f3d94f6b414fd6715d4" {
  name    = "sig1._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "sig1.dkim.radhika.ca.at.icloudmailadmin.com"
  zone_id = data.cloudflare_zone.radhika.id
}

resource "cloudflare_record" "terraform_managed_resource_6c1385cf9025672c803cbfbf73c21ee6" {
  name     = "radhika.ca"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx02.mail.icloud.com"
  zone_id  = data.cloudflare_zone.radhika.id
}

resource "cloudflare_record" "terraform_managed_resource_cd51e6d2b407c3441d3a996cf4f40a9b" {
  name     = "radhika.ca"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx01.mail.icloud.com"
  zone_id  = data.cloudflare_zone.radhika.id
}

resource "cloudflare_record" "terraform_managed_resource_87c64302e1c8e3fea99dea9e5f759e03" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:c216d561ac9a4797925e0975417a43d0@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.radhika.id
}

resource "cloudflare_record" "terraform_managed_resource_e9bfd842797682498c1923a7fa106474" {
  name    = "_gitlab-pages-verification-code.bhajans"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "gitlab-pages-verification-code=30ecbc1f77c80250661f92d7144fa4bb"
  zone_id = data.cloudflare_zone.radhika.id
}

resource "cloudflare_record" "terraform_managed_resource_5a79828917264c70ce77497808682890" {
  name    = "radhika.ca"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "apple-domain=H3XXWyDa5S7XD0UL"
  zone_id = data.cloudflare_zone.radhika.id
}

resource "cloudflare_record" "terraform_managed_resource_a9ee5dd620f83474c9bbd096c1be773e" {
  name    = "radhika.ca"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:icloud.com ~all"
  zone_id = data.cloudflare_zone.radhika.id
}

