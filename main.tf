resource "google_compute_firewall" "fw-rule" {
#  name      = "${var.network}-${var.name}"
  name = "${substr(var.network, 0, 30)}-${substr(var.name, 0, 30)}"
  network   = "${var.network}"
  description = "Creates Firewall rule targetting tagged instances"

  allow {
    protocol = "${var.protocol}"
    ports    = [tolist("${var.ports}")[0]]
  }
  target_tags   = ["${var.network}-${var.name}"]
  source_ranges = [tolist("${var.source_ranges}")[0]]
}
