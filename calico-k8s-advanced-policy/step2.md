Create a namespace called "advanced-policy-demo"
`
kubectl create ns advanced-policy-demo
`{{execute}}


And enable isolation (restrict incoming access) for this namespace:

`
kubectl annotate ns advanced-policy-demo "net.beta.kubernetes.io/network-policy={\"ingress\":{\"isolation\":\"DefaultDeny\"}}"
`{{execute}}