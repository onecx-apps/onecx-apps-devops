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

# ONEC-AI-SVC
module "onecx-ai-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-ai-svc"
  repository_description = "OneCx AI Management Service"
  team_id                = module.onecx-ai-team.team_id
}

# ONECX-AI-BFF
module "onecx-ai-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-ai-bff"
  repository_description = "OneCx AI Management BFF"
  team_id                = module.onecx-ai-team.team_id
}

# ONEC-AI-UI
module "onecx-ai-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-ai-ui"
  repository_description = "OneCx AI Management UI"
  team_id                = module.onecx-ai-team.team_id
}

# ONEC-EXAMPLE-SVC
module "onecx-example-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-example-svc"
  repository_description = "OneCx Example Service"
  team_id                = module.onecx-ai-team.team_id
}