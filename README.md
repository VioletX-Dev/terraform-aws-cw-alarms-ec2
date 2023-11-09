## AWS CloudWatch Alarm for EC2 Instances CPU Errors

This module creates a CloudWatch alarm for all given EC2 instances that presents high CPU utilization, if the condiction matches a notification is sent to the informed SNS topic.

### Predefined values
| Key | Value |
|------|---------|
| Comparison operator | Greater Than Or Equal To Threshold |
| Statistic | Maximum |
| Threshold | 80% |
| Evaluation period | 2 seconds |

## Usage:

```
module "example" {
    source = "github.com/VioletX-Dev/terraform-aws-cw-alarms-ec2?ref=main"

    alarm_notification_channel = "arn:aws:sns:us-east-1:1234567890:my-sns-notification-channel"
    ec2_names                  = ["ec2_1", "ec2_2", "ec2_3"]

}
```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.ec2_cpu_utilization](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alarm_notification_channel"></a> [alarm\_notification\_channel](#input\_alarm\_notification\_channel) | It's a SNS that might send emails, page your Incident Response tool (Pager Duty, OpsGenie, VitorOps, etc) | `string` | n/a | yes |
| <a name="input_ec2_names"></a> [ec2\_names](#input\_ec2\_names) | EC2 names to create the alarms. `e.g. ec2_names = ["ec2_1", "ec2_2", "ec2_3"]` | `set(string)` | n/a | yes |

## Outputs

No outputs.
