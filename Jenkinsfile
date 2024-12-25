pipeline {
    agent any
parameters {
        string(name: 'BRANCH', defaultValue: 'main', description: 'Git branch to clone')
        choice(name: 'ACTION', choices: ['plan', 'apply', 'destroy'], description: 'Terraform action to execute')    
    choice(name: 'env', choices: ['dev', 'test', 'uat','pre-prod', 'prod', 'infra'], description: 'environment name')
    string(name: 'serviceName', description: 'Service name to create the infrastructure')  
    }


     environment {
        TF_DIR = "${params.env}/${params.serviceName}"
    }

    
   stages {

stage('Clone the Repository') {
            steps {
                git branch: "${params.BRANCH}", credentialsId: 'github-cred', url: 'https://github.com/techworldwithmurali/terraform-example.git'
            }
        }


       stage('Terraform Init') {
            steps {
                dir(env.TF_DIR) {
                    sh '
                    terraform init -reconfigure -no-color
                    '
                }
            }
        }


       stage('Terraform Plan or Apply or Destroy') {
            steps {
                script {
                    if (params.ACTION == 'plan') {
                        echo 'Executing Terraform plan...'
                        dir(env.TF_DIR) {
                            sh 'terraform plan -no-color'
                        }
                    } else if (params.ACTION == 'apply') {
                        echo 'Executing Terraform apply...'
                        dir(env.TF_DIR) {
                            sh 'terraform apply -no-color --auto-approve'
                        }
                    } else if (params.ACTION == 'destroy') {
                        echo 'Executing Terraform destroy...'
                        dir(env.TF_DIR) {
                            sh 'terraform destroy -no-color --auto-approve'
                        }
                    } else {
                        error("Unsupported ACTION: ${params.ACTION}")
                    }
                }
            }
        }

     
 }
 
}
