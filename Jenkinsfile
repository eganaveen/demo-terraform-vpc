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
                sh 'cp ${ENV}-env/Terrafile . ; terrafile'
                sh 'terraform init -backend-config=${ENV}-env/${ENV}-backend.tfvars'
            }
        }
        stage('Terrafrom plan'){
            steps{
            sh 'terraform plan -var-file=${ENV}-env/${ENV}.tfvars'
            }
        }
        stage('Terrafrom apply'){
                    steps{
                    sh 'terraform apply -var-file=${ENV}-env/${ENV}.tfvars --auto-approve'
                    }
                }
    }
}