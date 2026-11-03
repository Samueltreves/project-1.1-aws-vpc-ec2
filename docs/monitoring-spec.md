# Architecture Specification: Infrastructure Monitoring & Alerting

## Metric Baseline & Thresholds
- Compute Saturation: EC2 CPUUtilization alarm triggered when sustained usage exceeds 80% over 5 minutes.
- Infrastructure Integrity: StatusCheckFailed alarm configured with immediate evaluation (evaluation_periods = 1).
- Cost Optimization: Utilize AWS CloudWatch Basic Monitoring tier (5-minute frequency, 0 USD additional cost).

## Alerting Lifecycle
- State Transitions: Automatic monitoring across OK, ALARM, and INSUFFICIENT_DATA states.
- Notification Pipeline: Integration with AWS SNS topics for automated operational awareness.
