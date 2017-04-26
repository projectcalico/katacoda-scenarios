The following steps should be taken care of in the base image. We'll do them manually for now...

`
kubeadm init --token=102952.1a7dd4cc8d1f4cc5
`{{execute}}

`
kubeadm join --token=102952.1a7dd4cc8d1f4cc5 172.17.0.16:6443
`{{execute}}`
