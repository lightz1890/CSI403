pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo "Clone Code the project From Git"
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']], // ระบุ main branch
                    userRemoteConfigs: [[
                        credentialsId: 'Lyz11111', // ระบุ credentials ID ของคุณ
                        url: 'https://github.com/lightz1890/CSI403/' // ระบุ URL repository ของคุณ
                    ]]
                ])
            }
        }

        stage('Build') {
            steps {
                echo "Building the project..."
            }
        }

        stage('Unit Tests') {
            steps {
                echo "Running tests..."
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying the application..."
            }
        }

        stage('Deployment test') {
            steps {
                echo "Running tests..."
            }
        }
    }
}
