pipeline {
    agent any
parameters {
        string(name: 'BRANCH', defaultValue: 'main', description: 'Git branch to clone')
            
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
                    sh 'terraform init -reconfigure'
                }
            }
        }

     
 }
 
}
