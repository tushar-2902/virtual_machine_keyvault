<h1 align="center">🌐 Terraform Azure Infrastructure 🚀</h1>

<p align="center">
A modular and production-ready Terraform project to provision complete Azure infrastructure including Virtual Network, Subnets, Key Vault, Virtual Machines, and Public IPs.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/IaC-Terraform-5C4EE5?logo=terraform&logoColor=white" />
  <img src="https://img.shields.io/badge/Cloud-Microsoft%20Azure-0078D4?logo=microsoft-azure&logoColor=white" />
  <img src="https://img.shields.io/badge/DevOps-CI%2FCD-blue" />
  <img src="https://img.shields.io/badge/Editor-VSCode-007ACC?logo=visual-studio-code" />
</p>

---

## 📂 Project Structure

```bash
KEY_VALUT/
├── azurerm_key_valut_screte/       # Key Vault Secret module
├── azurerm_key_vault/              # Key Vault resource module
├── azurerm_public_ip/              # Public IP module
├── azurerm_resource_group/         # Resource Group module
├── azurerm_subnet/                 # Subnet module
├── azurerm_virtual_machine/        # Virtual Machine module
├── azurerm_virtual_network/        # Virtual Network module
├── provider.tf                     # Azure provider
├── module.tf                       # All modules linked
└── .terraform/                     # Backend + Lock file
```

---

## ✨ Features

- ✅ Modular Terraform setup for scalable Azure deployment  
- ✅ Clean separation of infrastructure components  
- ✅ Reusable modules with input variables  
- ✅ CI/CD friendly architecture (GitHub Actions / Azure DevOps compatible)  
- ✅ Cloud-native, fast, and replicable deployments  

---

## 🚀 Tech Stack

- **Terraform**  
- **Microsoft Azure**  
- **Azure CLI**  
- **VS Code**

---

## 🏗️ Modules Included

| Module                    | Purpose                         |
|--------------------------|----------------------------------|
| `azurerm_resource_group` | Resource Group Creation          |
| `azurerm_virtual_network`| VNet setup                       |
| `azurerm_subnet`         | Subnets within VNet              |
| `azurerm_key_vault`      | Azure Key Vault setup            |
| `azurerm_key_valut_screte`| Secrets inside Key Vault       |
| `azurerm_virtual_machine`| Provision Linux VM              |
| `azurerm_public_ip`      | Static IP for VM                |

---

## 🔧 Usage

```bash
# Step 1: Initialize Terraform
terraform init

# Step 2: Validate Configuration
terraform validate

# Step 3: Apply Infrastructure
terraform apply
```

---

## 📘 Prerequisites

- ✅ Terraform >= 1.0.0  
- ✅ Azure CLI installed & logged in (`az login`)  
- ✅ Git installed  

---

## 📈 Optional: Infra Diagram

You can generate and add your architecture diagram here (via draw.io):

```md
![Infra Diagram](./assets/azure-infra-diagram.png)
```

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙋‍♂️ Author

> **Tushar Mishra**  
> 🔗 [GitHub](https://github.com/tushar-2902) | [LinkedIn](https://linkedin.com/in/tushar-mishra-devops)

---

> ⭐ If you like this project, give it a star — it motivates me!
