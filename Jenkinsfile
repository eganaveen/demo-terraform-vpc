pipeline{
    agent any
    options {
            ansiColor('xterm')
        }
    parameters {
            choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Pick environment')
        }
    stages{
        stage('Terraform init'){
            steps{
                sh 'terraform init -backend-config=${ENV}-env/${ENV}-backend.tfvars'
            }
        }
        stage('Terrafrom plan'){
            steps{
            sh 'terraform plan -var-files=${ENV}-env/${ENV}.tfvars'
            }
        }
    }
}