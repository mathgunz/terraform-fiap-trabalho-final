terraform {
  backend "s3" {
    bucket = "lab-fiap-trabalho-final"
    key    = "workspaces"
    region = "us-east-1"
  }
}