variable "alarm_notification_channel" {
  description = "It's a SNS that might send emails, page your Incident Response tool (Pager Duty, OpsGenie, VitorOps, etc)"
  type        = string
}

variable "ec2_names" {
  description = "EC2 names to create the alarms. `e.g. ec2_names = [\"ec2_1\", \"ec2_2\", \"ec2_3\"]`"
  type        = set(string)
}
