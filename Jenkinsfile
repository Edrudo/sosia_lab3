pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Clone'){
            steps {
                sh './scripts/clone.sh'
            }
        }
        stage('Test'){
            steps {
                sh './scripts/test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './scripts/deploy.sh'
            }
        }
    }
    post {
        always {
            rm -r ../test
        }
}
