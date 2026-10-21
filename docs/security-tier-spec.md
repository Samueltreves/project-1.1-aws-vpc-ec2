# Architecture Specification: Security Tier & Traffic Control

## Security Boundary Architecture
- Network Level (Stateless): Default VPC NACLs acting as subnet boundary perimeter.
- Host Level (Stateful): Security Groups enforcing zero-trust instance-level protection.

## Hardening Standards
1. Zero Public Management Ports: Absolute restriction of port 22/3389 from 0.0.0.0/0.
2. Layered Isolation: Public tier accepts HTTP/HTTPS only; Application tier accepts traffic strictly from Public tier.
3. Minimal Egress: Egress restricted exclusively to required runtime dependencies.
