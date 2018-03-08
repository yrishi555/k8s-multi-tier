#!/usr/bin/env groovy

pipeline {

    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building...
		sh("docker build -t test1 .")
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
}
