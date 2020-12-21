output "this_sns_topic_arn_dev" {
  description = "ARN of SNS topic"
  value       = element(concat(aws_sns_topic.lab-fiap-trabalho-final-topico-dev.*.arn, [""]), 0)
}

output "this_sns_topic_arn_prod" {
  description = "ID of SNS topic"
  value       = element(concat(aws_sns_topic.lab-fiap-trabalho-final-topico-prod.*.arn, [""]), 0)
}
