pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        powershell 'Write-Host "Hello, PowerShell!"'
        powershell 'Get-ChildItem'
        powershell 'C:\\Users\\elphi\\Documents\\code-files\\PipelineLearning\\sample.ps1'
        echo "${WORKER_NAME} is finish with his build stage."
      }
    }

    stage('Bees Bees') {
      parallel {
        stage('Bees Bees') {
          steps {
            echo 'Buzz, Bees, Buzz!'
            echo 'Bees Buzzing!'
          }
        }

        stage('Test B Stage') {
          steps {
            bat 'PING 1.1.1.1 -n 1 -w 30000 >NUL'
          }
        }

      }
    }

  }
  environment {
    WORKER_NAME = 'Buzz'
  }
}