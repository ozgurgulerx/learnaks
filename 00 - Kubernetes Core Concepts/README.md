# k8s Core Concepts 

## k8s Pod 
A Pod is the smallest unit of deploymet in k8s.
With k8s, a container is not simply deployed onto a worker node as it is. 
Container is encapsulated inside a k8s object called "Pod".
Each pod is meant to run a single instance of an application.

## k8s Deployment 


## k8s ReplicaSet 
A ReplicaSet (RS) is a k8s object used to maintain a stable set of replicated pods running within a cluster at any given time.

## ConfigMap 
ConfigMap is a k8s object that stores configuration information for pods out of the container itself.
You can then provide the configuration information to your applications by connecting the ConfigMap to your Deployment.

## Helm
Helm is a package manager for k8s that helps streamline the deployment process for complex applications.
