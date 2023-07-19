pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
          		sh "./mvnw compile"
               echo 'Building the Project with maven compile'
            }
        }
        stage('Test') {
            steps {
            sh "./mvnw test"
                echo 'Testing the Project with mvnw test'
            }
        }
        stage('Package') {
            steps {
            sh "./mvnw package"
                echo 'Packaging the Project with mvnw package'
            }
        }
       stage('Containerize') {
            steps {
            sh "docker build -t pet-clinic-image ."
                echo 'containerizing  the Project with Docker'
            }
        } 
    }
}
