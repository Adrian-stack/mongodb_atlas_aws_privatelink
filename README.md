# Features

* Live controller that will separate environments and override attributes;
* Creates a MongoDB Atlas cluster with Privatelink; 
* Creates a two Lambda Functions "check_atlas", config_atlas;
* Creates a Step Function that will orchestrate Lambda Functions;
* Creates a Cloud Watch Event that will trigger the Step Function;
* Creates IAM Roles and Policies;

# Inputs

| Name        | Description            |  Type  | Default | Required |
| :---        |    :----:              |  :---: |  :---:  |      ---:|
| awsRegion   | Name of the AWS Region | string |   n/a   |   yes    |
| environment | Name of Environment    | string |   n/a   |   yes    |


# Preequisite

* Terraform v0.12.23
* aws credentials
* mongodb atlas credentials
