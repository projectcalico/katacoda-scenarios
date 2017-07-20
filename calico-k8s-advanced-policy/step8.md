We can also verify the policy by trying the connection again by creating another pod within the advanced-policy-demo namespace:

`kubectl run --namespace=advanced-policy-demo access --rm -ti --image busybox /bin/sh`{{execute}}

And then when prompted, from the pod shell using *wget*:

`wget -q --timeout=5 nginx -O -`{{execute}}

If successful, you should see the NGINX default page returned (in HTML format).

Finally, exit the pod shell to return back so we can add an additional egress policy:

`exit`{{execute}}
