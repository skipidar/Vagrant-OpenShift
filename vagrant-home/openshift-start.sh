#!/bin/bash -e




sudo docker run -P -d --name "origin" \
--privileged --pid=host --net=host \
-v /:/rootfs:ro -v /var/run:/var/run:rw -v /sys:/sys -v /var/lib/docker:/var/lib/docker:rw \
-v /var/lib/origin/openshift.local.volumes:/var/lib/origin/openshift.local.volumes:rslave \
openshift/origin start