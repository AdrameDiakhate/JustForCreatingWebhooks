pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'make Build'
            }
        }
        stage('Test') {
            steps {
               sh 'make Test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'make Deploy'
            }
        }
    }
}