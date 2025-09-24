# Terraform Azure Kubernetes Service Project

> **Prerequisite:**  
> If you do not have an Azure subscription, follow the instructions here to set one up: [Create an Azure account](https://learn.microsoft.com/en-us/dotnet/azure/create-azure-account).

This project provisions an Azure Resource Group, a Virtual Network within that Resource Group, and an Azure Kubernetes Service (AKS) cluster in that Virtual Network using Terraform.

## Prerequisites

### Terraform CLI Installation (Windows)

1. **Download the Terraform Executable**
   - Go to the [Terraform downloads page](https://www.terraform.io/downloads.html).
   - Download the Windows version (usually amd64 for 64-bit).
   - Unzip the file to get `terraform.exe`.

2. **Place the Executable in a Permanent Location**
   - Create a folder such as `C:\tools\terraform`.
   - Move `terraform.exe` to this folder.

3. **Add the Folder to Your System's PATH**
   - Open the Start Menu, search for "Environment Variables".
   - Select "Edit the system environment variables".
   - Click "Environment Variables...".
   - In "System variables", find "Path" and click "Edit...".
   - Click "New" and add `C:\tools\terraform`.
   - Click OK to save.

4. **Verify the Installation**
   - Close and reopen your terminal (e.g., Git Bash).
   - Run:
     ```bash
     terraform -v
     ```
   - You should see the installed Terraform version.

### Azure CLI Installation

#### On Windows
1. Download the [Azure CLI MSI installer](https://aka.ms/installazurecliwindows).
2. Run the installer and follow the prompts.
3. Verify installation:
   ```bash
   az --version
   ```

#### On macOS
1. Install Homebrew (if needed):
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Install Azure CLI:
   ```bash
   brew install azure-cli
   ```
3. Verify installation:
   ```bash
   az --version
   ```

#### On Linux
- **Debian/Ubuntu:**
  ```bash
  curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
  ```
- **RHEL/CentOS Stream:**
  ```bash
  sudo dnf install -y https://packages.microsoft.com/config/rhel/9/packages-microsoft-prod.rpm
  sudo dnf install azure-cli
  ```
- **SLES/OpenSUSE:**
  ```bash
  sudo zypper install -y azure-cli
  ```
- Verify installation:
  ```bash
  az --version
  ```

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd terraform-azure-k8s
   ```

2. **Login to Azure:**
   ```bash
   az login
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Plan the deployment:**
   ```bash
   terraform plan
   ```

   4.a **(Optional) Pass variables at runtime:**  
   You can override variable values when running `terraform plan` using the `-var` or `-var-file` options:
   - Pass variables directly:
     ```bash
     terraform plan -var="resource_group_name=my-rg" -var="location=eastus"
     ```
   - Use a variable file:
     ```bash
     terraform plan -var-file="terraform.tfvars"
     ```

5. **Apply the configuration:**
   ```bash
   terraform apply
   ```
   Confirm the action when prompted.

## Outputs

After deployment, you will see output values such as the Resource Group name, Virtual Network ID, and AKS cluster details.

## Cleanup

To remove all resources created by this project, run:
```bash
terraform destroy
```

## Notes

- Ensure you have the necessary permissions in your Azure account to create resources.
- Modify the `variables.tf` file to customize resource names and configurations as needed.