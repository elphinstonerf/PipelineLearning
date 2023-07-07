pipeline {
    agent any
    stages {
        stage ('Buzz Build') {
            steps {
                powershell 'Write-Host "Hello, PowerShell!"'
                powershell 'Get-ChildItem'
                powershell 'bash year_script.sh'
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