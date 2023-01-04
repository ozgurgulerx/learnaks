# LEARN-AKS 
This project is to help newcomers learn AKS with "deliberate practice".


Microservices architecture is common when developing distributed systems.
A microservices application consists of a group of services that work together to form an application, while the individual services themselves can be built, tested, deployed, and scaled independently of each other. Those services work together over a network , commonly using HTTP REST APIs or gRPC.
Each service can be written in a different programming language (a "polyglot" application) hence the most suitable language can be chosen for each service.
Such an architecture is commonly deployed on containers and with a container orchestrator -Kubernetes.
AKS is Azure's managed service for Kubernetes.

Deployment Strategies (e.g. Blue / Green deployments, Rolling upgrades)

## Exposing AKS Services 
Within AKS, services running on Kubernetes are integrated with Azure Load Balancer (L4 LB) and Kubernetes Ingresses can be integrated with Azure Application Gateway (L7 LB).

## AKS Integration with RBAC and AD
RBAC defines which users can access to which resources and what actions they can take on them.
##AKS Integration with Azure Monitor 
