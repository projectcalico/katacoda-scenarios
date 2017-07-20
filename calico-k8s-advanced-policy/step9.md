The next policy we will create will prevent all outgoing traffic from pods within the advanced-policy-demo namespace.

Create this policy by running the following command:
`
calicoctl apply -f - <<EOF
apiVersion: v1
kind: policy
metadata:
  name: advanced-policy-demo.deny-egress
spec:
  selector: calico/k8s_ns == 'advanced-policy-demo'
  order: 500
  egress:
  - action: deny
    destination:
      notSelector: calico/k8s_ns == 'advanced-policy-demo'
EOF
`{{execute}}

Now let's create another policy that allows traffic to kube-dns.  You'll notice that the order of this policy is 400, whereas the order for the above policy is 500 - this is so that this new policy takes priority over the policy blocking ALL outgoing traffic.


`
calicoctl apply -f - <<EOF
apiVersion: v1
kind: policy
metadata:
  name: advanced-policy-demo.allow-dns
spec:
  selector: has(calico/k8s_ns)
  order: 400
  egress:
  - action: allow
    protocol: udp
    destination:
      selector: calico/k8s_ns == 'kube-system' && k8s-app == 'kube-dns'
      ports: [53]
EOF
`{{execute}}

You'll also notice this policy only allows outgoing traffic for a specific protocol and to a specific destination.