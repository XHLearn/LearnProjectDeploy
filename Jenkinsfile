pipeline {
    agent any

    stages {
        stage('git 拉取代码') {
            steps {
                git branch: 'main', credentialsId: 'gitlab', url: 'gitlab@git.narwal.com:lamborghini/projectdeploy.git'
            }
        }

        stage('输出 信息') {
            steps {
                sh 'ls -al'
                sh 'cat Jenkinsfile'
                sh 'docker info'
            }
        }

        stage('构建 docker'){
            steps {
                sh 'docker build -t=harbor.devops.narwal.com/xh-test/fastapi:latest .'
                sh 'docker push harbor.devops.narwal.com/xh-test/fastapi:latest'
            }
        }
    }
}
