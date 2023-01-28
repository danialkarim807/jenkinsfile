pipeline {
    agent any

    stages {
//         stage('checkout') {
//             steps {
//                 checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/danialkarim807/jenkinsfile.git']])
//             }
//         }
        stage ("build") {
            steps {
                git branch: 'main', url: 'https://github.com/danialkarim807/jenkinsfile.git'
                sh 'python3 app.py'
            }
        }
//         stage ("test") {
//             steps {
//                 sh 'python3 -m pytest'
//             }
//         }
    }
}

  













   
      
