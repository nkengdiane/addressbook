pipeline {
  agent { label 'node1' }  
  stages {
      stage ('compilation') {
          steps {
              sh 'mvn -B compile'
          }
      }
  }
}
