
# TEAM ONECX-EVENT
module "onecx-event-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-event"
  team_description = "onecx event management services team"
  team_members_file_path   = "products/onecx-event/team.csv"
}

# ONECX-EVENT
module "onecx-event" {
  source = "../../modules/product"
  repository_name        = "onecx-event"
  repository_description = "OneCx Event Management"
  team_id                = module.onecx-event-team.team_id
  team_name              = module.onecx-event-team.team_name
}

## ONECX-EVENT-SVC
module "onecx-event-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-event-svc"
  repository_description = "OneCx Event Management Service"
  team_id                = module.onecx-event-team.team_id
}

## ONECX-EVENT-BFF
module "onecx-event-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-event-bff"
  repository_description = "OneCx Event Management BFF"
  team_id                = module.onecx-event-team.team_id
}

## ONECX-EVENT-UI
module "onecx-event-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-event-ui"
  repository_description = "OneCx Event Management UI"
  team_id                = module.onecx-event-team.team_id
}
