# HCL Modular Standards & Variable Specification

## Core Development Rules
- Zero Hardcoding: Regions, CIDR blocks, and names must be passed via variables.
- Explicit Typing: Every variable declaration must enforce type constraints (string, list, map).
- Mandatory Descriptions: All variables must have human-readable description metadata.
- DRY Principle: Infrastructure components must remain reusable across environments.
