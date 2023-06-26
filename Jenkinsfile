pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                sh '''
               mvn package
               ls
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
