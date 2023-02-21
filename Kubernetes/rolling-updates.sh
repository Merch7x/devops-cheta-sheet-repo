#To perform app updates change the image of the current deployment

kubectl set image deployments/my-deployment my-container=nginx:latest

# To roll back an update
kubectl rollout undo deployments/my-deployment