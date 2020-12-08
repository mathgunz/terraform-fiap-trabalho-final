# output "tags" {
#   value       = module.labels.tags
#   description = "A mapping of tags to assign to the resource."
# }

# output "arn" {
#   value       = join("", aws_sqs_queue.default.*.arn)
#   description = "The ARN of the SQS queue."
# }

# output "id" {
#   value       = join("", aws_sqs_queue.default.*.id)
#   description = "The URL for the created Amazon SQS queue."
# }