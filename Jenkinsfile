pipeline {
    agent any
    environment {
        USER = 'AjeetSharma'
    
    }
    stages{
        stage('Build'){
            steps{
                echo "Now cleaning workspace!"
                //def branch = env.BRANCH_NAME
               	echo env.BRANCH_NAME
                cleanWs()
                echo "Now cloning code $USER"
                
               // checkout scm
                //git url: 'https://github.com/ajeetsharma389/Jenkins.git', branch: 'master'
                //sh 'mvn clean package'
            }
        
            post{
                success{
                   // this is used to get input from submitted/invoker to approve the job or not.
                    // time: means it will wait for 5 days
                    timeout(time:5, unit:'DAYS'){
                        input message: 'Approve?'
                    }
                     echo "Now Archiving"
                    //archiveArtifacts artifacts:"**/*.jar"
                }
            }
        }
        stage("Interactive_Input") {
            steps {
                script {
                def userPasswordInput = input(
        id: 'Password', message: 'input your password: ', ok: 'ok', parameters: [string(defaultValue: 'master', description: '.....', name: 'LIB_TEST')]
    )
                echo ("Password was: " + userPasswordInput)

                }
            }
        }
    }
}
