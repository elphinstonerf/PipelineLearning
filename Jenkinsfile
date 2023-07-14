pipeline {
    agent any
    environment {
        WORKER_NAME = "Buzz"
    }
    stages {
        stage ('Buzz Build') {
            steps {
                powershell 'Write-Host "Hello, PowerShell!"'
                powershell 'Get-ChildItem'
                
                powershell 'C:\\Users\\elphi\\Documents\\code-files\\PipelineLearning\\sample.ps1'

                echo "${WORKER_NAME} is finish with his build stage."
            }   
        }
        stage ('Bees Bees') {
            steps {
                echo 'Buzz, Bees, Buzz!'
                echo 'Bees Buzzing!'
            }
        }
    }
}