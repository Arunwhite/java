pipeline {
    agent any

    environment {
        DOCKER_REGISTRY_CREDENTIALS = 'harbor' // Replace with your credentials ID
        DOCKER_REGISTRY_URL = 'https://thedevops.solutions'
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
                    dockerImage = docker.build('thedevops.solutions/dev/java')
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
