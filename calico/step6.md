Next, annotate the policy-demo namespace to deny all incoming (ingress) traffic using the _kubectl annotate_ command:

`
kubectl annotate ns policy-demo "net.beta.kubernetes.io/network-policy={\"ingress\":{\"isolation\":\"DefaultDeny\"}}"
`{{execute}}

Now, remote access to this pod should be unavailable, and you should receive a timeout warning.

`
kubectl exec -n policy-demo client -- wget -q nginx  -T 2 -O -
`{{execute}}
