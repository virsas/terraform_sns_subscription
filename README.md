# terraform_sns_subscription

Terraform module to create SNS subscriptions to endpoint.

## Dependencies

- SNS Topic <https://github.com/virsas/terraform_kms>

## Terraform example

``` terraform
##################
# SNS subscription
##################
module "sns_subscription_alarms_pagerduty" {
  source = "git::https://github.com/virsas/terraform_sns_subscription.git?ref=v1.0.0"
  # ARN of the associated SNS topic
  topic = module.sns_topic_alarms.arn
  # the protocol of the endpoint
  protocol = "https"
  # End point URL. Forexample pagerduty API
  endpoint = "https://api.example.org/v2"
}
```
