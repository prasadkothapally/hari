# Reliability

Most of the business and technical components are deployed over kubernetes.
This gives us the following architectural benefits

 - Scale components UP and DOWN easily
 - Scale components vertically by increasing/decreasing available Memory and CPU
 - Scale components to occupy available compute infrastructure using the Horizontal Pod Autoscaler.
 - Scale compute infra automatically using the AWS node auto-scaler using node compute thresholds. This in turn allows the HPA to make use of additional compute available
 - Scale Pods (Node Autoscaler) and across 
 - Simplified and automated deployments using Helm
 - Automatic Recovery when components fail
 - Health-checks to prevent unhealthy components from serving requests and automatic recycling of the same.

