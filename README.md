# Project Description 

# Architecture-diagram
![architecture-diagram](https://user-images.githubusercontent.com/55548241/190977085-22105029-e22e-4236-a3f1-0cf1e686bba8.png)

# Terraform structure
```
  .
  └── Terraform
    ├── install.sh
    ├── main.tf
    ├── outputs.tf
    ├── variables.tf
    ├── modules
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
         ├── aws-s3bucket
         │   ├── main.tf
         │   ├── outputs.tf
         │   └── variables.tf
         └── aws-vpc
            ├── main.tf
            ├── outputs.tf
            └── variables.tf
```



# Step by Step 
to run this deployment pipline follow this steps:

  To clone a specific branch:

  ```
  git clone --branch <branch> <remote_repo_url>
  ```

  - add the deployment pipline files in youre project 
  
     ![image](https://user-images.githubusercontent.com/55548241/190960574-9fa70867-9e50-4f5e-b312-8232e7d23ec8.png)

      ![Screenshot 2022-09-19 093436](https://user-images.githubusercontent.com/55548241/190961385-b9d9e7be-ba9c-4b8c-8dc3-9cb61c2443d5.png)

  - Add the `.gitignore` file content in this repository to the `.gitignore` file in your project
    ![image](https://user-images.githubusercontent.com/55548241/190961658-64b7b6f2-ba4c-4850-9858-9c93be3c325e.png)

  - search for /// and fill the necessary changes which are :
       - S3  bucket name 
    
  - Run the next commands in main diectory:
     -  ``` terraform -chdir=Terraform init ```
     -  ``` terraform -chdir=Terraform plan ```
     - ``` terraform -chdir=Terraform apply```
      
  - After the apply is done there wil be a Public IP adress printed in the terminal 
  
      ![image](https://user-images.githubusercontent.com/55548241/190968548-6aebc73a-8468-4f96-b208-b8df0446fa68.png)

  - we used a docker container image as our MySql Database 
      - **First: Change the `application.properties`**
         go to `\src\main\resources\application.properties` and change the Database properties to 
        ```
        spring.mvc.view.prefix=/WEB-INF/
        spring.datasource.url=jdbc:mysql://IP_adress:3306/mysql
        spring.datasource.username=mysql
        spring.datasource.password=mysql
        spring.jpa.hibernate.ddl-auto=create
        spring.mvc.hiddenmethod.filter.enabled=true
        ```
        ![image](https://user-images.githubusercontent.com/55548241/190969203-ef1e76b2-0585-451b-acf7-b422226341a4.png)
        
        ---
    - **Secound: SonarQube**
      - go to IP_adress:9000 which will open the SonarQube Login page

      ![image](https://user-images.githubusercontent.com/55548241/190964786-421d7bff-01ba-497d-8a25-fdb8086531c1.png)
      
         Login as admin 

       ![image](https://user-images.githubusercontent.com/55548241/190964929-f4504e27-c5d8-4571-b604-a35aa5eca32c.png)


         Create a SonarQube Project

      ![image](https://user-images.githubusercontent.com/55548241/190964973-d0cc9174-f2f0-4a16-90ec-fd4723c2b4b8.png)
      ![image](https://user-images.githubusercontent.com/55548241/190965007-3af5a64d-d990-41b1-bfde-76cf39c9ca01.png)

         add the values in **Jenkinsfile** of youre project

      ![image](https://user-images.githubusercontent.com/55548241/190970573-db315e3d-5d12-4c4a-9371-b682b9d8975a.png)

        push it to youre git-hub Repository 
        
      ---
    - **Thired: Jenkins server**
      -  ssh into the aws EC2 instance and run

     
      ```
      cat /var/lib/jenkins/secrets/initialAdminPassword
      ```
     ![image](https://user-images.githubusercontent.com/55548241/190966142-2927b274-10de-4693-923d-9a16220aa2db.png)
     
      copy the password and set up Jenkins at IP_adress:8080
    
    ![image](https://user-images.githubusercontent.com/55548241/190964579-6ee1c9a7-c018-496c-98c0-bfb7ced41a5b.png)
    ![2022-07-24 (32)](https://user-images.githubusercontent.com/55548241/190966799-96fdf09f-3b91-421a-8ea1-393e6fc84707.png)
    ![2022-07-24 (34)](https://user-images.githubusercontent.com/55548241/190971482-4bac5ef9-6c82-4a3f-aa42-ad6e1ff2d866.png)

      add aws Credentails with these ID in Jenkins server:
       - jenkins-access-key-id
       - jenkins-secret-access-key
     ![image](https://user-images.githubusercontent.com/55548241/190972149-8a804f04-69a7-468e-aef5-199664cac10c.png)
    
     ![image](https://user-images.githubusercontent.com/55548241/190972174-9d07d7a4-7628-41dd-a136-5e0529a0dab6.png)

    - **Forth: Create a pipline in Jenkins**
       -  set Your Git-hub Repository in it and Build it
    ---
    
## ElasticBeanStalk:
![image](https://user-images.githubusercontent.com/55548241/190972628-8b25b45a-0597-4f55-ba45-736551ca44fe.png)
![image](https://user-images.githubusercontent.com/55548241/190973618-b48676d0-2c08-4277-912a-a4abd178a3e8.png)


---


## CloudFront:
![image](https://user-images.githubusercontent.com/55548241/190973929-43a849b4-d980-4368-b22c-535b5287498c.png)

# Sudos Team
1. [Mohammed Shaikh](https://github.com/m-shaikh1)
2. [Raghad Almutlaq](https://github.com/raghadmta)
3. [Aisha Alsubaie](https://github.com/Aishabs/)
4. [Roba Almehmadi](https://github.com/Robamohammed)
5. [Eman Alotaibi ](https://github.com/emanfeah)
