#!/bin/sh

patch_file=patch_with_ppc64le_images.yaml

sed -i 's/"tag":"v2.8.0"/"tag":"v2.8.0-f1.ppc64le"/g' $patch_file
sed -i 's/"tag":"release-1.3-latest-daily"/"tag":"v1.3.1.ppc64le"/g' $patch_file

sed -i 's/"hub":"docker.io\/prom"/"hub":"image-registry.openshift-image-registry.svc:5000\/openshift"/g' $patch_file
sed -i 's/"hub":"gcr.io\/istio-release"/"hub":"image-registry.openshift-image-registry.svc:5000\/openshift"/g' $patch_file
