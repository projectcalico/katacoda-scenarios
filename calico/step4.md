Create some nginx pods in the policy-demo Namespace, and expose them through a Service.

`
kubectl run --namespace=policy-demo nginx --replicas=2 --image=nginx
kubectl expose --namespace=policy-demo deployment nginx --port=80
`{{execute}}
