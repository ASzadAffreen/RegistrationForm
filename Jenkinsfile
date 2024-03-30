pipeline
{
    agent any;
   
environment 
    {
        branch = "main"
         def repository_Name= "registrationForm"
    //def build_number= ${currentBuild.number}
    def image=${registrationForm}:${currentBuild.number}
    }
stages
    {
        stage
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
