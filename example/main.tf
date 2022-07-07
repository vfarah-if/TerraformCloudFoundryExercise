# https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/index.md
variable "api_url" {
    description = "This can also be specified with the CF_API_URL shell environment variable."
    type = string
    default = "https://api.london.cloud.service.gov.uk"
}
variable "sso_passcode" {
    description = "A passcode provided by UAA single sign on. The equivalent of cf login --sso-passcode. This can also be specified with the CF_SSO_PASSCODE shell environment variable. Also can get hold of this value from https://login.london.cloud.service.gov.uk/passcode"
    type = string
}
variable "user" {
    description = "User to login to the system"
    type = string
}

provider "cloudfoundry" {
    api_url = var.api_url
    user = var.user
    sso_passcode= var.sso_passcode
    skip_ssl_validation = true
    app_logs_max = 30   
}

data "cloudfoundry_user" "me" {
    name = var.user    
}

# # https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/org.md
# resource "cloudfoundry_org" "o1" {
#     name = "organization-one"
#     quota = cloudfoundry_quota.runaway.id
# }

# # https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/space.md
# resource "cloudfoundry_space" "s1" {
#     name = "space-one"
#     org = cloudfoundry_org.o1.id
#     quota = cloudfoundry_quota.dev.id
#     asgs = [ cloudfoundry_asg.svc.id ]
#     allow_ssh = true
# }

# # https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/app.md
# resource "cloudfoundry_app" "spring-music" {
#     name = "spring-music"
#     path = "/Work/cloudfoundry/apps/spring-music/build/libs/spring-music.war"
# }

# # https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/service_key.md
# resource "cloudfoundry_service_key" "redis1-key1" {
#   name = "pricing-grid-key1"
#   service_instance = cloudfoundry_service_instance.redis.id
# }

# # https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/buildpack.md
# resource "cloudfoundry_buildpack" "tomee" {
#     name = "tomcat-enterprise-edition"
#     path = "https://github.com/cloudfoundry-community/tomee-buildpack/releases/download/v3.17/tomee-buildpack-v3.17.zip"
#     position = "12"
#     enable = true
# }
