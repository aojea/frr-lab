# FRR lab with docker containers

In order to play with the FRR project I prefer docker containers instead of
mininet because they provide you with the flexibility to try different versions
only changing the image. Also, using projects like
[koko](https://github.com/redhat-nfvpe/koko) or
[pipework](https://github.com/jpetazzo/pipework) you can test against other
vendors that are providing images like Cisco, Juniper, ...

To run it you need to:

1. Download FRR versions that you want:

run `01-download-frr.sh`

2. If you want to try MPLS you need to enable the kernel modules in the host:

run `02-load-modules.sh`

3. Build the docker image

run `docker build -t frr:VERSION_NUMBER .`

4. You can run an example topology of 3 router using the provided compos file:

run `docker-compose up -d`
```bash
Starting frrlab_R1_1 ... 
Starting frrlab_R3_1 ... 
Starting frrlab_R1_1
Starting frrlab_R2_1 ... 
Starting frrlab_R3_1
Starting frrlab_R3_1 ... done
```
5. You need to connect and configure the containers as you wish.

* use `koko`to create the connections

* run `docker exec -it frrlab_R1_1 vtysh` to configure the FRR instance using
  the vty shell
