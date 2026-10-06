terraform {
  cloud {
    organization = "onecx-devops-github"

    workspaces {
      name = "onecx-apps-devops"
    }
  }
}

provider "github" {
  owner = "onecx-apps"
}

module "onecx-event" {
  source = "./products/onecx-event"
}

module "onecx-chat" {
  source = "./products/onecx-chat"
}

module "onecx-ai-python" {
  source = "./products/onecx-ai-python"
}

module "onecx-concessions" {
  source = "./products/onecx-concessions"
}
