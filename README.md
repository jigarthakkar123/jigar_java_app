ec2 instance ubuntu  t2.meduim-----
mvn install----
docker and docker-compose install----
jenkins insatll---
give permission----# sudo usermod -aG docker $USER-----
                    # sudo usermod -aG docker jenkins----
clone above java_simple_app-----
jenkins pipeline---Open Jenkins UI: http://<EC2-IP>:8080---
New Item → Pipeline → name e.g. java_simple_app → OK---
In Pipeline section:---
Definition: Pipeline script from SCM---
SCM: Git---
Repository URL: https://github.com/vipulitinfrajava_simple_app.git---
Branch: */main---
Script Path: Jenkinsfile---
Save and click Build Now---
open port 9090----
and check app with ip address:9090---
