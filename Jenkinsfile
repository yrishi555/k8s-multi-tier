#!/usr/bin/env groovy

pipeline {

    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
		sh("docker build -t test .")
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
}
