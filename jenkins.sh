java -jar jenkins-cli.jar -auth user-cli:password -s http://localhost:8080 who-am-i
export JENKINS_USER_ID=user-cli
#create token in managment jenkins and export
export JENKINS_API_TOKEN=114288a57fd10bb8dd70edf6cbc9fd898c
#backup job
java -jar jenkins-cli.jar -s http://35.228.195.152:8080 get-job job-1 > job_1_back.xml
#create new job from xml
java -jar jenkins-cli.jar -s http://35.228.195.152:8080 create-job jobfromcli < job_1_back.xml
