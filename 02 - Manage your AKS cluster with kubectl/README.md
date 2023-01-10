# kubectl 

kubectl is the CLI tool used to manage k8s clusters.
kubectl uses a configuration file stored in ~/.kube/config to store credentials to access your cluster.
...to get the correct credentials to to access your cluster you need to type in the following command...

az aks get-credentials \
--resource-group [rg-name] \
--name [akscluster-name]

You can then start using kubectl with your AKS cluster...


<img width="709" alt="Screenshot 2023-01-10 at 08 56 30" src="https://user-images.githubusercontent.com/97877847/211472808-578bfa3c-d538-44f8-af5a-70d866dda886.png">
