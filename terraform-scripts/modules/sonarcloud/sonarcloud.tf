

resource "sonarcloud_project" "project" {
  key        = "${var.organisation}_${var.repository_name}"
  name       = var.repository_name
  visibility = "public"

  lifecycle {
    prevent_destroy = false
  }
  
}

resource "sonarcloud_project_main_branch" "branch" {
  project_key = sonarcloud_project.project.key
  name        = var.branch
}

provider "sonarcloud" {
  organization = var.organisation
}