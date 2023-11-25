# Create pod
kubectl run nginx --image=nginx --dry-run=client -oyaml

# Create load balancer service
kubectl expose pod nginx --type=LoadBalancer --port=8112 -oyaml

# Create a persistent volume
persistent volumes cannot be created imperatively

# Get shell access to container
kubectl exec --stdin --tty deluge-5576cb5457-qz7h6 -- /bin/bash

# Change Deployment to StatefulSet
    1. Create headless service
    2. Change Kind to statefulSet
    3. Remove spec.stragety

# Resolve Alpine or Busybox crash loop
    # A command needs to be run to keep the process open.
    kubectl run alpine --image=alpine:latest -n production --command -- sleep 1800
