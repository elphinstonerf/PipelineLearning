pipeline {
    agent any
    stages {
        stage ('Buzz Build') {
            steps {
                powershell 'Write-Host "Hello, PowerShell!"'
                powershell 'Get-ChildItem'
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