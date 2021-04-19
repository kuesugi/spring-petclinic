pipeline {
  agent any
  stages {
    stage('Configuring') {
      steps {
        sh '''cd /var/lib/jenkins/workspace/spring-petclinic_main &&
chmod 777 spring-petclinic-2.4.2.jar'''
      }
    }

    stage('Deploying') {
      steps {
        ansiblePlaybook(playbook: 'server1.yaml', extras: '--user=vagrant')
      }
    }

  }
}