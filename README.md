# Architecture-diagram



![architecture-diagram](https://user-images.githubusercontent.com/55548241/190910868-b525da58-3265-4d15-9175-f3bd6d5df843.png)

# Terraform structure
```
  .
  └── Terraform
    ├── install.sh
    ├── main.tf
    ├── outputs.tf
    ├── variables.tf
    ├── modules
         ├── aws-cloudfront
         │   ├── main.tf
         │   ├── outputs.tf
         │   └── variables.tf
         ├── aws-ec2
         │   ├── main.tf
         │   ├── outputs.tf
         │   └── variables.tf
         ├── aws-ec2-key
         │   ├── main.tf
         │   ├── outputs.tf
         │   └── variables.tf
         ├── aws-elasticbeanstalk-cloudfront
         │   ├── main.tf
         │   ├── outputs.tf
         │   └── variables.tf
         ├── aws-loadbalancer
         │   ├── main.tf
         │   ├── outputs.tf
         │   └── variables.tf
         ├── aws-s3bucket
         │   ├── main.tf
         │   ├── outputs.tf
         │   └── variables.tf
         └── aws-vpc
            ├── main.tf
            ├── outputs.tf
            └── variables.tf
```

# DuiHua
# Sudos Project 
1. Mohammed Shaikh
2. Raghad Almutlaq
3. Aisha Alsubaie
4. Roba Almehmadi
5. Eman Alotaibi 
