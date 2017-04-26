Allow Access using a Network Policy.

`kubectl create -f network-policy.yaml`{{execute}}

`
kubectl exec -n policy-demo client -- wget -q nginx  -T 2 -O -
`{{execute}}
