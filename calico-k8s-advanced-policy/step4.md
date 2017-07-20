Now let's create another pod to test the connection:
`
kubectl run --namespace=advanced-policy-demo access --rm -ti --image busybox /bin/sh
`{{execute}}

When prompted, try accessing the restricted pod using *wget*:

`
wget -q --timeout=5 nginx -O -
`{{execute}}

You should have received a timeout warning (because the pods in this namespace are isolated).

Now let's exit from the pod shell so that we can install calicoctl:

`exit`{{execute}}