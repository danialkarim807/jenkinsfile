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
        sh 'pip install flask'
        }
      }

   stage ("Testing"){
      steps {
         sh 'python3 -m unittest discover -s tests/'
         }
      }

   stage ("Deploy"){
      steps {
         sh 'pip install flask'
         sh 'python3 app.py &'
      }
  
    }

  }

} 













   
      
