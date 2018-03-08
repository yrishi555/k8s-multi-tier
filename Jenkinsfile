#!/usr/bin/env groovy

pipeline {

    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh "WEB_IMAGE_NAME="hemantkbajaj/go-web:kube${BUILD_NUMBER}"
				sh("docker build -t $WEB_IMAGE_NAME .")
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
}
