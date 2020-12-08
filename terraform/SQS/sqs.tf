resource "aws_sqs_queue" "terraform_queue_dlq_dev" {
  name                      = "fiap-lab-trabalho-final-dev-DLQ"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = "dev"
  }
}

resource "aws_sqs_queue" "terraform_queue_dev" {
  name                      = "fiap-lab-trabalho-final-dev"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.terraform_queue_dlq_dev.arn
    maxReceiveCount     = 4
  })

  tags = {
    Environment = "dev"
  }
}

resource "aws_sqs_queue" "terraform_queue_dlq_qa" {
  name                      = "fiap-lab-trabalho-final-qa-DLQ"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = "qa"
  }
}

resource "aws_sqs_queue" "terraform_queue_qa" {
  name                      = "fiap-lab-trabalho-final-qa"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.terraform_queue_dlq_qa.arn
    maxReceiveCount     = 4
  })

  tags = {
    Environment = "qa"
  }
}

resource "aws_sqs_queue" "terraform_queue_dlq_prod" {
  name                      = "fiap-lab-trabalho-final-prod-DLQ"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = "prod"
  }
}

resource "aws_sqs_queue" "terraform_queue_prod" {
  name                      = "fiap-lab-trabalho-final-prod"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.terraform_queue_dlq_prod.arn
    maxReceiveCount     = 4
  })

  tags = {
    Environment = "prod"
  }
}