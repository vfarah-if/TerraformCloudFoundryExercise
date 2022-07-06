# https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/index.md
variable "api_url" {}
variable "password" {}
variable "uaa_admin_client_secret" {}

provider "cloudfoundry" {
    api_url = var.api_url
    user = "admin"
    password = var.password
    uaa_client_id = "admin"
    uaa_client_secret = var.uaa_admin_client_secret
    skip_ssl_validation = true
    app_logs_max = 30
}

# https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/org.md
resource "cloudfoundry_org" "o1" {
    name = "organization-one"
    quota = cloudfoundry_quota.runaway.id
}

# https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/space.md
resource "cloudfoundry_space" "s1" {
    name = "space-one"
    org = cloudfoundry_org.o1.id
    quota = cloudfoundry_quota.dev.id
    asgs = [ cloudfoundry_asg.svc.id ]
    allow_ssh = true
}

# https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/app.md
resource "cloudfoundry_app" "spring-music" {
    name = "spring-music"
    path = "/Work/cloudfoundry/apps/spring-music/build/libs/spring-music.war"
}

# https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/service_key.md
resource "cloudfoundry_service_key" "redis1-key1" {
  name = "pricing-grid-key1"
  service_instance = cloudfoundry_service_instance.redis.id
}

# https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/buildpack.md
resource "cloudfoundry_buildpack" "tomee" {
    name = "tomcat-enterprise-edition"
    path = "https://github.com/cloudfoundry-community/tomee-buildpack/releases/download/v3.17/tomee-buildpack-v3.17.zip"
    position = "12"
    enable = true
}
