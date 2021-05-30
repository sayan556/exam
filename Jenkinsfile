pipeline{
agent any
stages{
    stage('Docker login'){
        steps{
            withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'password', usernameVariable: 'username')]) {
    // some block
            sh 'docker login'
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
            sh 'docker tag sayanexam sayan556/today:newimage'
        }
        
    }
    stage('Push docker image'){
        steps{
            sh 'docker push sayan556/today:newimage'
        }
        
    }
}
}
