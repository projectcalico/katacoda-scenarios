Finally, let's test the connection again.

### Testing Internal  Connections
First, we'll try making an outgoing call to another pod within the advanced-policy-demo namespace.  

To do this, create another pod:

`kubectl run --namespace=advanced-policy-demo access --rm -ti --image busybox /bin/sh`{{execute}}

And then within the pod's shell, try accessing NGINX:

`wget -q --timeout=5 nginx -O -`{{execute}}

Once again, you should get the default NGINX HTML.


### Testing External Connections

Now let's try connecting to an outside service from within the pod's shell.  Try pinging Google.com or any other public site:

`ping google.com`{{execute}}

You'll notice the pod is unable to ping any outside services as they've been blocked by our policy.  

In other words, while we are letting our pods talk to each other - we are increasing security by not letting them talk (ie send information) to any outside services.

If we wanted to enable specific egress traffic, we could create another policy similiar to the kube-dns policy to allow traffic to only that specific destination (and on specific protocols or ports).