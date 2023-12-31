resource "cloudflare_record" "terraform_managed_resource_a4919a9dd980d50b6a42ef26bf1dec95" {
  name    = "sig1._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "sig1.dkim.shermon.com.at.icloudmailadmin.com"
  zone_id = data.cloudflare_zone.shermon.id
}

resource "cloudflare_record" "terraform_managed_resource_11a85ef0af862351fda02668815a2c3b" {
  name     = "shermon.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx02.mail.icloud.com"
  zone_id  = data.cloudflare_zone.shermon.id
}

resource "cloudflare_record" "terraform_managed_resource_3e1d5a683f08933f586bbfe1661c19be" {
  name     = "shermon.com"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx01.mail.icloud.com"
  zone_id  = data.cloudflare_zone.shermon.id
}

resource "cloudflare_record" "terraform_managed_resource_d9e37eb6ad67400136839c5f87398885" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:22786a0eb2e647d2bf829ad06387fdfc@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.shermon.id
}

resource "cloudflare_record" "terraform_managed_resource_2c70643f68191c52a13c27ff02fd17c0" {
  name    = "_github-pages-challenge-aareet"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "4f181edaedd2e46187f15b0c1a0d46"
  zone_id = data.cloudflare_zone.shermon.id
}

resource "cloudflare_record" "terraform_managed_resource_6043c25e1ea5022bef9db1711fc9382e" {
  name    = "shermon.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "google-site-verification=cCKAAk84dePi9237KxMFdHjtKYF-6VjNI67aEbhKZGU"
  zone_id = data.cloudflare_zone.shermon.id
}

resource "cloudflare_record" "terraform_managed_resource_8a9bb9d1b31f626538ec82005f8447ca" {
  name    = "shermon.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:icloud.com ~all"
  zone_id = data.cloudflare_zone.shermon.id
}

resource "cloudflare_record" "terraform_managed_resource_3ed7ce0e25287354c731af5d4bccd0c4" {
  name    = "shermon.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "apple-domain=71IBQ5v6bf5J6fCV"
  zone_id = data.cloudflare_zone.shermon.id
}

# Resources below required for functioning page rules

resource "cloudflare_record" "dummy_shermon_ip_for_redirect" {
  comment = "Set to dummy IP to ensure canonical redirect via page rule"
  name    = "shermon.com"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.shermon.id
}

resource "cloudflare_page_rule" "redirect_shermon_to_aareet" {
  priority = 1
  status   = "active"
  target   = "shermon.com/*"
  zone_id  = data.cloudflare_zone.shermon.id
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.aareet.com/$1"
    }
  }
}
