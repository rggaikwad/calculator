pipeline {
    agent any

    triggers {
        githubPush()
    }

    environment {
        IMAGE_NAME = "calculator-app"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}")
                }
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

       
    }
}
