pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                withMaven(maven: 'Maven3.9.3') {
                    sh 'mvn clean install'
                }
            }
        }
        
        stage('Test') {
            steps {
                withMaven(maven: 'Maven3.9.3') {
                    sh 'mvn test'
                }
            }
        }
        
        stage('Deploy') {
            steps {
                withMaven(maven: 'Maven3.9.3') {
                    sh 'mvn deploy'
                }
            }
        }
    }
}
