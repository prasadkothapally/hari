# Overview

This page presents an overview of our development environment.

## Infrastructure

Following on-premise infrastructure is available in DEV environment


## Build Server

The build server is responsible for executing CI/CD pipelines and also housing development tools such as Reposilite, SonarQube etc.

Aspect   | Remarks
---------|-------------------
hostname | TWDSDL-0973
OS       | Ubuntu 22.04.2 LTS
IPAddress| 172.16.8.234
CPU      | 12 CPU
RAM      | 32 GB
	 
## Compute Server

The compute server hosts all our application components

Aspect   | Remarks
---------|-------------------
hostname | TWDSDL-1002
OS       | Ubuntu 20.04.2 LTS
IPAddress| 172.16.22.22
CPU      | 12 CPU
RAM      | 32 GB

	 
## Data Server

The data server hosts all our data

Aspect   | Remarks
---------|-------------------
hostname | twinh-des-0977
OS       | Ubuntu 20.04.6 LTS
IPAddress| 172.16.22.16
CPU      | 12 CPU
RAM      | 16 GB

## Topology

This section describes the topology of the Compute and Data servers.

![Fintrust Developmnent Enviroment](./fintrust-development-enviornment.jpg)

