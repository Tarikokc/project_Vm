pipeline {
  agent any
  
  stages {
    stage("Supprimer le workspace") {
      steps {
        deleteDir()
      }
    }

    stage("Checkout SCM") {
      steps {
        sh 'git clone https://github.com/Tarikokc/project_Vm.git'
      }
    }

    stage("Build image docker") {
      steps {
        script {
          sh 'docker build -t myimage_nginx .'
          sh 'docker tag myimage_nginx tarik:myimage_nginx'
        }
      }
    }

    stage("Deployment application") {
      steps {
        script {
          sh 'docker rm image mynginx'
          sh 'docker rm -f $(docker ps -a)'
          sh 'docker run --name mon app --hostname monapp -p 8081:81 myimage_ngnix'
        }
      }
    }
  }
}
