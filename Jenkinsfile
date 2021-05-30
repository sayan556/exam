pipeline{
agent any
stages{
    stage('Docker login'){
        steps{
            withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'password', usernameVariable: 'username')]) {
    // some block
            remote.username=username
            remote.password=password
            }
        }
        
    }
    stage('Docker image build'){
        steps{
            sh 'docker build -t sayanexam .'
            sh 'docker images'
        }
        
    }
    stage('Tag docker image'){
        steps{
            sh 'docker tag sayanexam sayan556/repo:sayan'
        }
        
    }
    stage('Push docker image'){
        steps{
            sh 'docker push sayan556/repo:sayan'
        }
        
    }
}
}
