# TEAM ONECX-AI
module "onecx-ai-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-ai"
  team_description = "OneCx AI Management services team"
  team_members_file_path   = "products/onecx-ai/team.csv"
}

# ONECX-AI
module "onecx-ai" {
  source = "../../modules/product"
  repository_name        = "onecx-ai"
  repository_description = "OneCx AI Management"
  team_id                = module.onecx-ai-team.team_id
  team_name              = module.onecx-ai-team.team_name
}

# ONEC-AI-MANAGEMENT-SVC
module "onecx-ai-management-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-ai-management-svc"
  repository_description = "OneCx AI Management Service"
  team_id                = module.onecx-ai-team.team_id
}

# ONECX-AI-MANAGEMENT-BFF
module "onecx-ai-management-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-ai-management-bff"
  repository_description = "OneCx AI Management BFF"
  team_id                = module.onecx-ai-team.team_id
}

# ONEC-AI-MANAGEMENT-UI
module "onecx-ai-management-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-ai-management-ui"
  repository_description = "OneCx AI Management UI"
  team_id                = module.onecx-ai-team.team_id
}