resource "aws_sns_topic" "lab-fiap-trabalho-final-topico-prod" {
  name        = "lab-fiap-trabalho-final-topico-prod"
  name_prefix = var.name_prefix

  display_name                             = "lab-fiap-trabalho-final-topico-prod"
  policy                                   = var.policy
  delivery_policy                          = var.delivery_policy
  application_success_feedback_role_arn    = var.application_success_feedback_role_arn
  application_success_feedback_sample_rate = var.application_success_feedback_sample_rate
  application_failure_feedback_role_arn    = var.application_failure_feedback_role_arn
  http_success_feedback_role_arn           = var.http_success_feedback_role_arn
  http_success_feedback_sample_rate        = var.http_success_feedback_sample_rate
  http_failure_feedback_role_arn           = var.http_failure_feedback_role_arn
  lambda_success_feedback_role_arn         = var.lambda_success_feedback_role_arn
  lambda_success_feedback_sample_rate      = var.lambda_success_feedback_sample_rate
  lambda_failure_feedback_role_arn         = var.lambda_failure_feedback_role_arn
  sqs_success_feedback_role_arn            = var.sqs_success_feedback_role_arn
  sqs_success_feedback_sample_rate         = var.sqs_success_feedback_sample_rate
  sqs_failure_feedback_role_arn            = var.sqs_failure_feedback_role_arn
  kms_master_key_id                        = var.kms_master_key_id

  tags = var.tags
  
  # env = var.env
}

resource "aws_sns_topic" "lab-fiap-trabalho-final-topico-dev" {
  name        = "lab-fiap-trabalho-final-topico-dev"
  name_prefix = var.name_prefix

  display_name                             = "lab-fiap-trabalho-final-topico-dev"
  policy                                   = var.policy
  delivery_policy                          = var.delivery_policy
  application_success_feedback_role_arn    = var.application_success_feedback_role_arn
  application_success_feedback_sample_rate = var.application_success_feedback_sample_rate
  application_failure_feedback_role_arn    = var.application_failure_feedback_role_arn
  http_success_feedback_role_arn           = var.http_success_feedback_role_arn
  http_success_feedback_sample_rate        = var.http_success_feedback_sample_rate
  http_failure_feedback_role_arn           = var.http_failure_feedback_role_arn
  lambda_success_feedback_role_arn         = var.lambda_success_feedback_role_arn
  lambda_success_feedback_sample_rate      = var.lambda_success_feedback_sample_rate
  lambda_failure_feedback_role_arn         = var.lambda_failure_feedback_role_arn
  sqs_success_feedback_role_arn            = var.sqs_success_feedback_role_arn
  sqs_success_feedback_sample_rate         = var.sqs_success_feedback_sample_rate
  sqs_failure_feedback_role_arn            = var.sqs_failure_feedback_role_arn
  kms_master_key_id                        = var.kms_master_key_id

  tags = var.tags
  
  # env = var.env
}


# data "template_file" "cloudformation_sns_stack" {
#   template = file("${path.module}/email-sns-stack.json")

#   vars = {
#     display_name = var.display_name
#     subscriptions = join(
#       ",",
#       formatlist(
#         "{ \"Endpoint\": \"%s\", \"Protocol\": \"%s\"  }",
#         var.email_addresses,
#         var.protocol,
#       ),
#     )
#   }
# }

# resource "aws_cloudformation_stack" "lab-fiap-trabalho-final-topico-dev" {
#   name          = "lab-fiap-trabalho-final-topico-dev"
#   template_body = data.template_file.cloudformation_sns_stack.rendered
# }

# resource "aws_cloudformation_stack" "lab-fiap-trabalho-final-topico-prod" {
#   name          = "lab-fiap-trabalho-final-topico-prod"
#   template_body = data.template_file.cloudformation_sns_stack.rendered
# }