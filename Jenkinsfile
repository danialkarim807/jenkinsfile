pipeline {
   agent {
      docker {
         image 'python:3'
      }
   }

stages {
   stage ("clone repo") {
      steps{
        git url:" https://github.com/danialkarim807/jenkinsfile.git  "
        }
     }

   stage ("Build") {
      steps{
        sh 'pip3 install -r requirements.txt'
        }
      }

   stage ("Testing"){
      steps {
         sh 'python3 -m unittest discover -s tests/'
         }
      }

   stage ("Deploy"){
      steps {
         sh 'pip3 install -t requirements.txt'
         sh 'python3 app.py &'
      }
  
    }

  }

} 













   
      
