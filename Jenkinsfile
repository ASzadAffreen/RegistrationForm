pipeline
{
    agent any;
    def repository_Name= "registrationForm"
    //def build_number= ${currentBuild.number}
    def image=${registrationForm}:${currentBuild.number}
environment 
    {
        branch = "main"
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
