resource "datadog_appsec_waf_custom_rule" "appsec_waf_custom_rules" {
  for_each = var.appsec_waf_custom_rules

  blocking  = each.value.blocking
  enabled   = each.value.enabled
  name      = each.value.name
  tags      = each.value.tags
  path_glob = each.value.path_glob

  dynamic "action" {
    for_each = each.value.action != null ? each.value.action : []
    content {
      action = action.value.action
      dynamic "parameters" {
        for_each = action.value.parameters != null ? action.value.parameters : []
        content {
          location    = parameters.value.location
          status_code = parameters.value.status_code
        }
      }
    }
  }

  dynamic "condition" {
    for_each = each.value.condition != null ? each.value.condition : []
    content {
      operator = condition.value.operator
      dynamic "parameters" {
        for_each = condition.value.parameters != null ? condition.value.parameters : []
        content {
          data = parameters.value.data
          dynamic "input" {
            for_each = parameters.value.input != null ? parameters.value.input : []
            content {
              address  = input.value.address
              key_path = input.value.key_path
            }
          }
          list = parameters.value.list
          dynamic "options" {
            for_each = parameters.value.options != null ? parameters.value.options : []
            content {
              case_sensitive = options.value.case_sensitive
              min_length     = options.value.min_length
            }
          }
          regex = parameters.value.regex
          value = parameters.value.value
        }
      }
    }
  }

  dynamic "scope" {
    for_each = each.value.scope != null ? each.value.scope : []
    content {
      env     = scope.value.env
      service = scope.value.service
    }
  }
}

