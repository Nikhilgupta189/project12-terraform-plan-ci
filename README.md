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
## CI Pipeline Execution Results

The GitHub Actions workflow was successfully triggered by a push to the repository.

### Pipeline Validation

| Step | Result |
|---|---|
| Checkout Repository | Passed |
| Setup Terraform | Passed |
| Terraform Format Check | Passed |
| Terraform Initialization | Passed |
| Terraform Validation | Passed |
| Generate Terraform Plan | Passed |
| Create Readable Plan | Passed |
| Upload Terraform Plan Artifact | Passed |

### Artifact Details

**Artifact Name:** `terraform-plan-artifact`

**Generated Files:**
- `tfplan` — Terraform execution plan
- `plan.txt` — Human-readable Terraform plan

### Screenshots

**1. Successful Pipeline Execution**

![Pipeline Success](screenshots/01-terraform-plan-job-success.png)

**2. Terraform Plan Artifact**

![Terraform Plan Artifact](screenshots/02-terraform-plan-artifact.png)

### Conclusion

Successfully implemented an automated Terraform CI pipeline using GitHub Actions. The pipeline validates Terraform configuration, generates an execution plan, and uploads the plan as an artifact.
