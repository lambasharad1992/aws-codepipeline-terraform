variable dockerhub_credentials{
    type = string
}

variable codestar_connector_credentials {
    type = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "creator" {
    description = "Name of creator"
    type = string
    default = "Sharad"
}

variable "techstack" {
    description = "Choose your tech stack - php80, php74, java11, java8, tomcat85j11, tomcat85j8, go344, docker"
    type = string
    default = "php80"
}

variable "eb_app_name" {
    description = "Elastic beanstalk application name"
    type = string
    default = "test-tf-app-2"
}

variable "eb_env_name" {
    description = "Elastic beanstalk environment name"
    type = string
    default = "test-tf-app-env"
}

variable "app_version" {
    description = "Application version"
    type = string
    default = "my-default-version"
}
// Do not edit variables below this line except for adding new solution stack
// Reference link for Solution stack name: https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html
// Do not confuse "Platform name" with "Solution Stack Name"

variable "eb_stack" {
    description = "Platform for Elastic beanstalk environment" 
    type = map(string)
    default = {
        php80 = "64bit Amazon Linux 2 v3.5.0 running PHP 8.1"
        php74 = "64bit Amazon Linux 2 v3.3.9 running PHP 7.4"
        java11 = "64bit Amazon Linux 2 v3.2.10 running Corretto 11"
        java8 = "64bit Amazon Linux 2 v3.2.10 running Corretto 8"
        tomcat85j11 = "64bit Amazon Linux 2 v4.2.10 running Tomcat 8.5 Corretto 11"
        tomcat85j8 = "64bit Amazon Linux 2 v4.2.10 running Tomcat 8.5 Corretto 8"
        go1 = "64bit Amazon Linux 2 v3.4.4 running Go 1"
        docker = "64bit Amazon Linux 2 v3.4.10 running Docker"
        node = "64bit Amazon Linux 2 v5.6.0 running Node.js 16"
    }
}