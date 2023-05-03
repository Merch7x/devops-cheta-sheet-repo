# To view different resources 
`kubectl get <resource-name>`

# To get more info about resources
`kubectl describe resource/<resource-name>`

# To edit resource files
`kubectl edit resource/<resource-name>`

# To change namespace
#Altetrnatively install kubens
`kubectl config set-context --current --namespace=<namespace>`

# To copy files from local to prod
`kubectl cp /<path-to-your-file>/<file-name> <pod-name>:<folder>/<file-name> -c <container-name> `

# Roles
`kubectl get roles`
`kubectl describe roles`

# check api access and or permissions
`kubectl auth can-i`

# Enable automatic sidecar injection of istio proxy in a particular namespace
`kubectl namespace default istio-injection=enable` 
#configures webhooks to change any deployments in the namespace to include istio sidecars