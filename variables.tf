// Variable for testing.  These should be removed or commented out.
/*
variable tfe_api_key {

}
*/

// Production module variables.
variable workspace_name {
  type        = string
  description = "The name of the TFC workspace to configure."
}

variable workspace_organization {
  type        = string
  description = "The organization to which the workspace belongs."
}

variable aws_access_key_id {
  type        = string
  description = "The access key used to log into AWS."
}

variable aws_session_token {
  type        = string
  description = "The session token used to log into AWS."
}

variable aws_secret_access_key {
  type        = string
  description = "The Secret associated with the access key used to log into AWS."
}