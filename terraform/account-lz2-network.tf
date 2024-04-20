module "Network_Low_Env" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "techtechy13111993+account-lz2-network@gmail.com"
    AccountName               = "account-lz2-network"
    ManagedOrganizationalUnit = "Shared-services-OU"
    SSOUserEmail              = "techtechy13111993+account-lz2-network@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Network_Low_Env"
}

