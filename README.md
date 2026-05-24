URL Shortener
A fully Dockerised URL shortening service built with Node.js, Express, MongoDB, and Nginx — deployed to AWS EC2 with an automated GitHub Actions CI/CD pipeline.

Built by Muhammad Hassan Adil as a portfolio project for Cloud Engineering.


Tech Stack

Node.js + Express.js
MongoDB
EJS Templating Engine
Nginx (Reverse Proxy)
Docker + Docker Compose
GitHub Actions (CI/CD)
AWS EC2


Features

Shorten any URL of your choice
Create your own custom short URL code
Timestamp for every URL
Archive page with a record of all shortened URLs
Click counter for every short link
Edit and Delete any URL
REST API endpoint for external applications


Project Architecture
Browser → Nginx (Port 80) → Node.js App (Port 3004) → MongoDB
All three services run as Docker containers orchestrated via Docker Compose.

Local Setup (Without Docker)

Clone the repo
cd url-shortener
npm install
Create a .env file with the following keys:

MONGOURI=mongodb://localhost:27017/urlshortener
BASEURL=http://127.0.0.1:3004

npm run dev
Open at http://127.0.0.1:3004


Local Setup (With Docker)

Clone the repo
Make sure Docker Desktop is running
Run:

docker-compose up --build

Open at http://localhost (served via Nginx on port 80)

No need to install Node or MongoDB locally — Docker handles everything.

CI/CD Pipeline
Every push to the main branch triggers a GitHub Actions workflow that:

SSHs into the AWS EC2 instance
Pulls the latest code from GitHub
Rebuilds and restarts all Docker containers automatically


Deployment
Live on AWS EC2 — link will be added after deployment.

About

Developer: Muhammad Hassan Adil
GitHub: https://github.com/hashhassan
LinkedIn: https://www.linkedin.com/in/hassan-adil-2a305837a/
Portfolio: https://d2pilg8gi06pkk.cloudfront.net/

Original Project

Base application cloned from Anantm007/url-shortener. All DevOps work — Docker, Nginx reverse proxy, and GitHub Actions CI/CD pipeline to AWS EC2 — added independently.