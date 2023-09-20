pipeline {
    agent any
    stages {
        stage ('compilation/package') {
            steps {
                sh 'mvn compile'
            }
        }
        stage ('docker-build') {
            steps {
                sh 'sudo docker build -t nkeng/myyaddd:${BUILD_NUMBER} .' 
            }
        }
        stage ('docker-deploy') { 
            steps {
                sh 'sudo docker run --name mylast1 -d -p 3333:8080 -e ALLLOW_EMPTY_PASSWORD=yes nkeng/myyaddd:${BUILD_NUMBER}'
            }
        }
    }
}
