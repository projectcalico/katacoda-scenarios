ssh root@host01 'if [ "$HOSTNAME" == "master" ]; then for i in {1..200}; do kubeadm init --token=96771a.f608976060d16396 > /opt/kubeadm-logs; sudo cp /etc/kubernetes/admin.conf /root/.kube/config && break || sleep 1; done; else kubeadm join --token=102952.1a7dd4cc8d1f4cc5 [[HOST_IP]]:6443; fi; docker pull quay.io/calico/node:v1.1.3; docker pull quay.io/calico/cni:v1.7.0'

