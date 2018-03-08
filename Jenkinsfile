#!/usr/bin/env groovy

pipeline {

    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building...
		sh("docker build -t test1 /var/lib/jenkins/workspace/k8s-multi-tier/Dockerfile")
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
}
