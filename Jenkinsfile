pipeline {
    agent { label 'jenkins-node'}
    stages {
        stage ('compile') {
            steps {
                sh 'mvn compile'
            }
        }
        stage ('package') {
            steps {
                sh 'mvn package'
            }
        }
        stage ('SCA') {
            steps {
                sh '/home/ubuntu/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner'
            }
            
        }
    }
}
