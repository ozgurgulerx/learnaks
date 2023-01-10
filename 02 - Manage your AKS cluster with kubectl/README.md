# kubectl 

kubectl is the CLI tool used to manage k8s clusters.
kubectl uses a configuration file stored in ~/.kube/config to store credentials to access your cluster.
...to get the correct credentials to to access your cluster you need to type in the following command...

```
az aks get-credentials \
--resource-group [rg-name] \
--name [akscluster-name]
```

You can then start using kubectl with your AKS cluster...

<img width="676" alt="2023-01-10 09 02 50 AM" src="https://user-images.githubusercontent.com/97877847/211473687-56d0bbba-a498-4f12-bf76-b3d60e248f35.png">

Then copy the application code with...\
```git clone https://github.com/Azure-Samples/azure-voting-app-redis.git```

Deploy the application with \
```kubectl create -f azure-vote-all-in-one-redis.yaml```

Verify the deployment with...\
```kubectl get pods```

<img width="684" alt="image" src="https://user-images.githubusercontent.com/97877847/211478709-7e766e27-a0f0-477f-9e51-29edc0263fe3.png">

To get the IP address of the load balancer which you can use to access the application use...
```kubectl get service azure-vote-front --watch```
<img width="826" alt="image" src="https://user-images.githubusercontent.com/97877847/211479137-2c5dbc4a-b90d-48d0-b52a-01b9d42b5803.png">

You will then be able to access the app using the LB IP address...
<img width="630" alt="image" src="https://user-images.githubusercontent.com/97877847/211479277-4be8fe07-b265-4824-b3ae-fc0c952ed0a6.png">

You can see all the details of your deployment with 
```kubectl get all```

<img width="887" alt="image" src="https://user-images.githubusercontent.com/97877847/211479560-8713e2ab-e1cc-4623-8ea7-457671a0f58a.png">

