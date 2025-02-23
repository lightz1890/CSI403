pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        credentialsId: 'Lyz11111',
                        url: 'https://github.com/lightz1890/CSI403.git'
                    ]]
                ])
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t csi403-app-image .'

                    bat 'docker run -d --name csi-container -p 54100:3000 csi402-app-image:latest'
                }
            }
        }
    }
}
