Enable isolation

`
kubectl annotate ns policy-demo "net.beta.kubernetes.io/network-policy={\"ingress\":{\"isolation\":\"DefaultDeny\"}}"
`{{execute}}

`
kubectl exec -n policy-demo client -- wget -q nginx  -T 2 -O -
`{{execute}}
