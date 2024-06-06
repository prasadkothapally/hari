# **AWS Secrets Manager**

### **Below are the securely available secret keys in staging environment and the respective keys used in k8s secret manifest**

|Secret Purpose       | Secret Config Key                 |
|---------------------|-------------                      |
|postgres username    | POSTGRES_USER                     |
|postgres password    | POSTGRES_PASSWORD                 |
|mongo url            | MONGO_URL                         |
|mongo username       | MONGO_USER                        |
|mongo password       | MONGO_PASSWORD                    |
|rabbitmq username    | RABBIT_USER                       |
|rabbitmq password    | RABBIT_PASSWORD                   |
|mfu userid           | MFU_USER_ID                       |
|mfu password         | MFU_PASSWORD                      |
|mfu secretkey        | MFU_SECRET_KEY                    |
|mfu entityid         | MFU_ENTITY_ID                     |
|CAMS keys            | CAMS_PUBLIC_KEY/CAMS_PRIVATE_KEY  |


### **Sample kubernetes secrets creation using manifest**

  apiVersion: v1  
  kind: Secret  
  metadata:  
    name: sample-secret  
    namespace: sample  
  type: Opaque  
  data:  
    #Base64-encoded values  
    POSTGRES_USER: ********  
    POSTGRES_PASSWORD: *******  
  
