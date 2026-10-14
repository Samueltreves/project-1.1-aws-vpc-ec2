# IAM Security & Least Privilege Specification

## Core Security Directives
- Root Account Policy: Used exclusively for emergency account recovery; never for CLI or Terraform.
- Principle of Least Privilege: Access permissions strictly limited to required services (VPC, EC2, SSM).
- Authentication Model: Dedicated IAM User with programmatic Access Keys mapped to a Named Profile.
- Credential Storage: Zero hardcoded secrets in code; credentials stored solely in ~/.aws/credentials with 0600 permissions.
