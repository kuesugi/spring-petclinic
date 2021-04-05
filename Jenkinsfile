pipeline {
  agent any
  stages {
    stage('Building') {
      steps {
        sh './mvnw package'
      }
    }

    stage('Testing') {
      steps {
        sh './mvnw sonar:sonar -Dsonar.host.url=http://localhost:9000 -Dlicense.skip=true -Dsonar.login="47af271b488afd98f05befe29088bdfdadd68543"'
      }
    }

    stage('Running') {
      steps {
        sh 'java -jar target/spring-petclinic-2.4.2.jar'
      }
    }

  }
}