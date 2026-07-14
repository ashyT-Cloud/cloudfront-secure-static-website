# 🚀 Secure Static Website Hosting on AWS using Terraform, Amazon S3 & CloudFront

> A production-inspired DevOps project demonstrating secure static website hosting using **Terraform**, **Amazon S3**, **Amazon CloudFront**, **Origin Access Control (OAC)**, and **GitHub Actions CI/CD**.

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=githubactions)
![License](https://img.shields.io/badge/License-MIT-green)

---

# 📌 Project Overview

This project demonstrates how to securely host a static website on AWS following modern cloud security and DevOps best practices.

Instead of making the Amazon S3 bucket public, the website is served through **Amazon CloudFront** using **Origin Access Control (OAC)**. Infrastructure is provisioned using **Terraform**, while **GitHub Actions** automates validation and deployment.

This repository was built as a portfolio project to demonstrate Infrastructure as Code (IaC), CI/CD automation, AWS cloud services, and secure architecture design.

---

# 🏗️ Architecture

![Architecture](website/assets/images/architecture.png)

### Architecture Flow

```
User
   │
 HTTPS
   │
   ▼
Amazon CloudFront
   │
Origin Access Control (OAC)
   │
   ▼
Private Amazon S3 Bucket
```

Terraform provisions and manages the infrastructure while using:

- Amazon S3 for Remote Terraform State
- Amazon DynamoDB for State Locking

---

# ✨ Features

- Secure Static Website Hosting
- Private Amazon S3 Bucket
- Amazon CloudFront Distribution
- Origin Access Control (OAC)
- HTTPS Content Delivery
- Infrastructure as Code with Terraform
- Remote Terraform State
- DynamoDB State Locking
- GitHub Actions CI Pipeline
- Automated Website Deployment
- CloudFront Cache Invalidation
- Version Controlled Infrastructure
- Production-inspired Repository Structure

---

# ☁️ AWS Services Used

- Amazon S3
- Amazon CloudFront
- Origin Access Control (OAC)
- AWS IAM
- Amazon DynamoDB

---

# 🛠️ Technologies Used

- Terraform
- AWS CLI
- Git
- GitHub
- GitHub Actions
- HTML5
- CSS3
- JavaScript

---

# 📁 Repository Structure

```
.
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── bootstrap/
│   └── backend/
│
├── terraform/
│   ├── backend.tf
│   ├── bucket-policy.tf
│   ├── cloudfront.tf
│   ├── outputs.tf
│   ├── providers.tf
│   ├── s3.tf
│   ├── variables.tf
│   └── versions.tf
│
├── website/
│   ├── assets/
│   ├── css/
│   ├── js/
│   └── index.html
│
├── docs/
│   ├── architecture/
│   ├── screenshots/
│   └── decisions.md
│
└── README.md
```

---

# 🔐 Security Best Practices

✔ Amazon S3 Block Public Access enabled

✔ Private S3 Bucket

✔ CloudFront Origin Access Control (OAC)

✔ Infrastructure managed using Terraform

✔ Terraform Remote Backend

✔ DynamoDB State Locking

✔ IAM User for GitHub Actions Deployment

✔ GitHub Repository Secrets for AWS Credentials

---

# ⚙️ Infrastructure Provisioned

Terraform provisions the following AWS resources:

- S3 Bucket (Website)
- S3 Bucket Versioning
- Public Access Block
- Bucket Policy
- CloudFront Distribution
- Origin Access Control
- Remote State Bucket
- DynamoDB Lock Table

---

# 🚀 CI/CD Pipeline

The deployment pipeline is powered by **GitHub Actions**.

## Workflow

```
Developer
     │
git push
     │
     ▼
GitHub Actions
     │
     ├── Checkout Repository
     ├── Terraform Format Check
     ├── Terraform Validate
     ├── Validate Website Files
     ├── Upload Website to Amazon S3
     └── CloudFront Cache Invalidation
```

---

# 📷 Screenshots

## Home Page

![Home](docs/screenshots/home-page.png)

---

## Amazon CloudFront

![CloudFront](docs/screenshots/cloudfront.png)

CloudFront securely delivers website content over HTTPS using Origin access Control (OAC).

---

## GitHub Actions

![GitHub Actions](docs/screenshots/github-actions.png)

The CI/CD pipeline validates Terraform, uploads the website to Amazon S3, and invalidates the Cloudfront cache automatically after every push to the main branch.
---

## Terraform Apply

![Terraform](docs/screenshots/terraform-apply.png)

---

## 📊 Project Highlights

- Infrastructure as Code with Terraform
- Secure Static Website Hosting on AWS
- Private Amazon S3 Bucket
- Amazon CloudFront with Origin Access Control (OAC)
- Remote Terraform Backend (S3 + DynamoDB)
- Automated CI/CD with GitHub Actions

---

# 🧩 Key Challenges & Solutions

| Challenge | Solution |
|-----------|----------|
| AWS account verification blocked CloudFront creation | Waited for AWS account verification and resumed deployment |
| CloudFront returned Access Denied | Uploaded website content to the private S3 bucket and verified Origin Access Control (OAC) |
| Workflow file placed in the wrong directory | Moved the workflow to `.github/workflows` |
| Git commits made on the wrong branch | Reviewed the branch history and completed the release work on `main` |
| Terraform backend warning | Kept the current implementation and documented the newer `use_lockfile` approach for future enhancement |

---

# 📚 Learning Outcomes

This project strengthened my practical understanding of AWS cloud services, Infrastructure as Code, secure static website hosting, CI/CD automation, Git workflows, and production-inspired DevOps practices.

---

# 🔮 Future Improvements

- Route 53 Integration
- Custom Domain
- AWS Certificate Manager (ACM)
- GitHub OIDC Authentication
- AWS WAF
- CloudFront Logging
- S3 Access Logging
- CloudWatch Monitoring
- Terraform Modules
- Multi-Environment Deployment (Dev/Stage/Prod)

---

# 💡 What I Learned

Building this project gave me hands-on experience with:

- Designing secure AWS architectures using Amazon S3 and CloudFront
- Implementing Infrastructure as Code using Terraform
- Managing remote Terraform state with Amazon S3 and DynamoDB
- Building CI/CD pipelines using GitHub Actions
- Troubleshooting real-world deployment issues
- Applying Git branching strategies and version control best practices



# 👨‍💻 Author

**Ashish Thakur**

Aspiring DevOps & Cloud Engineer

Skills:
AWS • Terraform • Docker • Kubernetes • Git • GitHub Actions • Linux

GitHub: https://github.com/ashyT-Cloud

---

# ⭐ If you found this project helpful, consider giving it a Star!
