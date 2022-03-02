resource "aws_sns_topic_subscription" "sns" {
  topic_arn              = var.topic
  protocol               = var.protocol
  endpoint               = var.endpoint
  endpoint_auto_confirms = true
}