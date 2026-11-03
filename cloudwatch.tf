resource "aws_cloudwatch_metric_alarm" "cpu_high" {
  alarm_name          = "project-1.1-ec2-high-cpu"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Triggers when EC2 instance CPU exceeds 80 percent"

  dimensions = {
    InstanceId = aws_instance.app_server.id
  }
}

resource "aws_cloudwatch_metric_alarm" "instance_health" {
  alarm_name          = "project-1.1-ec2-status-check-failed"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "StatusCheckFailed"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Maximum"
  threshold           = 1
  alarm_description   = "Triggers immediately if EC2 system or instance status check fails"

  dimensions = {
    InstanceId = aws_instance.app_server.id
  }
}
