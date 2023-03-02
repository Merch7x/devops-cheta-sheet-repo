# To view different resources 
kubectl get <resource-name>

# To get more info about resources
kubectl describe resource/<resource-name>

# To edit resource files
kubectl edit resource/<resource-name>

#To change namespace
kubectl config set-context --current --namespace=<namespace>

#To copy files from local to prod
kubectl cp /tmp/index.php nginx-phpfpm-dp-5cccd45499-lghgl:/var/www/html/