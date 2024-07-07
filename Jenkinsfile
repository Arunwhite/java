pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Arunwhite/java.git'
            }
        }
        stage('Build Image') {
            steps {
                script {
                    docker.build('172.31.36.3/dev/java')
                }
            }
        }
        stage('Push Image') {
            steps {
                script {
                    sh 'docker push 172.31.36.3/dev/java'
                }
            }
        }
    }
}
