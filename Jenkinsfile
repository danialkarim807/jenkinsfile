def image
pipeline {
    environment {
        registry = "danialkarim807/meather601"
        registryCredential = 'docker-hub-login'
        dockerImage = ''
    }
    agent any
    stages {
       stage ("first run app") {
            steps {
                sh 'python3 app.py'
            }
        }
        stage ("build checkout") {
            steps {
                git "https://github.com/danialkarim807/jenkinsfile.git"
            }
        }
         stage ("build image") {
            steps {
                script {
                    image = registry + ":${env.BUILD_ID}"
                    println ("${img}")
                    dockerImage = docker.build("${img}")
                }
                
            }
        }
        stage ("testing running in jenkins node") {
            steps {
                sh 'docker run -d --name ${JOB_NAME} -p 5000:5000 ${img}'
            }  
        }
        stage ("push to docker hub") {
            steps {
                script {
                    docker.withRegistry("https://registry.hub.docker.com", registryCredential)
                       dockerImage.push()
                }
                
            }
        }
    }
}








   
      
