calicoctl is Project Calico's command line tool that allows you to easily manage Calico's network and security policy.

### Installing
To install calicoctl, first download the file via curl:

`
curl -O -L https://github.com/projectcalico/calicoctl/releases/download/v1.3.0/calicoctl
`{{execute}}

Now ensure that the downloaded calicoctl file is executable:

`
chmod +x calicoctl
`{{execute}}


And move it to your /bin folder:

`
mv calicoctl /bin/calicoctl
`{{execute}}

### Configuring calicoctl
Now that we have the Calico command line tool installed, we will need to set it up to use either etcd or KDD.  For this tutorial, we will be using etcd version 2 (bundled with our Calico install).

To set these configurations, simply set *DATASTORE_TYPE* and *ETCD_ENDPOINTS* using the *export* command:

`
export DATASTORE_TYPE=etcdv2
export ETCD_ENDPOINTS=http://localhost:6666
`{{execute}}

We can now test the calicoctl configuration by running a sample command, in this case *get nodes*:
`
calicoctl get nodes
`{{execute}}

If calicoctl has been properly setup, you should see "Master" returned.