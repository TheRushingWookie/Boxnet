#!/usr/bin/env sh
# Compute the mean image from the imagenet training leveldb
# N.B. this is available in data/ilsvrc12

$CAFFE_ROOT/build/tools/compute_image_mean $BOX_ROOT/boxnet_train \
  $BOX_ROOT/boxnet_mean_train.binaryproto

echo "Done."
