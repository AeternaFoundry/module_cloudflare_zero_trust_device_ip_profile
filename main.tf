resource "cloudflare_zero_trust_device_ip_profile" "zero_trust_device_ip_profiles" {
  for_each = var.zero_trust_device_ip_profiles

  account_id  = each.value.account_id
  match       = each.value.match
  name        = each.value.name
  precedence  = each.value.precedence
  subnet_id   = each.value.subnet_id
  description = each.value.description
  enabled     = each.value.enabled
}

