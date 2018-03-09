#!/usr/bin/env groovy

pipeline {
	 
    agent any
    
    environment {
        imgtag="hemantkbajaj/rsvp:${env.BUILD_NUMBER}"
    }   	    
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }
	stage('Push') {
           steps {
               echo 'Pushing Image to Docker hub'
		    sh("docker -H :5555 login -u hemantkbajaj -p don2rry") 
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying in kubectl !!!'
		sh("sed -i.bak 's#teamcloudyuga/rsvpapp#${imgtag}#' ./k8s/rsvp-web-deployment.yaml")
		sh("which kubectl")
		sh("kubectl --kubeconfig=/root/.kube/config get nodes -v=8")
            }
        }
    }
}
