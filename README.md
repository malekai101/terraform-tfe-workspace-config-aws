# terraform-tfe-workspace-config-aws
A Terraform to configure a workspace for AWS

## Overview

This module configures a Terraform Cloud workspace to access the AWS environment.  This code is run so that clients of the workspace will never need login access to AWS.  Environmental variables are created with the client, secret, and session information required to access AWS.  

There is no output to the module.  Running a `terraform destroy` or removing the module from the calling code will not destroy the workspace but will remove variables created by the module. 

## Requirements

To use this module the client must use the [i]tfe[/i] provider which has been initailized with a TFC user account that has sufficient rights to edit the target workspace.  The client must also provide values for the AWS connection variables.  The module does validates the information provided.

## Usage

```hcl
provider tfe {
    token = "xxxxxx"
}

module "sample-repo" {
    source = "app.terraform.io/csmith/workspace-config-aws/tfe"

    workspace_name = "Name"
    workspace_organization = "Org"
    
    aws_access_key_id = "xxxxxx"
    aws_session_token = "xxxxxx"
    aws_secret_access_key = "xxxxxx"
}
```

