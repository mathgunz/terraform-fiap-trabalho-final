output "this_sns_topic_arn" {
  description = "ARN of SNS topic"
  value       = element(concat(aws_sns_topic.trabalho_final_fiap.*.arn, [""]), 0)
}

output "this_sns_topic_id" {
  description = "ID of SNS topic"
  value       = element(concat(aws_sns_topic.trabalho_final_fiap.*.id, [""]), 0)
}
