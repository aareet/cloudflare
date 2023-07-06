resource "cloudflare_record" "terraform_managed_resource_e9726eefeca35f61d4fca86216ea30f1" {
  name    = "sig1._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "sig1.dkim.drshankar.ca.at.icloudmailadmin.com"
  zone_id = data.cloudflare_zone.drshankar.id
}

resource "cloudflare_record" "terraform_managed_resource_bcecc4bb6d4cd24253090d42144a3582" {
  name     = "drshankar.ca"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx01.mail.icloud.com"
  zone_id  = data.cloudflare_zone.drshankar.id
}

resource "cloudflare_record" "terraform_managed_resource_f0c64aeddf8a9fd0ef821558eb2464ce" {
  name     = "drshankar.ca"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx02.mail.icloud.com"
  zone_id  = data.cloudflare_zone.drshankar.id
}

resource "cloudflare_record" "terraform_managed_resource_0413bd47491f52d0ff6333c1cd1e7fd6" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:3788b3fc96424886924c6aad1efec3b1@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.drshankar.id
}

resource "cloudflare_record" "terraform_managed_resource_63f40c4bcc751b87c1147b69e73cffb6" {
  name    = "drshankar.ca"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:icloud.com ~all"
  zone_id = data.cloudflare_zone.drshankar.id
}

resource "cloudflare_record" "terraform_managed_resource_c544c67ca02ad98c86869217276ffe0f" {
  name    = "drshankar.ca"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "apple-domain=epaMKzxFUVlo8vtL"
  zone_id = data.cloudflare_zone.drshankar.id
}

