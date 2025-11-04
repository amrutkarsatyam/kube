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
        sh 'docker build -t yourdockerhubusername/kube1:latest .'
    }
}


        stage('Push to Docker Hub') {
    steps {
        sh '''
            docker login -u yourdockerhubusername -p yourpassword
            docker push yourdockerhubusername/kube1:latest
        '''
    }
}

    }
}
