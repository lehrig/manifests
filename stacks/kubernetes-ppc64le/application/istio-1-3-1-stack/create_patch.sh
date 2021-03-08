#!/bin/sh

patch_file=patch_with_ppc64le_images.yaml

sed -i 's/"hub":"image-registry.openshift-image-registry.svc:5000\/openshift"/"hub":"docker.io\/mgiessing"/g' $patch_file
