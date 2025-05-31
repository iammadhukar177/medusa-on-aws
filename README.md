# 🛒 Medusa Backend Deployment on AWS ECS Fargate (IaC with Terraform + CI/CD)

This project automates the deployment of the [Medusa](https://medusajs.com/) headless commerce backend using:

- 🧱 **Terraform** to provision AWS infrastructure (VPC, ECS, ECR, IAM, Security Groups)
- 🐳 **Docker** to containerize the Medusa backend
- 🚀 **AWS ECS with Fargate** to run the container without managing servers
- ⚙️ **GitHub Actions** for CI/CD to build and deploy the app on every push

---

## 🗂️ Project Structure

```
.
├── .github/workflows/ci-cd.yml       # CI/CD workflow
├── docker/Dockerfile                 # Dockerfile for Medusa backend
├── terraform/
│   ├── main.tf                       # Terraform provider and modules
│   ├── variables.tf                  # Variable declarations
│   ├── outputs.tf                    # Output values
│   ├── ecs.tf                        # ECS cluster, task, service
│   ├── iam.tf                        # IAM roles and policies
│   └── ecr.tf                        # ECR repository
├── .env                              # Medusa environment variables
└── README.md
```

---

## 🚀 Deployment Steps

### ✅ 1. Prerequisites

- AWS Account with programmatic access
- GitHub account with a new repo
- Terraform installed
- Docker installed

---

### ⚙️ 2. Set Up Environment

```bash
cd terraform/
terraform init
terraform apply
```

---

### 🐳 3. Build and Push Docker Image (CI/CD via GitHub Actions)

On every `git push`, GitHub Actions will:
1. Build Docker image
2. Push to Amazon ECR
3. Force new ECS service deployment

---

### 🔐 4. Set GitHub Secrets

| Name                     | Value                |
|--------------------------|----------------------|
| `AWS_ACCESS_KEY_ID`      | Your AWS access key  |
| `AWS_SECRET_ACCESS_KEY`  | Your AWS secret key  |

---

### 🌐 5. Access the Medusa Backend

After deployment, go to your ECS service and get the public IP or DNS. Access the backend:

```bash
http://<ECS-Public-IP>:9000
```

---

## 🧪 Local Development (Optional)

```bash
docker build -t medusa-local -f docker/Dockerfile .
docker run -p 9000:9000 --env-file .env medusa-local
```

---

## 🎥 Video Demo

📹 Upload a video to YouTube showing:
- Your face and voice explaining the setup
- Terraform provisioning
- GitHub Actions CI/CD in action
- ECS service running Medusa backend

---

## 📦 Technologies Used

- **Terraform**
- **AWS ECS Fargate**
- **Amazon ECR**
- **GitHub Actions**
- **Docker**
- **Medusa.js**

---

## 📄 License

MIT License. Free to use and modify.

---

## 🙋‍♂️ Author

**MADHUKAR SAMMETA**  
Full Stack Developer & DevOps Engineer  
[GitHub](https://github.com/iammadhukar177) | [LinkedIn](https://linkedin.com/in/madhukarsammeta)
