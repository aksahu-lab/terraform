Advantages of K8s over Docker:
a. Cluster in nature
b. Auto healing
c. Auto scaling
d. Enterprise level support (Adv load bancing, Adv networking, Security etc.)

Note:
1. In docker, smallest level of deployment is container. In K8s, it is pod.
2. Pod is collection of containers with some adv features.

Data plane:
----------
**Container runtime:**
> A java container would require java runtime to the container. Docker uses 'Dockershim' as container runtime.
> K8s may use 'Dockershim' or 'Container D' or 'cri-o' or some other container runtime which implements K8s container interface.

**Kubelet:**
> In Docker, we have docker engine and runtime to run container.
> In K8s, Kubelet is responsible for maintaining pod. If the pod is running or not.
> If pod is not running, inform API server. API server may use auto-heal feature to fix it.

**Kube-proxy:**
> Docker has networking component Docker0 (Default: Bridge n/w).
> K8s has Kube-proxy, which provides networking feature. It is also responsble for managing IP table, Load balancing.

Control plane:
-------------
> For enterprise level component, to provide cluster level support; it takes the decesion on tasks need to perform by Data plane.
> Tasks may be 'POD creation'. Control plane decides if the POD will be created on node1 or 2 or 3 on data plane.
> Other tasks may be identity provider realated configurations, SSO, security related stuff.

**API server:**
> It is the heart of K8s.
> It exposes the K8s cluster to outside world.
> It takes all requests from external world.
> It decides the action.

**Scheduler:**
> To schedule the task on worker node.
> It is responsible for scheduling resources (such as PODs) actions/deployements in K8s.

**etcd:**
> It acts as a backup service or backing store of entire cluster information.
> It is a key-value store which will be required to restore cluster.

**Controller manager:**
> To support autoscaling, K8s has components like controllers.
> Ex: Replicaset is responsible for maintaining state of PODs. If 1out of 2, 1 POD is down, it invokes autoscaling feature to create a new POD to make sure 2 PODs are running all the time.
> K8s has controller manager to manage these controllers.

**Cloud controller manager:** (C-C-M)
> It is open source utility.
> K8s can run on cloud platforms like EKS / AKS
> Let's say, there is a user request to create Load balancer or Storage.
> When we send such request to K8s, it should understand the underlying cloud provider.
> If a new cloud provider comes in market, they have to write the translation logic in C-C-M.
> For on-premise deployment, C-C-M is not required.
> K8s has to translate the request from user to API request that the cloud provide understands. This mechanism has to be implemented at C-C-M
