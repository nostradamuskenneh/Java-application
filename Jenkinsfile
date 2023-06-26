pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                sh '''
               mvn package
                '''
            }
        }
        stage("build-Image") {
            steps {
                sh '''
               docker build -t oumar .
                '''
            }
        }
    }
}
