data "tfe_workspace" "dev_workspace" {
  name         = var.workspace_name
  organization = var.workspace_organization
}

// Add the environmental variables

resource "tfe_variable" "aws_session_token" {
  key          = "AWS_SESSION_TOKEN"
  value        = var.aws_session_token
  category     = "env"
  workspace_id = data.tfe_workspace.dev_workspace.id
  description  = "AWS Session Token"
  sensitive    = true
}

resource "tfe_variable" "aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  workspace_id = data.tfe_workspace.dev_workspace.id
  description  = "AWS Access Key ID"
}

resource "tfe_variable" "aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  workspace_id = data.tfe_workspace.dev_workspace.id
  description  = "AWS Secret Key"
  sensitive    = true
}