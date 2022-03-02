# tfmod_sns_subscription

Terraform module to create SNS subscriptions to endpoint.

## Dependencies

SNS Topic <https://github.com/virsas/tfmod_kms>

## Terraform example

``` terraform
##################
# SNS subscription
##################
module "sns_subscription_alarms_pagerduty" {
  source = "github.com/virsas/tfmod_sns_subscription"
  # ARN of the associated SNS topic
  topic = module.sns_topic_alarms.arn
  # the protocol of the endpoint
  protocol = "https"
  # End point URL. Forexample pagerduty API
  endpoint = "https://api.example.org/v2"
}
```
