# eks-local-disk-provisioner

The **eks-local-disk-provisioner** covers [operations](https://github.com/kubernetes-sigs/sig-storage-local-static-provisioner/blob/master/docs/operations.md) steps needed for [**sig-storage-local-static-provisioner**](https://github.com/kubernetes-sigs/sig-storage-local-static-provisioner) to function properly.

The **eks-local-disk-provisioner** has following workflow:
* detects **Amazon EC2 NVMe Instance Storage** devices
* creates a directory for provisioner discovering if it doesn't already exist (defaults to **/mnt/disks**)
* prepares and sets up local volumes in discovery directory; this step has two options:
    * mount whole disk into discovery directory (default behavior)
    * partition disk and mount each partition into discovery directory
