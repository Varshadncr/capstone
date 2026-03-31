# Snowflake Infrastructure Automation using Terraform

## Project Overview

This project demonstrates **Infrastructure as Code (IaC)** by provisioning and managing Snowflake resources using **Terraform**.

The goal is to automate the creation of Snowflake infrastructure, implement **Role-Based Access Control (RBAC)**, and support **multiple environments (Dev, QA, Prod)** using modular Terraform design.

This project simulates a **real-world Snowflake data platform setup** where infrastructure is managed through code instead of manual configuration.

---

# Architecture

The Terraform project provisions the following Snowflake resources:

* Virtual Warehouses
* Databases
* Schemas
* Tables
* Roles
* Role Grants
* User Role Assignments

Terraform modules are used to keep the code **reusable, clean, and maintainable**.

---

# Project Structure

```
capstone/
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
│
├── env/
│   ├── dev.tfvars
│   ├── qa.tfvars
│   └── prod.tfvars
│
├── modules/
│   ├── warehouse/
│   ├── database/
│   ├── schema/
│   ├── role/
│   ├── grants/
│   └── table/
│
├── screenshots.docx
└── README.md
```

---

# Modules Implemented

### Warehouse Module

Creates Snowflake virtual warehouses.

Example:

```
COMPUTE_WH
ANALYTICS_WH
```

---

### Database Module

Creates Snowflake databases.

Example:

```
SALES_DB
HR_DB
```

Environment-based database names:

```
DEV_SALES_DB
QA_SALES_DB
PROD_SALES_DB
```

---

### Schema Module

Creates schemas inside databases.

Example:

```
SALES_SCHEMA
HR_SCHEMA
```

---

### Role Module

Creates Snowflake roles.

Roles created:

```
SYSADMIN_CUSTOM
DATA_ENGINEER
DATA_ANALYST
```

---

### Grants Module

Assigns privileges such as:

* Warehouse usage
* Database access
* Schema privileges

Example:

```
DATA_ENGINEER → COMPUTE_WH
DATA_ANALYST → ANALYTICS_WH
```

---

### Table Module

Creates tables dynamically using Terraform `for_each`.

Example tables:

```
CUSTOMERS
ORDERS
PRODUCTS
EMPLOYEES
DEPARTMENTS
```

---

# Multi-Environment Support

The project supports multiple environments using `.tfvars` files.

Environments implemented:

```
dev
qa
prod
```

Example command:

```
terraform apply -var-file="env/dev.tfvars"
```

Each environment can have:

* Different warehouse sizes
* Different database names
* Controlled access levels

---

# Terraform Commands

Initialize Terraform:

```
terraform init
```

Validate configuration:

```
terraform validate
```

Preview infrastructure changes:

```
terraform plan -var-file="env/dev.tfvars"
```

Apply infrastructure:

```
terraform apply -var-file="env/dev.tfvars"
```

Destroy infrastructure:

```
terraform destroy -var-file="env/dev.tfvars"
```

---

# Security Best Practices

This project follows Terraform security best practices:

* Credentials are not hardcoded
* Input variables are used
* Modular infrastructure design
* Environment-based configuration

---

# Remote State (Note)

Remote backend configuration using AWS S3 was planned but could not be implemented due to restricted IAM access.

Terraform state is currently stored locally.

---

# Screenshots

Screenshots included in `screenshots.docx` demonstrate:

* Terraform execution (`init`, `plan`, `apply`)
* Snowflake warehouses
* Databases
* Schemas
* Tables
* Roles and grants

---

# Outcome

By completing this project, the following skills were demonstrated:

* Snowflake infrastructure automation
* Terraform modular design
* Role-Based Access Control implementation
* Multi-environment infrastructure deployment
* Infrastructure as Code best practices

---

# Technologies Used

* Terraform
* Snowflake
* AWS (S3 backend planned)
* Git

---

# Author

**Varsha Kulkarni**
Software Engineer |KIPI.AI | 2025 Graduate
First professional role in the tech industry
Location: Bagalkot, Karnataka, India

---

