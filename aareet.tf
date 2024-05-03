resource "cloudflare_record" "terraform_managed_resource_6dd0314f2ba738d101610c25a23caca3" {
  comment = "Changing to dummy IP from Gitlab's 35.185.44.232 to ensure canonical redirect to www"
  name    = "aareet.com"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_80626bd38aecf69d53f69c952a9109ef" {
  name    = "d903aa1230ea6c1729e3ce7468d0ae7f"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "verify.bing.com"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_f59077b7abb01112aa584c19f5a44af2" {
  name    = "episodes"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "aareet.gitlab.io"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_9c9f815c226c1e783d7558176aa7df64" {
  name    = "u4afkn3wutst"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "gv-5fglb7kgnjbbtu.dv.googlehosted.com"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_21c979be2fc57615960e0ae1800955e1" {
  name    = "uwnano"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "aareet.gitlab.io"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_1b5fc7273a7ab67ce7c549b551e18896" {
  name    = "webscience"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "webscienceco.github.io"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_85210554aa916a6cfbd80e53dc102a2c" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "aareet.gitlab.io"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_bf715646a2d9a4ab750c78fb5e8b434d" {
  name    = "aareet.com"
  proxied = false
  ttl     = 3600
  type    = "TXT"
  value   = "google-site-verification=dVy3BFHGNR38oiwq_2XcmFEe_B_mCCQ8Fnq7WJq1SwM"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_e5298935f7e2e4d10a1b4b5ddea86fd3" {
  name    = "aareet.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "keybase-site-verification=eF5KuKZ077HDA-sZkXjupalKJLPGhr-t--qd4mOf3io"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_35f015fae206a6f7d240ddb4637d7e98" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1;  p=none; rua=mailto:90b35c7ff7a34f668fa0e353076a99fd@dmarc-reports.cloudflare.net"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_72ae494e58faf5cd2b13a0940338ab11" {
  name    = "_github-challenge-webscienceco"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "c17faae502"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_f766d7f3014ae6762bce6dca31fc7b58" {
  name    = "_github-pages-challenge-aareet"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "26cdd836b28853965b1043d19aecde"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_4acde1e4596d15d22098ee032f893c65" {
  name    = "_github-pages-challenge-webscienceco.webscience"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "5fa733a36ee243ceee49e936a4b74b"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_257c7f7a3c089e6453a371bd9fe5ea93" {
  name    = "_gitlab-pages-verification-code.episodes"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "gitlab-pages-verification-code=a2c285b65bd2599877bb5f435a883be4"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_675d2913fc90ffcb38741077444a7379" {
  name    = "_gitlab-pages-verification-code.uwnano"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "gitlab-pages-verification-code=f2f760ed61c749eff40d86628d75a721"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_eaf0df4957054e075dfdae89e3a64a26" {
  name    = "_gitlab-pages-verification-code.www"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "gitlab-pages-verification-code=c32f9dac074e172eac758db728ca3140"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "terraform_managed_resource_poet_aareet_com" {
  comment = "Setting dummy IP to ensure canonical redirect to www"
  name    = "poet"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = data.cloudflare_zone.aareet.id
}

resource "cloudflare_page_rule" "terraform_managed_resource_70f15c1082f9024006d30a3d53faa019" {
  priority = 2
  status   = "active"
  target   = "aareet.com/*"
  zone_id  = data.cloudflare_zone.aareet.id
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.aareet.com/$1"
    }
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_8d0da16dd63dc90b8ec7c68abded80b6" {
  priority = 1
  status   = "active"
  target   = "poet.aareet.com/*"
  zone_id  = data.cloudflare_zone.aareet.id
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.aareet.com/poetry/$1"
    }
  }
}

# Cloudflare email routing configuration
resource "cloudflare_record" "aareet_email_route_mx1" {
  name     = "aareet.com"
  priority = 40
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "aareet_email_route_mx2" {
  name     = "aareet.com"
  priority = 89
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "aareet_email_route_mx3" {
  name     = "aareet.com"
  priority = 33
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = data.cloudflare_zone.aareet.id
}

resource "cloudflare_record" "aareet_email_route_spf" {
  name    = "aareet.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = data.cloudflare_zone.aareet.id
}