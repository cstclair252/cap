# cap
Udacity Capstone- Cloud DevOpss
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/cstclair252/cap/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/cstclair252/cap/tree/main)

this project uses a NGINX Docker image. builds a website. uploads the docker image to docker hub. Builds a Kubernetes cluster on AWS which will have a blue/green deployment structure for updating.  creates smoke test as well to make sure the website is working properly after deployment.  the Green/Blue migration is handled through Cloudfront pointing to the ELB external IP address for the newly created cluster. 
