resource "google_compute_firewall" "fw-rule" {
#  name      = "${var.network}-${var.name}"
  name = "${var.name}"
  network   = "${var.network}"
  description = "Creates Firewall rule targetting tagged instances"

  allow {
    protocol = "${var.protocol}"
    ports    = [tolist("${var.ports}")[0]]
  }
  target_tags   = [tolist("${var.target_tags}")[0]]
  source_ranges = [tolist("${var.source_ranges}")[0]]
}
