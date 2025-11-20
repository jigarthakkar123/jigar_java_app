pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/jigarthakkar123/jigar_java_app.git'
            }
        }
        stage('Build JAR') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jigar_java_app:latest .'
            }
        }
        stage('Run Container') {
            steps {
                sh '''
                docker rm -f jigar_java_app || true
                docker run -d --name jigar_java_app -p 9090:9090 jigar_java_app:latest
                '''
            }
        }
    }
}
