resource "aws_sqs_queue" "fiap_lab_trabalho_final_principal_dev_DLQ" {
  name                      = "fiap-lab-trabalho-final-principal-dev-DLQ"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = "dev"
  }
}

resource "aws_sqs_queue" "fiap_lab_trabalho_final_principal_dev" {
  name                      = "fiap-lab-trabalho-final-principal-dev"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.fiap_lab_trabalho_final_principal_dev_DLQ.arn
    maxReceiveCount     = 4
  })

  tags = {
    Environment = "dev"
  }
}

resource "aws_sqs_queue" "fiap_lab_trabalho_final_principal_qa_DLQ" {
  name                      = "fiap-lab-trabalho-final-principal-qa-DLQ"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = "qa"
  }
}

resource "aws_sqs_queue" "fiap_lab_trabalho_final_principal_qa" {
  name                      = "fiap-lab-trabalho-final-principal-qa"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.fiap_lab_trabalho_final_principal_qa_DLQ.arn
    maxReceiveCount     = 4
  })

  tags = {
    Environment = "qa"
  }
}

resource "aws_sqs_queue" "fiap_lab_trabalho_final_principal_prod_DLQ" {
  name                      = "fiap-lab-trabalho-final-principal-prod-DLQ"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = "qa"
  }
}

resource "aws_sqs_queue" "fiap_lab_trabalho_final_principal_prod" {
  name                      = "fiap-lab-trabalho-final-principal-prod"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.fiap_lab_trabalho_final_principal_prod_DLQ.arn
    maxReceiveCount     = 4
  })

  tags = {
    Environment = "prod"
  }
}