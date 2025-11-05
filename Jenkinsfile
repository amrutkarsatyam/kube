pipeline {
    agent any

    environment {
        IMAGE_NAME = "kube1:latest"
        DOCKER_HUB_REPO = "satyamamrutkar/kube1"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/amrutkarsatyam/kube.git'
            }
        }

        stage('Build Docker Image') {
    steps {
        sh 'docker build -t satyamamrutkar/kube1:latest .'
    }
}


        stage('Push to Docker Hub') {
    steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
            sh '''
                echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                docker push satyamamrutkar/kube1:latest
            '''
        }
    }
}


    }
}
