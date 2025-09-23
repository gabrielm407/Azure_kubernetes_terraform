# Terraform Azure Kubernetes Service Project

This project provisions an Azure Resource Group, a Virtual Network within that Resource Group, and an Azure Kubernetes Service (AKS) cluster in that Virtual Network using Terraform.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An Azure account with sufficient permissions to create resources.
- Azure CLI installed and configured. You can log in using `az login`.

## Project Structure

```
terraform-azure-k8s
├── modules
│   ├── resource_group
│   │   └── main.tf
│   ├── virtual_network
│   │   └── main.tf
│   └── kubernetes_cluster
│       └── main.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
└── README.md
```

## Getting Started

1. **Clone the repository:**

   ```bash
   git clone <repository-url>
   cd terraform-azure-k8s
   ```

2. **Initialize Terraform:**

   Run the following command to initialize the Terraform configuration:

   ```bash
   terraform init
   ```

3. **Plan the deployment:**

   To see what resources will be created, run:

   ```bash
   terraform plan
   ```

4. **Apply the configuration:**

   To create the resources defined in the configuration, run:

   ```bash
   terraform apply
   ```

   Confirm the action when prompted.

## Outputs

After the deployment is complete, you will see output values such as the Resource Group name, Virtual Network ID, and AKS cluster details.

## Cleanup

To remove all resources created by this project, run:

```bash
terraform destroy
```

## Notes

- Ensure that you have the necessary permissions in your Azure account to create the resources defined in this project.
- Modify the `variables.tf` file to customize the resource names and configurations as needed.