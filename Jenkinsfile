pipeline {
    agent any
    environment {
        USER = 'AjeetSharma'
    
    }
    stages{
        stage('Build'){
            steps{
                echo "Clone base branch"
		checkout scm

                def branch = env.BRANCH_NAME
                sh 'echo $BRANCH_NAME'

		///// switch to  respective branch
		//git clone --single-branch --branch $BRANCH_NAME <remote-repo>
		git checkout $BRANCH_NAME 

		/// print current branch name after switch
		git branch

		/// get the filenames from modified branch
		last_commit=$(git rev-parse HEAD)
		echo "last commit id "+$last_commit
		last_before_commit=$(git rev-parse HEAD~1)
		echo "last before commit id "+$last_before_commit
		/// print the list of files modified
	
		git diff --name-only last_commit last_before_commit
		
		sh $git diff --name-only last_commit last_before_commit 

                //cleanWs()
                echo "Now cloning code $USER"
                
               // checkout scm
                //git url: 'https://github.com/ajeetsharma389/Jenkins.git', branch: 'master'
                //sh 'mvn clean package'
            }
        
            
        }
        
        }
    }
}
