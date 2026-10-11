variable "appsec_waf_custom_rules" {
  description = <<EOT
Map of appsec_waf_custom_rules, attributes below
Required:
    - blocking
    - enabled
    - name
    - tags
Optional:
    - path_glob
    - action (block):
        - action (optional)
        - parameters (optional, block):
            - location (optional)
            - status_code (optional)
    - condition (block):
        - operator (optional)
        - parameters (optional, block):
            - data (optional)
            - input (optional, block):
                - address (optional)
                - key_path (optional)
            - list (optional)
            - options (optional, block):
                - case_sensitive (optional)
                - min_length (optional)
            - regex (optional)
            - value (optional)
    - scope (block):
        - env (optional)
        - service (optional)
EOT

  type = map(object({
    blocking  = bool
    enabled   = bool
    name      = string
    tags      = map(string)
    path_glob = optional(string)
    action = optional(list(object({
      action = optional(string)
      parameters = optional(list(object({
        location    = optional(string)
        status_code = optional(number)
      })))
    })))
    condition = optional(list(object({
      operator = optional(string)
      parameters = optional(list(object({
        data = optional(string)
        input = optional(list(object({
          address  = optional(string)
          key_path = optional(list(string))
        })))
        list = optional(list(string))
        options = optional(list(object({
          case_sensitive = optional(bool)
          min_length     = optional(number)
        })))
        regex = optional(string)
        value = optional(string)
      })))
    })))
    scope = optional(list(object({
      env     = optional(string)
      service = optional(string)
    })))
  }))
}

