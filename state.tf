terraform{
    backend "s3" {
        bucket = "cicd-aws-cicd-pipeline"
        encrypt = true
        key = "terraform.tfstate"
        region = "ap-south-1"
    }
}

provider "aws" {
    region = "ap-south-1"
}

