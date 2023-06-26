pipeline {
    

agent {
    docker {
        image 'maven:3.8.1-adoptopenjdk-11'
        label 'my-defined-label'
        args  '-v /tmp:/tmp'
    }
}



    stages {
        stage('build') {
            steps {
                sh '''
               mvn package
                '''
            }
        }
    }
}
