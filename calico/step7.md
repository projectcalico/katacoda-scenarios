Finally, we'll allow access to the pod by applying the network-policy.yaml file, which was pre-uploaded for you in this tutorial.

You can view the contents of the network-policy.yaml file using `vi network-policy.yaml` and then `(escape) q` to exit the text editor.

Apply the network-policy.yaml file using the _kubectl create_ command with the _-f_ flag:

`kubectl create -f network-policy.yaml`{{execute}}

`

Now, using our network-policy.yaml file we just applied, we should be allowing incoming traffic to pods running nginx.  We can test this using the following command:

`kubectl exec -n policy-demo client -- wget -q nginx  -T 2 -O -
`{{execute}}
