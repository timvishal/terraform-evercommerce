# terraform-evercommerce

This terraform configration creates all 17 log metrics that are required as per CIS.

Things To Do Before apply: 
```
1.  git clone git@github.com:timvishal/terraform-s3-state.git

2.  set variable  in `variables.tf` accordingly (for bucket name set SUBS-NAME = subsidiary Name )

3.  terraform init 

4.  terraform apply 

5.  git clone git@github.com:timvishal/terraform-s3-state.git

6.  Set varibles according to SUBS in `variables.tf`

7.  Set bucket = "terraform-state-SUBS-NAME in `provider.tf` same as in set 2 in backend section

8.  terraform init

9.  terraform get

10.  terraform apply -target module.terraform-aws-cloudwatch-metrics

```



