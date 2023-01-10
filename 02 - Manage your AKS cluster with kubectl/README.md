# kubectl 

kubectl is the CLI tool used to manage k8s clusters.
kubectl uses a configuration file stored in ~/.kube/config to store credentials to access your cluster.
...to get the correct credentials to to access your cluster you need to type in the following command...

az aks get-credentials \
--resource-group [rg-name] \
--name [akscluster-name]

You can then start using kubectl with your AKS cluster...

<img width="676" alt="2023-01-10 09 02 50 AM" src="https://user-images.githubusercontent.com/97877847/211473687-56d0bbba-a498-4f12-bf76-b3d60e248f35.png">
