Now let's create some nginx pods in the advanced-policy-demo namespace by using the *kubectl run* command: 

`
kubectl run --namespace=advanced-policy-demo nginx --replicas=2 --image=nginx
`{{execute}}


And then expose the pods through a service using the *kubectl expose* command:

`
kubectl expose --namespace=advanced-policy-demo deployment nginx --port=80
`{{execute}}