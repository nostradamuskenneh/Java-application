pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                sh '''
               mvn package
               cd target
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
