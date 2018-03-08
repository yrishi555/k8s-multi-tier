#!/usr/bin/env groovy

pipeline {
	 
    agent any
    
    environment {
        imgtag="rsvp:${env.BUILD_NUMBER}"
    }   	    
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
		    sh("docker -H :5555 build -t ${imgtag} .")
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
}
