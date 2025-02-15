# AWS CI/CD Project

This repository demonstrates the implementation of a Continuous Integration and Continuous Deployment (CI/CD) pipeline using Amazon Web Services (AWS). The project focuses on automating the deployment of a Machine Learning (ML) application, ensuring efficient and reliable updates.

## Project Overview

The primary goal of this project is to set up a CI/CD pipeline that automates the process of building, testing, and deploying an ML application. By leveraging AWS services, the pipeline ensures that any changes to the codebase are seamlessly integrated and deployed without manual intervention.

## Repository Structure

- `.github/workflows/` - Contains GitHub Actions workflow files for automating CI/CD processes.
- `data/` - Directory for storing datasets used by the ML application.
- `notebook/` - Jupyter notebooks for data exploration and model development.
- `src/` - Source code of the ML application.
- `templates/` - HTML templates for the web interface of the application.
- `Dockerfile` - Defines the Docker image for the application.
- `app.py` - The main Flask application file.
- `requirements.txt` - Lists the Python dependencies.
- `setup.py` - Script for packaging the application.

## Getting Started

To get a local copy of this project up and running, follow these steps:

### Prerequisites

- **Python 3.8+** - Ensure Python is installed on your machine.
- **Docker** - Required for containerizing the application.
- **AWS Account** - Necessary for deploying services on AWS.
- **GitHub Account** - For accessing the repository and setting up GitHub Actions.

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/muhammedfayiz122/AWS_CI_CD_project.git
   cd AWS_CI_CD_project
   ```

2. **Install Dependencies**:
   Create a virtual environment and install the required packages:
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
   pip install -r requirements.txt
   ```

3. **Set Up AWS Credentials**:
   Configure your AWS CLI with the necessary credentials:
   ```bash
   aws configure
   ```

4. **Build and Run Docker Container**:
   ```bash
   docker build -t ml-app .
   docker run -p 5000:5000 ml-app
   ```

   The application should now be accessible at `http://localhost:5000`.

## CI/CD Pipeline

The project utilizes GitHub Actions for CI/CD. The workflow is defined in `.github/workflows/main.yaml` and includes the following steps:

1. **Trigger** - Initiated on a push to the `main` branch.
2. **AWS Credentials Configuration** - Sets up AWS credentials using secrets stored in GitHub.
3. **Docker Build and Push** - Builds the Docker image and pushes it to Amazon Elastic Container Registry (ECR).
4. **Deployment** - (Optional) If integrating with Amazon Elastic Container Service (ECS), the workflow updates the ECS service with the new image.

### Setting Up GitHub Secrets

To securely store sensitive information, add the following secrets to your GitHub repository:

- `AWS_ACCESS_KEY_ID` - Your AWS access key ID.
- `AWS_SECRET_ACCESS_KEY` - Your AWS secret access key.
- `AWS_REGION` - The AWS region (e.g., `us-east-1`).
- `ECR_REPOSITORY_NAME` - The name of your ECR repository.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

