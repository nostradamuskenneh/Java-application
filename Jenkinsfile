
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {

                withMaven(
                 
                    maven: 'MavenInstallationName',
                
                    globalMavenSettingsConfig: 'GlobalMavenSettingsConfigName',
             
                    mavenSettingsConfig: 'MavenSettingsConfigName',
                  
                    mavenOpts: '-Dmaven.test.failure.ignore=true', 
                    mavenOptsGlobal: '-DglobalOption=value', 
                  
                    options: [
                       
                        '-DpropertyName=propertyValue',
                      
                        '-DotherProperty=otherValue'
                    ]
                ) {
                   
                    sh '''
                    'mvn clean package' 
                    '''
                }

        
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
            # docker login -u oumarkenneh -p $Amara1988
            # docker tag oumar:latest oumarkenneh/oumar

             # docker push oumarkenneh/oumar
              '''
            }
        }
    }
}
