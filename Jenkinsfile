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
    }
}
