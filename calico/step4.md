Now let's create some nginx pods in the policy-demo namespace by using the _kubectl run_ command:
`
kubectl run --namespace=policy-demo nginx --replicas=2 --image=nginx`{{execute}}

And then expose the pods through a service using the _kubectl expose_ command:

`kubectl expose --namespace=policy-demo deployment nginx --port=80
`{{execute}}