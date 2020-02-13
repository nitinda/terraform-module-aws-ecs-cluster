# _Terraform Module: terraform-module-aws-ecs-cluster_


## _General_

_This module can be used to deploy a_ _**ECS Cluster** on AWS Cloud Provider......_


---

## _Prerequisites_

_This module needs **Terraform 0.12.18** or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).



---

## _Features Branches_

_Below we are able to check the resources that are being created as part of this module call:_

- _**ECS Cluster**_



---

## _Usage_

## _Using this repo_


_To use this module, add the following call to your code:_


* **_Example without optional variables_**

```tf
module "ecs_cluster" {
  source = "git::https://github.com/nitinda/terraform-module-aws-ecs-cluster.git?ref=terraform-12/master"

  providers = {
    aws = aws.services
  }

  name = "ecs-cluster"

  # Tags
  tags = {
      Project      = "POC"
      Environment  = "prod"
  }
}
```


* **_Example with optional variables_**

```tf
module "ecs_cluster" {
  source = "git::https://github.com/nitinda/terraform-module-aws-ecs-cluster.git?ref=terraform-12/master"

  providers = {
    aws = aws.services
  }

  name                               = "ecs-cluster"
  capacity_providers                 = []              ## Valid values also include FARGATE and FARGATE_SPOT
  default_capacity_provider_strategy = []
  setting                            = [
     {
       name  = "containerInsights"
       value = "disabled"
     }
  ]

  # Tags
  tags = {
      Project      = "POC"
      Environment  = "prod"
  }
}
```

---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** |
|:----|:----|-----:|:---:|
| **_tags_** | _Resource tags_ | _map(string)_ | **_Required_** |
| **_name_** | _The name of the cluster_ | _string_ | **_Required_** |
| **_capacity\_providers_** | _List of short names of one or more capacity providers to associate with the cluster_ | _list(string)_ | **_Optional_** |
| **_default\_capacity\_provider\_strategy_** | _The capacity provider strategy to use by default for the cluster_ | _any_ | **_Optional_** |
| **_setting_** | _Configuration block(s) with cluster settings._ | _any_ | **_Optional_** |


---


## _Outputs_

### _General_

_This module has the following outputs:_

* **_id_**
* **_arn_**


### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_


```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```
---



## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**