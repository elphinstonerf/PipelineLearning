pipeline {
    agent any
    stages {
        stage ('Buzz Build') {
            steps {
                powershell 'Write-Host "Hello, PowerShell!"'
                powershell 'Get-ChildItem'
                
                 powershell '''
                $gitBashPath = "C:\\Program Files\\Git\\bin\\bash.exe"
                $command = "echo Hello, Git Bash!" 
                Start-Process -FilePath $gitBashPath -ArgumentList "-c", $command -Wait
                '''
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