# Project 12: Infrastructure CI Trigger (Terraform Plan)

## Objective
Automate Terraform plan validation using GitHub Actions whenever changes are pushed to the repository.

## Technologies Used
- Terraform
- Git
- GitHub
- GitHub Actions
- YAML
- Linux

## Implementation

1. Created a Terraform configuration.
2. Created a GitHub Actions workflow.
3. Configured the pipeline to trigger on GitHub pushes.
4. Added Terraform formatting and validation checks.
5. Configured automatic Terraform plan generation.
6. Configured uploading the Terraform plan as a GitHub Actions artifact.

## CI Pipeline

The workflow performs the following operations:

1. Checkout repository.
2. Setup Terraform.
3. Terraform format check.
4. Terraform initialization.
5. Terraform validation.
6. Terraform plan generation.
7. Generate a readable plan.
8. Upload the Terraform plan artifact.

## Commands Used

```bash
terraform init -backend=false
terraform fmt
terraform validate
terraform plan -out=tfplan
terraform show -no-color tfplan
```

## Expected Result

The pipeline runs automatically when changes are pushed to GitHub and generates a downloadable Terraform plan artifact.

The example uses Terraform's built-in `terraform_data` resource and does not deploy real cloud infrastructure.

## Evidence

See the `screenshots/` directory for the successful pipeline screenshot.

## Conclusion

This project demonstrates how Terraform infrastructure plans can be automatically generated, validated, and stored as GitHub Actions artifacts using a CI pipeline.
