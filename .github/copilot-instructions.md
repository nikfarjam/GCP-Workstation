---
description: 'Terraform Infrastructure-as-Code standards'
applyTo: '**/*.tf'
---

# Terraform Standards

## Project Structure
- Avoid using a single massive `main.tf`. Use descriptive names for resource files.
- Every module must include `main.tf`, `variables.tf`, and `outputs.tf` even if they are empty.

## Style and Naming
- Use underscores (`snake_case`) for all resource, output, and variable names.
- Do not include the resource type in the name (e.g., use `resource "aws_vpc" "main"` instead of `vpc_main`).
- Resource names should be descriptive and avoid "stuttering" (e.g., use `aws_vpc.main`, NOT `aws_vpc.main_vpc`).
- Prefer descriptive file names like `network.tf` or `database.tf` over a single generic `main.tf`.
- For single resources in a module, use the name `this` (e.g., `google_storage_bucket.this`).

## Resource Patterns
- **Dependencies**: Prefer implicit dependencies (referencing resource attributes) over explicit `depends_on` blocks whenever possible.
- **Tags**: Every taggable resource must include a `tags` block. Use a `local.common_tags` map.
- Required tags: `Environment`, `Project`, `Owner`, and `ManagedBy = "Terraform"`.

## Documentation
- Every `variable` and `output` block MUST include a `description` and `type`.
- Use `locals` to handle complex logic or repeated expressions to keep resource blocks clean.

## Best Practices
- Always use the latest stable version of Terraform and its providers.
- Always run `terraform fmt` and `terraform validate` logic before suggesting final snippets.
- Use `for_each` instead of `count` for resource collections when order should not matter.
- Always include `common_tags` on all taggable resources, referencing a local variable.
- - **Versions**: Always pin provider and module versions to specific minor or patch versions (e.g., `~> 5.0`).
- **Validation**: Include variable validation blocks for critical inputs like IP ranges or naming prefixes.

## Security
- Never hardcode secrets; always use variables or reference secret management data sources.
- Use `sensitive = true` for sensitive variables and fetch actual values from a secret manager.
- Ensure public access is disabled by default for storage (e.g., S3, Azure Storage).
