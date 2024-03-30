pipeline
{
    agent any;
   
environment 
    {
        branch = "main"
       repository_Name= "registrationForm"
    //def build_number= ${currentBuild.number}
       image="${registrationForm}:${currentBuild.number}"
    }

stages
    {
        stage("clone")
        {
            when 
            {
            environment name:'branch' ,value: 'main'
            }
        steps
        {
            git credentialsId: 'github',branch: 'main', url: 'https://github.com/ASzadAffreen/RegistrationForm.git'
        }
    }
        stage("build")
        {
            steps
            {
                sh "docker build -t ${image} ."
    }
}
        stage("push")
        {
          steps
            {
                withCredentials([string(credentialsId: 'dockerid', variable: 'dockerpwd')]) {
                sh "docker login -u mohammadaszadali -p ${dockerpwd}"
                sh "docker tag  ${image} mohammadaszadali/${image}"
                sh "docker push mohammadaszadali/${image}"
}

            }
            stage("Deploy")
        {
            steps {
                script {
          sh ('aws eks update-kubeconfig --name Dev-DTag --region us-east-1')
                    try {
                          sh 'kubectl delete -f deploy.yaml'
                           sh 'kubectl apply -f deploy.yaml'
                    }
                    catch {
                         sh 'kubectl apply -f deploy.yaml'
                    }
}
}
        }
    }
}
}
