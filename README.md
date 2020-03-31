# eks-local-disk-provisioner

The **eks-local-disk-provisioner** covers [operations](https://github.com/kubernetes-sigs/sig-storage-local-static-provisioner/blob/master/docs/operations.md) steps needed for [**sig-storage-local-static-provisioner**](https://github.com/kubernetes-sigs/sig-storage-local-static-provisioner) to function properly.

# Introduction

The **eks-local-disk-provisioner** is designed to be deployed in a Kubernetes cluster on a worker nodes with **NVMe Instance Storage**.

The **eks-local-disk-provisioner** has following workflow:
* detects **Amazon EC2 NVMe Instance Storage** devices
* creates a directory for provisioner discovering if it doesn't already exist (defaults to **/mnt/disks**)
* prepares and sets up local volumes in discovery directory; this step has two options:
    * mount whole disk into discovery directory (default behavior)
    * create disk partitions and mount each partition into discovery directory

# Prerequisites

* Kubernetes 1.15
* Helm 3.0

# Installing

Recommended way of installing is with [Helm chart](https://github.com/ethersphere/helm/tree/master/charts/eks-local-disk-provisioner).

If Helm is not an option, Kubernetes manifests examples are provided in the [examples](https://github.com/ethersphere/eks-local-disk-provisioner/tree/master/examples) directory.
