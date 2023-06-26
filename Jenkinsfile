pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                sh '''
               mvn package
               cd target
               mv LoginWebApp.war $WORKSPACE
               pwd
               ls
                '''
            }
        }
        stage("build-Image") {
            steps {
                sh '''
               cd $WORKSPACE
               ls
               docker build -t oumar .
                '''
            }
        }
    }
}
