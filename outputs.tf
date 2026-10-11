output "appsec_waf_custom_rules_id" {
  description = "Map of id values across all appsec_waf_custom_rules, keyed the same as var.appsec_waf_custom_rules except keys with no id are omitted"
  value       = { for k, v in datadog_appsec_waf_custom_rule.appsec_waf_custom_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appsec_waf_custom_rules_action" {
  description = "Map of action values across all appsec_waf_custom_rules, keyed the same as var.appsec_waf_custom_rules except keys with no action are omitted"
  value       = { for k, v in datadog_appsec_waf_custom_rule.appsec_waf_custom_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "appsec_waf_custom_rules_blocking" {
  description = "Map of blocking values across all appsec_waf_custom_rules, keyed the same as var.appsec_waf_custom_rules except keys with no blocking are omitted"
  value       = { for k, v in datadog_appsec_waf_custom_rule.appsec_waf_custom_rules : k => v.blocking if v.blocking != null }
}
output "appsec_waf_custom_rules_condition" {
  description = "Map of condition values across all appsec_waf_custom_rules, keyed the same as var.appsec_waf_custom_rules except keys with no condition are omitted"
  value       = { for k, v in datadog_appsec_waf_custom_rule.appsec_waf_custom_rules : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "appsec_waf_custom_rules_enabled" {
  description = "Map of enabled values across all appsec_waf_custom_rules, keyed the same as var.appsec_waf_custom_rules except keys with no enabled are omitted"
  value       = { for k, v in datadog_appsec_waf_custom_rule.appsec_waf_custom_rules : k => v.enabled if v.enabled != null }
}
output "appsec_waf_custom_rules_name" {
  description = "Map of name values across all appsec_waf_custom_rules, keyed the same as var.appsec_waf_custom_rules except keys with no name are omitted"
  value       = { for k, v in datadog_appsec_waf_custom_rule.appsec_waf_custom_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appsec_waf_custom_rules_path_glob" {
  description = "Map of path_glob values across all appsec_waf_custom_rules, keyed the same as var.appsec_waf_custom_rules except keys with no path_glob are omitted"
  value       = { for k, v in datadog_appsec_waf_custom_rule.appsec_waf_custom_rules : k => v.path_glob if v.path_glob != null && length(v.path_glob) > 0 }
}
output "appsec_waf_custom_rules_scope" {
  description = "Map of scope values across all appsec_waf_custom_rules, keyed the same as var.appsec_waf_custom_rules except keys with no scope are omitted"
  value       = { for k, v in datadog_appsec_waf_custom_rule.appsec_waf_custom_rules : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "appsec_waf_custom_rules_tags" {
  description = "Map of tags values across all appsec_waf_custom_rules, keyed the same as var.appsec_waf_custom_rules except keys with no tags are omitted"
  value       = { for k, v in datadog_appsec_waf_custom_rule.appsec_waf_custom_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

