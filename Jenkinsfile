pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                withMaven(maven: 'MavenInstallationName') {
                    sh 'mvn clean install'
                }
            }
        }
        
        stage('Test') {
            steps {
                withMaven(maven: 'MavenInstallationName') {
                    sh 'mvn test'
                }
            }
        }
        
        stage('Deploy') {
            steps {
                withMaven(maven: 'MavenInstallationName') {
                    sh 'mvn deploy'
                }
            }
        }
    }
}

