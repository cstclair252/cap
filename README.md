# cap
Udacity Capstone- Cloud DevOps

## Project Overview
This project uses a NGINX Docker image. builds a website. uploads the docker image to docker hub. Builds a Kubernetes cluster on AWS which will have a blue/green deployment structure for updating.  creates smoke test as well to make sure the website is working properly after deployment.  the Green/Blue migration is handled through Cloudfront pointing to the ELB external IP address for the newly created cluster. 


## Introduction
This project is aimed at deploying a website using NGINX as a Docker image and configuring the necessary infrastructure using AWS services. The project utilizes CI/CD tools and follows a series of tasks to automate the deployment process.

## Project Tasks
* Lint Dockerfile: This task ensures that the Dockerfile used for building the NGINX image follows best practices by using the hadolint tool.

* Build and Push Docker Image: This task builds the Docker image for the website and pushes it to Docker Hub.*

* Deploy Infrastructure: This task sets up the Kubernetes cluster using Amazon EKS and deploys the necessary resources for the website.

* Configure Infrastructure: This task installs dependencies, sets up the Kubernetes cluster, and deploys the Docker image into the cluster.

* Configure CloudFront: This task configures CloudFront for the website, allowing for improved content delivery and caching.

* Update Test: This task retrieves the domain name for the deployed website and performs any necessary updates or tests.

* Setup CloudFront: This task sets up CloudFront for the first time, associating it with the deployed website.

* Smoke Test: This task performs a smoke test to ensure that the website is successfully deployed and accessible.

## CI/CD Tools Used
The project utilizes CircleCI for continuous integration and continuous deployment. The following CI/CD tools are used in the project:

[CircleCI:](https://circleci.com/) A CI/CD platform for automating software builds, tests, and deployments.

## CircleCI Variables
The following CircleCI environment variables are used in the project:
* AWS_ACCESS_KEY_ID: aws user access key IAM Profile
* AWS_DEFAULT_REGION: default region for aws authentication.
* AWS_SECRET_ACCESS_KEY: the secret key for aws authentication.
* DOCKERHUB_USERNAME: The username for Docker Hub authentication.
* DOCKERHUB_PASSWORD: The password for Docker Hub authentication.

## Docker Image - NGINX
The project utilizes the [NGINX Docker image](https://hub.docker.com/_/nginx) to create the website. NGINX is a popular web server that can also act as a reverse proxy, load balancer, and caching server. The NGINX Docker image is pulled and used to build the Docker image for the website.

## Cloud Services
[Amazon AWS:](https://aws.amazon.com/) Amazon Web Services (AWS) is a comprehensive cloud computing platform provided by Amazon. It offers a wide range of services, including computing power, storage, databases, analytics, networking, machine learning, and more.

[AWS EKS:](https://aws.amazon.com/eks/)Amazon Elastic Kubernetes Service (EKS) is a fully managed Kubernetes service provided by AWS. It simplifies the process of deploying, managing, and scaling containerized applications using Kubernetes.

[AWS eksctl:](https://aws.amazon.com/eks/eksctl/) eksctl is a command-line utility provided by AWS to create, manage, and operate Kubernetes clusters on EKS. It enables users to easily set up and configure EKS clusters with just a few commands.

[AWS CLI:](https://aws.amazon.com/cli/) The AWS Command Line Interface (CLI) is a unified tool provided by AWS for managing various AWS services from the command line. It allows users to interact with AWS resources, automate tasks, and build scripts or applications that utilize AWS services.

[CloudFormation:](https://aws.amazon.com/cloudformation/) AWS CloudFormation is a service that helps you create and manage AWS infrastructure resources in a declarative manner. It allows you to define your infrastructure as code using templates and automatically provisions and configures the resources defined in the template.

[CloudFront:](https://aws.amazon.com/cloudfront/) Amazon CloudFront is a content delivery network (CDN) provided by AWS. It securely delivers data, videos, applications, and APIs to users globally with low latency and high transfer speeds. CloudFront helps improve the performance, scalability, and reliability of your web applications.

[kubectl:](https://kubernetes.io/docs/reference/kubectl/overview/) kubectl is the command-line tool for interacting with Kubernetes clusters. It allows users to deploy and manage applications, inspect and modify cluster resources, view logs, and execute commands in Kubernetes pods.

[Docker Hub:](https://hub.docker.com/) Docker Hub is a cloud-based repository provided by Docker that allows users to store and distribute Docker container images. It serves as a central hub for sharing and collaborating on container-based applications and provides easy access to a vast library of pre-built Docker images.




## Main Files
The following main files are used in the project:

* config.yml: The CircleCI configuration file that defines the CI/CD pipeline and job configurations.
* Dockerfile: The Dockerfile used to build the Docker image for the website.
* ELBCreate.yml: The YAML file defining the Elastic Load Balancer (ELB) creation for the Kubernetes cluster.
* deployment.yml: The YAML file defining the deployment configuration for the website.
* distribution-config.json: This file is used to rename the originname for Cloudfront distribution.
