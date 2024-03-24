pipeline
{
    agent any;
    stages{
        stage("clone-code")
        {
            steps{
                git credentialsId: 'github',branch: 'main', url: 'https://github.com/ASzadAffreen/RegistrationForm.git'
            }
        }
        stage("docker-build")
        {
            steps{
                sh "docker build -t react-login-form ."
            }
        }
        stage("docker-push")
        {
            steps
            {
                withCredentials([string(credentialsId: 'dockerid', variable: 'dockerpwd')]) {
                sh "docker login -u mohammadaszadali -p ${dockerpwd}"
                sh "docker tag react-login-form:latest mohammadaszadali/loginformdtag"
                sh "docker push mohammadaszadali/loginformdtag"
}
            }
        }
        stage("Deploy")
        {
            steps {
                script {
          sh ('aws eks update-kubeconfig --name Dtag-Prod --region us-east-1')
          sh 'kubectl apply -f kube-deploy.yaml'
}
}
}
}
    
}
        
