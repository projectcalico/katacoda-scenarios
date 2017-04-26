The kubectl is the command line client used to communicate with the Master.

`kubectl create -f pod.yaml`{{execute}}


`
kubectl exec -n policy-demo client -- wget -T 2 -q nginx  -O -
`{{execute}}
