pipeline {
  agent any

  stages {
    stage("lint") {
      agent {
        docker { image 'hadolint/hadolint:latest-debian' }
      }
      steps {
        sh "hadolint Dockerfile"
      }
    }
    stage("build") {
      steps {
        echo "build docker image"
        sh "docker build -t dhcp-ldap-backend-jenkins ."
      }
    }
    stage("deploy") {
      steps {
        echo "deploy stage"
      }
    }
  }
}
