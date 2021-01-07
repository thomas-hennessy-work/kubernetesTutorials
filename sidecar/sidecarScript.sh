#Access Jenkins from http://publicip/80/jenkins
#get the password from the logs (kubectl logs pods/jenkins -c jenkins)
kubectl apply -f nginx-jenkins-sidecar.yaml
kubectl expose pod jenkins --port 80 --type LoadBalancer
