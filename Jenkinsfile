pipeline {
    agent any
    stages{
        stage('Build'){
            steps{
                echo "Now cloning"
                cleanWs()
                //checkout scm
                //git url: 'https://github.com/ajeetsharma389/Jenkins.git', branch: 'master'
                //sh 'mvn clean package'
            }
        
            post{
                success{
                    echo "Now Archiving"
                    //archiveArtifacts artifacts:"**/*.jar"
                }
            }
        }
    }
}
