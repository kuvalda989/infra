provider "google" {
  credentials = "${file("application_default_credentials.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}
