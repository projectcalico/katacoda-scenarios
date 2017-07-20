Now, let's create a NetworkPolicy which allows traffic to nginx pods from any pods in the advanced-policy-demo Namespace:

```kubectl create -f - <<EOF
kind: NetworkPolicy
apiVersion: extensions/v1beta1
metadata:
  name: access-nginx
  namespace: advanced-policy-demo
spec:
  podSelector:
    matchLabels:
      run: nginx
  ingress:
    - from:
      - podSelector:
          matchLabels: {}
EOF```


To verify the policy was appropriately applied, you can use *calicoctl* to get the policy, with its order and selectors:

`
calicoctl get policy -o wide
`{{execute}}