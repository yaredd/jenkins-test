pipeline {
  agent any

  stages {
    stage("lint") {
      agent {
        docker { image 'hadoline/hadolint:debian-latest' }
      }
      steps {
        sh "hadolint Dockerfile"
      }
    }
    stage("build") {
      steps {
        echo "build stage"
      }
    }
    stage("test") {
      steps {
        echo "test stage"
      }
    }
    stage("deploy") {
      steps {
        echo "deploy stage"
      }
    }
  }
}
