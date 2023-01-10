# Create an AKS Cluster with Terraform

We will start with creating an AKS cluster with Terraform.

To start using terraform with Azure you need to first create a service principal so that terraform does not run with admin rights within your account.\

1. Create a service principal.

Create your terraform service principal with \
`az ad sp create-for-rbac --name principal_x --role Contributor --scopes /subscriptions/[add your subscription ID]` \
You will get a response like the below...\
`{   
  "appId": "xxxx", 
  "displayName": "principal_x", 
  "password": "zzzzz",
  "tenant": "ttttt"
}`
Copy the output (service principal credentials) to be used for the following steps...

2. Define terraform service principal credentials in bash environment variables. \
(This is throughly explained in Ref 1. below.) 

It is important to correctly map the ouputs of "azure ad sp create" into bash environment variables and later into the prodivers block in providers.tf. \
Quick heads up for appID being mapped into clientID. \

export ARM_SUBSCRIPTION_ID="[subscription ID of your Azure account]" \
export ARM_TENANT_ID="tttt" \
export ARM_CLIENT_ID="xxxx" \
export ARM_CLIENT_SECRET="zzzz" 

Once these are done you can move to Ref 2 and follow steps 3, 4...

3. Create providers.tf and embed your terraform principal credentials into the file.

Add the following block at the bottom of the file...
provider "azurerm" {
  features {}

  subscription_id   = "[subcription ID of your Azure account]"
  tenant_id         = "tttt"
  client_id         = "xxxx"
  client_secret     = "zzzz"
}

4. Create main.tf, variables.tf, outputs.tf as explained in the doc.

5. Once everything is in place you can run terraform plan to create an execution plan.

`terraform plan -out main.tfplan` \
and finally run the execution plan to create your AKS cluster on Azure.\
`terraform apply main.tfplan` 


### References:
1. [Configure Terraform in Azure Cloud Shell with Bash](https://learn.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell-bash?tabs=bash)
2. [Quickstart: Create a Kubernetes cluster with Azure Kubernetes Service using Terraform](https://learn.microsoft.com/en-us/azure/developer/terraform/create-k8s-cluster-with-tf-and-aks)
