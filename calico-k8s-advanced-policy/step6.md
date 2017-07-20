Now we can use *calicoctl* to get and review the corresponding profile:

`
calicoctl get profile -o wide
`{{execute}}

You should see advanced-policy-demo in the profile.

You can also use *calicoctl* to review the advanced-policy-demo YAML:

`
calicoctl get profile k8s_ns.advanced-policy-demo -o yaml
`{{execute}}

Because we've enabled isolation on the namespace, you'll notice the profile denies all incoming (ingress) traffic but allows all outgoing (egress) traffic.