variable "zero_trust_device_ip_profiles" {
  description = <<EOT
Map of zero_trust_device_ip_profiles, attributes below
Required:
    - account_id
    - match
    - name
    - precedence
    - subnet_id
Optional:
    - description
    - enabled
EOT

  type = map(object({
    account_id  = string
    match       = string
    name        = string
    precedence  = number
    subnet_id   = string
    description = optional(string)
    enabled     = optional(bool)
  }))
}

