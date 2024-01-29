# Reliability

Almost all of the business and technical components are deployed over kubernetes.
Some of the Kubernetes features that we use are

 - Simplified scaling
   - Scale components vertically by increasing/decreasing available Memory and CPU
   - Scale components up and down automaticaly based on load using the Horizontal Pod Autoscaler.
   - Scale compute infra automatically using the AWS node auto-scaler using node compute thresholds. This in turn allows the HPA to make use of additional compute available
   - Scale Pods (Node Autoscaler) and across 
 - Simplified deployment
  - Automated deployments and upgrades using Helm
  - Component configuration via ConfigMaps and Secrets
 - Simplified Reliability
   - Automatic Recovery when components fail
   - Health-checks to prevent unhealthy components from serving requests and automatic recycling of the same.
   - Built-in load balancing

