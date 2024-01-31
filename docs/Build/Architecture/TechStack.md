# Stack

This page describes all the tools and technologies utilized for buiding the AllFunds application.

## Engineering Stack

Aspect                | Technology
----------------------|------------
Version Control       | GitLab (powered by techwave's gitlab instance) 
Backend CI/CD         | GitLab
Build                 | Maven
Code Coverage         | SonarQube
API Automation        | Karate
Perf. Automation      | K6
Documentation         | MkDocs
Diagrams as code      | Kroki, Mermaid, PlantUML
Diagrams              | Draw.io
Docker                | Docker Desktop (windows), Docker Engine (linux)
Kubernetes            | Docker Desktop (windows), Minikube (linux), EKS (aws cloud)
Kubernetes tools      | kubectl, helm, helm-dashboard
Java Artifact store   | Reposilite
Container Registry    | GitLab CR
Helm Package Registry | GitLab Package Registry
Infrastructure as Code| OpenTofu



## Mobile App Engineering Stack

Aspect                | Technology
----------------------|------------
App CI/CD             | Fastlane
App BetaStore         | Firebase AppTester
Build                 | Gradle

## Application Backend Stack

Aspect                | Technology
----------------------|------------
Cloud                 | AWS
Preferred Language    | Java
Alternate Language    | Python to support analytics use cases and Golang for performance for niche components
MongoDB               | Scalable read / write data store for all end user facing use cases
Postgres              | OLTP data store for all transactional data and batch processing needs such as Accounting 
Java frameworks       | Quarkus + SpringBoot
Native builds         | Quarkus + Mandrel for low resource footprint and quick startup
Security              | 

## Mobile Application Stack

Aspect                | Technology
----------------------|------------
Language/Framework    | React Native

## Web Application Stack

Aspect                | Technology
----------------------|------------
Language/Framework    | ReactJS
