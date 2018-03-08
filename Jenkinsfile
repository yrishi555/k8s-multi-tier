#!/usr/bin/env groovy

pipeline {

    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building...
		sh("docker build -t  .")
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
}
