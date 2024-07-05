pipeline {
  agent any
  stages {

    stage('Compile') {
      steps{
        sh 'mvn clean compile'
      }
    }

    stage('UnitTest') {
      steps{
        sh 'mvn clean test'
      }
    }

    stage('Package') {
      steps{
        sh 'mvn clean package'
      }
    }

    stage('Deliver') {
      steps{
        deploy adapters: [tomcat9(credentialsId: '20cb2e91-2b63-46e0-88af-a0e1588c811e', path: '', url: 'http://44.204.86.64:9090/')], contextPath: 'Jenkinsfile', war: 'target/calculator.war'
      }
    }
  }
}
