pipeline {
    agent any

        parameters {
        string(name: 'BRANCH', defaultValue: 'test', description: 'Git branch to clone')
            choice(name: 'ACTION', choices: ['plan', 'apply', 'destroy'], description: 'Terraform action to execute')
    }

   stages {

   
       

stage('Clone the Repository') {
            steps {
                git branch: "${params.BRANCH}", credentialsId: 'github-cred', url: 'https://github.com/techworldwithmurali/terraform-example.git'
                
            }
        }


     stage('Terraform Init') {
            steps {
                dir('dev/ec2') {
                    sh 'terraform init'
                }
            }
        }

stage('Terraform Plan or Apply or Destroy') {
            steps {
                script {
                    if (params.ACTION == 'plan') {
                        echo 'Executing Terraform plan...'
                        dir('dev/ec2') {
                            sh 'terraform plan -no-color'
                        }
                    } else if (params.ACTION == 'apply') {
                        echo 'Executing Terraform apply...'
                        dir('dev/ec2') {
                            sh 'terraform apply -no-color --auto-approve'
                        }
                    } else if (params.ACTION == 'destroy') {
                        echo 'Executing Terraform destroy...'
                        dir('dev/ec2') {
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
