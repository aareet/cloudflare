resource "cloudflare_record" "terraform_managed_resource_2da7d4098d99dc3042a9bdff3815468a" {
  name    = "aareet"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "35.185.44.232"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_f1725bb1c1813526ea0043fc72fc181c" {
  comment = "Dummy A record so that page rule will work."
  name    = "mahadevan.ca"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_fb0106eaf94d1cebfbe4fe8030f7e82b" {
  comment = "Dummy A record so that page rule will work."
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_9a40a5033dfba68d96b6ff82d3bf469f" {
  name    = "sig1._domainkey"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "sig1.dkim.mahadevan.ca.at.icloudmailadmin.com"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_8d85bfc8ad6fe19a3fa2b4df673c085d" {
  name     = "mahadevan.ca"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx02.mail.icloud.com"
  zone_id  = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_68d67df7a225a197cb846a480787ee48" {
  name     = "mahadevan.ca"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "mx01.mail.icloud.com"
  zone_id  = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_14bd1e70dcbdd92605190b1dfb363bf3" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:7bc9340fb9314fa89c9079149d7f1c27@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_f55609d62390cebaaf32f85e0105045c" {
  name    = "_github-pages-challenge-aareet"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "5beab282508e61b7b345b1be3e0926"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_06f11ad53a0acd5f944e9e5c4cd6d47d" {
  name    = "_gitlab-pages-verification-code.aareet"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "gitlab-pages-verification-code=5a85a4e0d198e22e52b683f3c6a7a036"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_9880522bcd78ca7058d23bcae1652167" {
  name    = "_gitlab-pages-verification-code"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "gitlab-pages-verification-code=5e8ecb338adb60345330c84131deb3f0"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_dca4112c50fd17c58e10305f878abc21" {
  comment = "Changed from v=spf1 redirect=icloud.com on Jun 18, 2023"
  name    = "mahadevan.ca"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:icloud.com ~all"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_e9de4a3e46b186920affd9fdaaea6403" {
  name    = "mahadevan.ca"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "google-site-verification=T5fiRIGaM8JQ5Yvr-wjdrcdR1yE-7iuswKgbaROwkR4"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_5a3e16dfb7bfeb5ef855873c4bbc11f1" {
  name    = "mahadevan.ca"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "keybase-site-verification=_lUl4UCEIC73EOKX96gNKREvcCgVQXRrs6CZjdB6cwE"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_record" "terraform_managed_resource_5ef7174261cec43e8310420b04d5c4b2" {
  name    = "mahadevan.ca"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "apple-domain=00hQolUp0IvMHncA"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_page_rule" "terraform_managed_resource_cdd7311acb66f5bb1e43c928423d7d6c" {
  priority = 3
  status   = "active"
  target   = "mahadevan.ca/*"
  zone_id  = data.cloudflare_zone.mahadevan.id
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.aareet.com/$1"
    }
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_bbcd234c440a67b116af7e9552fe205f" {
  priority = 1
  status   = "active"
  target   = "www.mahadevan.ca/*"
  zone_id  = data.cloudflare_zone.mahadevan.id
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.aareet.com/$1"
    }
  }
}


# WithJoy forwarding configuration
# Redirect celebrate.mahadevan.ca to https://withjoy.com/radhika-and-aareet-celebration

resource "cloudflare_record" "terraform_managed_withjoy_A_record" {
  comment = "Dummy A record so that page rule will work."
  name    = "celebrate"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.mahadevan.id
}

resource "cloudflare_page_rule" "terraform_managed_withjoy_pagerule" {
  priority = 2
  status   = "active"
  target   = "celebrate.mahadevan.ca/*"
  zone_id  = data.cloudflare_zone.mahadevan.id
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://pp.events/aarzrG6n"
    }
  }
}
