module "account_request_NC" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.org-dev.root+nc@netcompany.com"
    AccountName               = "DevOrg.NC"
    ManagedOrganizationalUnit = "Sandbox (ou-tp68-smzsc386)"
    SSOUserEmail              = "aws.org-dev.root+nc-test@netcompany.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "ABC:Owner"       = "nvmt@netcompany.com"
    "ABC:Division"    = "NC"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "NC"
}