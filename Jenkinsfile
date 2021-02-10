pipeline {
  agent any

  environment {
    imageName = 'yaredd/dhcp-ldap-backend-jenkins'
    dockerImage = ''
  }

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
        script {
          dockerImage = docker.build(imageName)
        }
      }
    }
    stage("push image") {
      steps {
        echo "push image to hub.docker.com using the dhockerhub credential"
        script {
          docker.withRegistry('', 'dockerhub') {
            dockerImage.push("$BUILD_NUMBER")
            dockerImage.push("latest")
          }
        }
      }
    }
    stage("deploy") {
      steps {
        echo "deploy stage"
      }
    }
  }
}
