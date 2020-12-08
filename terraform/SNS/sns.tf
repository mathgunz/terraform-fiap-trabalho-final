resource "aws_sns_topic" "lab_fiap_trabalho_final_topico_dev" {
  name = "lab-fiap-trabalho-final-topico-dev"
}

resource "aws_sns_topic" "lab_fiap_trabalho_final_topico_qa" {
  name = "lab-fiap-trabalho-final-topico-qa"
}

resource "aws_sns_topic" "lab_fiap_trabalho_final_topico_prod" {
  name = "lab-fiap-trabalho-final-topico-prod"
}