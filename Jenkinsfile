pipeline {
    agent any

    environment {
        DOCKER_REGISTRY_CREDENTIALS = 'harbor' // Replace with your credentials ID
        DOCKER_REGISTRY_URL = 'https://172.31.36.3'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Arunwhite/java.git'
            }
        }
        stage('Build Image') {
            steps {
                script {
                    dockerImage = docker.build('172.31.36.3/dev/java')
                }
            }
        }
        stage('Push Image') {
            steps {
                script {
                    docker.withRegistry(DOCKER_REGISTRY_URL, DOCKER_REGISTRY_CREDENTIALS) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
