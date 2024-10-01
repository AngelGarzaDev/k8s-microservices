for statefulsets in `cat /tmp/statefulsets.list`
do
    kubectl scale --replicas=0 $statefulsets
done