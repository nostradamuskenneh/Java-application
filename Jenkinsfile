pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                sh '''
    
                    pwd
                    ls
                    ls -ltra
                    mvn dependency:tree
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
                    docker rm -f vamala
                    docker run -d --name vamala -p 8134:8080 oumar:latest
                    docker ps | grep vamala
                '''
            }
        }
    }
}

          
