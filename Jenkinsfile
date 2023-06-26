pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                sh '''
               mvn package
               cd target/webapp
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
