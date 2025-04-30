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
          // Stopping and removing containers safely
          sh 'docker rm -f $(docker ps -a -q)' // Stops and removes all containers
          
          // Running the Docker container
          sh 'docker run --name mon_app --hostname monapp -p 8081:81 myimage_nginx'
        }
      }
    }
  }
}
