#!/usr/bin/env groovy

pipeline {
	def imgtag="rsvp:${env.BUILD_NUMBER}"
    agent any
    
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
