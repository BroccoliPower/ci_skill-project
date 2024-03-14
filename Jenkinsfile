pipeline {
    agent any

    stages {
        stage('First_stage') {
            steps {
                sh '''
                    docker build -t my-nginx:latest .
                '''
            }
        }
        stage('Second_stage') {
            steps {
                sh '''
                    docker rm -f my-nginx-container
                    docker run -d -p 9889:80 --name my-nginx-container my-nginx
                '''
            }
        }
        stage('Check 200 code'){
            steps{
                sh'''
                    sleep 15
                    bash check_code.sh
                '''
            }
        } 

        stage('MD5 check'){
            steps{
                sh'''                
                    bash check_md5.sh
                '''
            }
        } 
        stage('Remove container'){
            steps{
                sh'''                
                    docker rm -f my-nginx-container
                '''
            }
        }
    }
} 
