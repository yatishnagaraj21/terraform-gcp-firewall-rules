output "self_link" {
  value       = "${google_compute_firewall.fw-rule.self_link}"
  description = "The URI of the created resource"
}
output "target_tags" {
  value       = var.target_tags
  description = "The target tags associated with this firewall rule"
}