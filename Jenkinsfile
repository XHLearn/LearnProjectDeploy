pipeline {
    agent any

    stages {
        stage('git 拉取代码') {
            steps {
                git branch: 'main', credentialsId: 'gitlab', url: 'gitlab@git.narwal.com:lamborghini/projectdeploy.git'
            }
        }

        stage('输出 ls -al') {
            steps {
                sh 'ls -al'
            }
        }

        stage('输出 Jenkinsfile') {
            steps {
                sh 'cat Jenkinsfile'
            }
        }

        stage('构建 docker'){
            docker build -t=harbor.devops.narwal.com/xh-test/fastapi:latest .
            docker push harbor.devops.narwal.com/xh-test/fastapi:latest
        }
    }
}
