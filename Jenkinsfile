pipeline {
  agent { label 'node1' }  
  stages {
      stage ('compilation') {
          steps {
              sh 'mvn -B compile'
          }
      }
      stage ('SCA') {
          steps {
              sh '/home/ubuntu/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner'
          }
      }
      stage ('package') {
          steps {
              sh 'mvn -B package'
          }
          
      }
      stage ('Deploy') {
          steps {
              sh 'cp ./target/addressbook-2.0.war /var/lib/tomcat9/webapps/addressbook.war'
          }
      }
     
    }
    post {
      failure {
          sh 'echo the build failed'
      }
      success {
          sh 'echo the buils is SUCCESSFUL'
      }
      always {
          sh 'echo the build as completed'
      }
    }
}
