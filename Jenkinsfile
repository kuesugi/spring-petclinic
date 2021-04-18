pipeline {
  agent any
  stages {
    stage('Deploying') {
      steps {
        ansiblePlaybook(playbook: 'server1.yaml', inventory: 'inventory.ini')
      }
    }

  }
}