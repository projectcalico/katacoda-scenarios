Now that we have the Calico command line tool installed, we will need to set it up to use either etcd or KDD.  For this tutorial, we will be using etcd version 2 (bundled with our Calico install).

To set these configurations, simply set *DATASTORE_TYPE* and *ETCD_ENDPOINTS* using the *export* command:

`
export DATASTORE_TYPE=etcdv2
export ETCD_ENDPOINTS=http://localhost:6666
`{{execute}}

Of course, ETCD_ENDPOINTS should point to whichever etcd datastorage you're using.