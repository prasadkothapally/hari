# Home

The AllFunds architecture embodies the following principles.

 - Container first [Approach]( https://www.docker.com/blog/5-benefits-of-a-container-first-approach-to-software-development/)
 - Simple and out of the box scaling. No single point of failure.
 - xaC or [Everything as code](https://www.techtarget.com/searchitoperations/tip/What-it-means-to-do-everything-as-code-in-IT-operations)
 - Very high adoption of automation in all aspects of the build.
 - Simplified and predictable deployments
 - Promote Microservice adoption
 - Utilise 12-factor principles in building the application components

## Stack at a glance 

### Engineering Stack

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
IDE                   | NetBeans

### App Engineering Stack

Aspect                | Technology
----------------------|------------
App CI/CD             | Fastlane
App BetaStore         | Firebase AppTester
Build                 | Gradle

## Application Stack

Cloud                 | AWS
Preferred Language    | Java
Alternate Language    | Python to support analytics use cases and Golang for performance for niche components
MongoDB               | Scalable read / write data store for all end user facing use cases
Postgres              | OLTP data store for all transactional data and batch processing needs such as Accounting 
Java frameworks       | Quarkus + SpringBoot
Native builds         | Quarkus + Mandrel for low resource footprint and quick startup
Security              | 

 