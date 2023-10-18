variable "repository_name" {
  description = "name of the repository"
  type = string
  default = null
}

variable "repository_description" {
  description = "description of the repository"
  type = string
  default = null
}

variable "team_id" {
  description = "ID of the github team"
  type = string
  default = null
}

variable "team_name" {
  description = "Name of the github team"
  type = string
  default = null
}

variable "team_permission" {
  description = "The permissions of team members regarding the repository. Values: pull, triage, push, maintain, admin"
  type = string
  default = "maintain"
}

variable "branch" {
  description = "Repository default branch"
  type = string
  default = "main"
}

variable "patterns" {
  description = "List of branch pattern to apply"
  type = list(string)
  default = [
    "main",
    "fix/*.*.x"
  ]
}

variable "label_color_product" {
  description = "Color of the product label"
  type = string
  default = "f97316"
}

variable "label_color_team" {
  description = "Color of the team label"
  type = string
  default = "84cc16"
}

variable "labels" {
  description = "The map of labels name and color"
  type = map(string)
  default = {}
}
