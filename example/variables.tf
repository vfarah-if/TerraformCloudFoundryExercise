# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "user" {
    description = "User to login to the system"
    type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

# https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/index.md
variable "api_url" {
    description = "This can also be specified with the CF_API_URL shell environment variable."
    type = string
    default = "https://api.london.cloud.service.gov.uk"
}

variable "sso_passcode" {
    description = "A passcode provided by UAA single sign on. The equivalent of cf login --sso-passcode. This can also be specified with the CF_SSO_PASSCODE shell environment variable. Also can get hold of this value from https://login.london.cloud.service.gov.uk/passcode"
    type = string
    sensitive = true
}
