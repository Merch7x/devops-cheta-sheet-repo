# To view different resources 
kubectl get <resource-name>

# To get more info about resources
kubectl describe resource/<resource-name>

# To edit resource files
kubectl edit resource/<resource-name>

#To change namespace
kubectl config set-context --current --namespace=<namespace>