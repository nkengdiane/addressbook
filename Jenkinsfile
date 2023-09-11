pipeline {
    agent {label 'node1'}
    stages {
        stage ('compilation') {
            steps {
                sh 'mvn compile'
            }
        }
        stage ('static code annalysis') {
            steps {
                sh '/home/ubuntu/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner'
            }
        }
        stage ('package') {
            steps {
                sh 'mvn package'
            }
        }  
        stage ('deployment') {
            steps {
                sh 'cp .target/addressbook-2.war /var/lib/tomcat9/webapp/addressbook.war'
            }

    post {
        failure {
                sh 'echo the build failed'
        }
        success {
                 sh 'echo the buils is SUCCESSFULL'
        }
        always {
                 sh 'echo the build as completed'
        }
    }
}
