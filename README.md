📦 EKS Cluster Deployment with Terraform – Project Summary

This project automates the deployment of an Amazon EKS (Elastic Kubernetes Service) cluster using Terraform. The infrastructure is designed with scalability and security in mind, leveraging multiple providers and a modular approach.
🔧 Key Components:

    Terraform is used as the Infrastructure as Code (IaC) tool to provision and manage resources.

    AWS Provider handles the creation of core infrastructure such as VPC, subnets, and EKS cluster.

    HELM Provider is used to deploy Helm charts into the Kubernetes cluster.

    Kubernetes Provider manages Kubernetes resources directly from Terraform.

🌐 Network Architecture:

    2 Public Subnets: Dedicated to the EKS control plane and load balancers.

    2 Private Subnets: Reserved for worker nodes to ensure secure internal communication.

🚀 Deployment Highlights:

    Fully automated provisioning of the EKS cluster.

    Integration with Helm for package management.

    Secure and isolated networking setup using public/private subnet segmentation.

    Modular and reusable Terraform codebase for easy maintenance and scalability.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.6.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 3.0.2 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.38.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_aws_load_balancer_controller"></a> [eks\_aws\_load\_balancer\_controller](#module\_eks\_aws\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_managed_node_group"></a> [eks\_managed\_node\_group](#module\_eks\_managed\_node\_group) | ./modules/managed-node-group | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | Node capacity type: ON\_DEMAND, SPOT, or CAPACITY\_BLOCK | `string` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR block for the VPC | `string` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | Instance type used for compute nodes | `list (string)` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project to tag AWS resources | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region where the resources will be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to apply to all AWS resources | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->