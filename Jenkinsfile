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
            bat '''
                echo 5
                ping -n 2 127.0.0.1>nul
                echo 4
                ping -n 2 127.0.0.1>nul
                echo 3
                ping -n 2 127.0.0.1>nul
                echo 2
                ping -n 2 127.0.0.1>nul
                echo 1
                ping -n 2 127.0.0.1>nul
                '''
          }
        }

      }
    }

  }
  environment {
    WORKER_NAME = 'Buzz'
  }
}