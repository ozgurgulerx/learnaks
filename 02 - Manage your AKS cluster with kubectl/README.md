# kubectl 

kubectl is the CLI tool used to manage k8s clusters.
kubectl uses a configuration file stored in ~/.kube/config to store credentials to access your cluster.
...to get the correct credentials to to access your cluster you need to type in the following command...

az aks get-credentials \
--resource-group rg-handsonaks \
--name handsonaks
