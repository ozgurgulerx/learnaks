# Create an AKS Cluster with Terraform

We will start with creating an AKS cluster with Terraform.

To start using terraform with Azure you need to ...
1. Create a service principal.

When you create your service principal with \
`az ad sp create-for-rbac --name principal_x --role Contributor --scopes /subscriptions/[add your subscription ID]` \
You will get a response like the below...\
`{   
  "appId": "xxxx", 
  "displayName": "principal_x", 
  "password": "zzzzz",
  "tenant": "ttttt"
}`


2. Define  terraform service principal credentials in bash environment variables. \
This is throughly explained in Ref 1. below. 


It is important to correctly map the ouputs of "azure ad sp create" into bash environment variables and later into the prodivers block in providers.tf. \
Quick heads up for  appID being mapped into  clientID. \

export ARM_SUBSCRIPTION_ID="[subscription ID of your account]" \
export ARM_TENANT_ID="tttt" \
export ARM_CLIENT_ID="xxxx" \
export ARM_CLIENT_SECRET="zzzzz" \

Once these are done you can move to Ref 2 and follow steps 3, 4...\

3. Create providers.tf and embed your terraform principal credentials into the file.\
4. Create main.tf, variables.tf, outputs.tf as explained in the doc.\
5. Once everything is in place you can run terraform plan to create an execution plan.\

'terraform plan -out main.tfplan'



### References:
1. [Configure Terraform in Azure Cloud Shell with Bash](https://learn.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell-bash?tabs=bash)
2. [Quickstart: Create a Kubernetes cluster with Azure Kubernetes Service using Terraform](https://learn.microsoft.com/en-us/azure/developer/terraform/create-k8s-cluster-with-tf-and-aks)
