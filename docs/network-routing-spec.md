# Architecture Specification: High Availability & Network Routing

## Multi-AZ Resilience Model
- Redundant deployment across eu-central-1a and eu-central-1b.
- Fault-isolated subnet boundaries preventing single points of failure.

## Traffic Segregation & Routing Policy
1. Public Subnets: Bound to custom Route Table with default route (0.0.0.0/0) targeting the Internet Gateway.
2. Private Subnets: Bound to isolated Route Table with zero direct external egress pathways.
3. Routing Association: Explicit subnet-to-routetable bindings via Terraform.
