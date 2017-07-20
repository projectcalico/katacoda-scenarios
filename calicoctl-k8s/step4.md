We can also configure calicoctl to use the Kubernetes Datastore Driver instead 

> **For advanced usage, etcd is recommended**

To do this, we would simply set the *DATASTORE_TYPE* to kubernetes and set *KUBECONFIG*, like so:

`
export DATASTORE_TYPE=kubernetes
export KUBECONFIG=~/.kube/config
`