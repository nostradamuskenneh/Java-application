pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                sh '''
               mvn package
               pwd
               ls
                '''
            }
        }
        stage("build-Image") {
            steps {
                sh '''
               cd target
               ls
               docker build -t oumar .
                '''
            }
        }
    }
}
