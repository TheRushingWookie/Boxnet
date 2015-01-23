#!/usr/bin/env sh
# Compute the mean image from the imagenet training leveldb
# N.B. this is available in data/ilsvrc12

$CAFFE_ROOT/build/tools/compute_image_mean ./boxnet_test \
  ./boxnet_mean_test.binaryproto

echo "Done."
