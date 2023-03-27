#view rs
kubectl get rs 

#scale a replica set by targeting its deployment
kubectl scale --replicas=5 deployment/my-deployment

