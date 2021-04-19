pipeline {
  agent any
  stages {
    stage('Configuring') {
      steps {
        sh '''exit
cd /var/lib/jenkins/workspace/spring-petclinic_main
sudo chmod 777 spring-petclinic-2.4.2.jar
sudo su - jenkins'''
      }
    }

    stage('Deploying') {
      steps {
        ansiblePlaybook(playbook: 'server1.yaml', extras: '--user=vagrant')
      }
    }

  }
}