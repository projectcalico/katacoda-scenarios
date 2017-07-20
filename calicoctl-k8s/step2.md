Now we're ready to install calicoctl.

First download the file via curl:

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