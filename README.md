# Azure Application Insights Terraform Module Repository

This repository contains Terraform modules for deploying Azure resources, specifically focusing on Azure Application Insights.

## Structure

The repository follows a standard Terraform project structure:

- `modules/`: Contains reusable Terraform modules.
- `examples/`: Contains usage examples for the modules.

## Modules

### Application Insights

Located in [`modules/application-insights`](./modules/application-insights).

This module creates an Azure Application Insights component. It supports workspace-based configuration via the `workspace_id` input, which is the recommended deployment method.

## Examples

The `examples/` directory contains examples of how to use the modules:

- [Basic Usage](./examples/basic_usage): Demonstrates how to create an Application Insights resource along with a Log Analytics Workspace.
- [Existing Workspace](./examples/existing_workspace): Demonstrates how to deploy Application Insights using an existing Log Analytics Workspace.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- An active Azure subscription

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone <repository_url>
   cd <repository_name>
   ```

2. **Navigate to an example:**
   Choose one of the examples to get started. For example, to run the basic usage example:
   ```bash
   cd examples/basic_usage
   ```

3. **Initialize Terraform:**
   Initialize the Terraform working directory to download the necessary providers and modules.
   ```bash
   terraform init
   ```

4. **Plan the deployment:**
   Review the resources that will be created.
   ```bash
   terraform plan
   ```

5. **Apply the configuration:**
   Apply the changes to create the resources in your Azure subscription.
   ```bash
   terraform apply
   ```

## Contributing

Contributions are welcome! Please ensure that any new modules or changes include appropriate documentation and examples.

## License

This project is licensed under the MIT License.
