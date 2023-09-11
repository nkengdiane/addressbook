pipeline {
    agent {label "node1"}
    stages {
        stage('compilation') {
            steps {
                sh "mvn compile"
            }
    stage('static code annalysis') {
            steps {
                sh "/home/ubuntu/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner"
            }
    stage('package') {
            steps {
                sh "mvn package"
            }
    stage('deployment') {
            steps {
                sh "cp .target/addressbook-2.war /var/lib/tomcat9/webapp/addressbook.war"
            }

            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.jar'
                }
            }
        }
    }
}
