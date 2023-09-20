pipeline {
    agent any
    stages {
        stage ('compilation/package') {
            steps {
                sh 'mvn package'
            }
        }
        stage ('docker-build') {
            steps {
                sh 'sudo docker build -t nkeng/myboy:${BUILD_NUMBER} .' 
            }
        }
        stage ('docker-deploy') { 
            steps {
                sh 'sudo docker run --name mylast1 -d -p 1111:8080 -e ALLLOW_EMPTY_PASSWORD=yes nkeng/myboy:${BUILD_NUMBER}'
            }
        }
    }
}
