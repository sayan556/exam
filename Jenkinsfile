pipeline{
agent any
stages{
    stage('Docker login'){
        steps{
            sh 'docker login -u sayan556 -p Sayanm15@'
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
            sh 'docker tag sayanexam sayan556/examrepo:today'
        }
        
    }
    stage('Push docker image'){
        steps{
            sh 'docker push sayan556/examrepo:today'
        }
        
    }
}
}
