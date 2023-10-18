resource "github_repository" "repository" {
  name             = var.repository_name
  description      = var.repository_description
  has_issues       = var.project_repo
  has_discussions  = var.project_repo
  has_wiki         = false
  has_projects     = true
  auto_init        = true
  license_template = var.license_template
  allow_merge_commit = false
  allow_rebase_merge = false
  allow_squash_merge = true
  delete_branch_on_merge = true
}

resource "github_branch_default" "main" {
  repository = github_repository.repository.name
  branch     = var.branch
}

resource "github_team_repository" "team" {
  repository = github_repository.repository.name
  team_id    = var.team_id
  permission = var.team_permission
}
