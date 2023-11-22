pipeline {
    agent any
    
    stages {
        stage('make errors') {
            steps {
                script {
                    sh 'hhh'
                  
                }
            }
        }
        stage('Prepare Scripts') {
            steps {
                script {
                    sh 'chmod +x scripts/*.sh'
                    sh'echo done '
                }
            }
        }
        
        // stage('Create Kubernetes Cluster with Kops') {
        //     steps {
        //         script {
        //             sh 'scripts/createkops.sh'
        //         }
        //     }
        // }

        // stage('Initialize and Apply kops') {
        //     steps {
        //         script {
                   
        //                 sh 'terraform apply -auto-approve'
                    
        //         }
        //     }
        // }

        // stage('Validate Cluster') {
        //     steps {
        //         script {
        //             sh 'scripts/validatekops.sh' // Script that checks for cluster readiness and waits if necessary
        //         }
        //     }
        // }

        // stage('Configure EC2 Instances with Ansible') {
        //     steps {
        //         script {
        //             sh 'ansible-playbook -i ansible/aws_ec2.yaml ansible/update_ec2.yml'
        //         }
        //     }
        // }

        // stage('Build and Push Docker Image') {
        //     steps {
        //         script {
        //             sh 'docker buildx build --platform linux/amd64,linux/arm64 -t amineamdouni/express-app:latest . --push'
        //         }
        //     }
        // }

        // stage('Deploy to Kubernetes') {
        //     steps {
        //         script {
        //             sh 'kubectl apply -f k8s/deployment.yaml'
        //             sh 'kubectl apply -f k8s/service.yaml'
        //         }
        //     }
        // }

        // stage('Wait for Deployment Readiness') {
        //     steps {
        //         script {
        //             sh 'scripts/wait_for_deployment.sh' // Script that checks Kubernetes deployment readiness
        //         }
        //     }
        // }

        // stage('Test Application') {
        //     steps {
        //         script {
        //             // Extract the Load Balancer's IP and make an API call to port 3001
        //             sh '''
        //             LOAD_BALANCER_IP=$(kubectl get svc -o jsonpath="{.items[?(@.metadata.name=='your-service-name')].status.loadBalancer.ingress[0].ip}")
        //             curl http://$LOAD_BALANCER_IP:3001
        //             '''
        //         }
        //     }
        // }
    }
    post {
        success {
            discordSend description: 'Build was successful!', footer: 'Jenkins', webhookURL: 'https://discord.com/api/webhooks/1176809601077891112/pviCq3-ITRxtTd91xcOVyZeP_2yaBnxuwrze7hmeebp30bSeRXVMRPOjXMrHtl-ENZvG'
        }
        failure {
            discordSend description: 'Build failed!', footer: 'Jenkins', webhookURL: 'https://discord.com/api/webhooks/1176809601077891112/pviCq3-ITRxtTd91xcOVyZeP_2yaBnxuwrze7hmeebp30bSeRXVMRPOjXMrHtl-ENZvG'
        }
    }
}
