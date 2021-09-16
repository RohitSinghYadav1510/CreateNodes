pipeline {
    
    agent any

    tools{
            terraform 'terraform15'
    }

    stages {
        stage('Git Fetch') {
            steps {
                git 'https://github.com/RohitSinghYadav1510/CreateNodes.git'
            }
        }
         stage('Initialize Infrastructure') {
            steps {
                sh 'terraform init -force-copy'
            }
        }
         stage('View Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Approve Build & Start') {
               input{
                message "Start Building as per Plan??"
            }
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        stage('Destroy'){
             input{
                message "Do You Wanted To Destroy??"
            }
            steps {
                sh 'terraform destroy --auto-approve'
            }
        }
    }
}
