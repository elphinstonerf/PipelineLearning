pipeline {
  environment {
    WORKER_NAME = 'Buzz'
  }
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
            input message: 'Deploy to Stage', ok: 'Yes'
          }

        }

        stage('Test B Stage') {
          steps {
            bat '''
                @echo off
                SetLocal EnableDelayedExpansion

                REM countdown of 5 seconds
                set count=5

                REM prepare carriage return
                FOR /F %%a IN ('copy /Z "%~dpf0" nul') DO set "carret=%%a"

                :ONE_SEC
                REM print message
                set /p =%count% seconds to go...!carret!<nul
                REM wait one sec
                ping -n 2 127.0.0.1 > nul 2>&1
                REM decrement
                set /a count-=1
                IF %count% GTR 0 goto :ONE_SEC

                REM last print, now you can use echo but don't forget: you have to override each character of the previous print! so fill all remaining place with whitespaces
                echo Done waiting...   
                REM  X seconds to go...

                EndLocal
                exit /b 0
                '''
              //error "This pipeline intentionally fails."

              echo "This is {$GIT_BRANCH}"
          }
        }

      }
      post {
        always {
          echo "You Know IT"
        }
        success {
          echo "WooHoo!"
        }
        failure {
          echo "OhhNoo!"
        }
      }
    } 
  }
}