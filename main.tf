resource "aws_cloudwatch_metric_alarm" "ec2_cpu_utilization" {
  for_each = var.ec2_names

  ## metric
  namespace   = "AWS/EC2"
  metric_name = "CPUUtilization"
  dimensions = {
    InstanceId = each.value
  }
  period = 300

  ## condictions
  comparison_operator = "GreaterThanOrEqualToThreshold"
  statistic           = "Sum"
  threshold           = 80
  evaluation_periods  = 2

  ## alarm 
  alarm_name        = "${each.value}-5XX-errors"
  alarm_description = "Instance ${each.value} is using more than 80% of CPU in 5 minutes. Normal is less than 80%."
  actions_enabled   = "true"
  alarm_actions     = [var.alarm_notification_channel]
  ok_actions        = [var.alarm_notification_channel]

  tags = {
    developed = "VioletX.com"
    terraform = "true"
  }
}
