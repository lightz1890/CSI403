pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        credentialsId: 'Pitchaya22894',
                        url: ''
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
