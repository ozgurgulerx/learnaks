# Create an AKS Cluster with Terraform

We will start with creating an AKS cluster with Terraform.

To start using terraform with Azure you need to ...
1. Create a service principal.

When you create your service principal with 
`az ad sp create-for-rbac --name principal_x --role Contributor --scopes /subscriptions/[your subscription ID]` \
You will get a response like the below...\
`{   \
  "appId": "35df0dc5-1067-40bc-8d55-bc64ef7dd209", \
  "displayName": "principal_x", \
  "password": "DuW8Q~qt9VPR~y6ClcPgQVGzGep1qtFOrd3SybHL",
  "tenant": "23b4b90a-b2c2-4ef9-9888-5af93b241573"
}`




2. Define  terraform service principal credentials in bash environment variables.





This is throughly explained in Ref 1. below. 
Once these are done you can move to Ref 2.

3. Create providers.tf and embed your terraform principal credentials into the file.
4. Create main.tf, variables.tf, outputs.tf as explained in the doc.

### References:
1. [Configure Terraform in Azure Cloud Shell with Bash](https://learn.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell-bash?tabs=bash)
2. [Quickstart: Create a Kubernetes cluster with Azure Kubernetes Service using Terraform](https://learn.microsoft.com/en-us/azure/developer/terraform/create-k8s-cluster-with-tf-and-aks)
