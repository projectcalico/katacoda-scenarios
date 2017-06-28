Next we'll apply our pod.yaml file, which was pre-uploaded for you in this tutorial.  You can view the contents of the pod.yaml file using `vi pod.yaml` and then `(escape) q` to exit the text editor.

To apply the pod, we'll once again use _kubectl create_, but this time with the _-f_ flag:

`kubectl create -f pod.yaml`{{execute}}

Once the pod.yaml file is applied, you should be able to access the pod and receive back the nginx welcome page using the following command:

`
kubectl exec -n policy-demo client -- wget -T 2 -q nginx  -O -
`{{execute}}

**Note:** it may take several minutes for the container to spin up.  If you receive a "container not found" error, please wait a couple minutes and try again.
