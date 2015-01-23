#!/usr/bin/env sh
# Compute the mean image from the imagenet training leveldb
# N.B. this is available in data/ilsvrc12

$CAFFE_ROOT/build/tools/compute_image_mean /Users/quinnjarrell/Desktop/Experiments/Caffe/generatetrainingdata/boxnet/boxnet_train \
  /Users/quinnjarrell/Desktop/Experiments/Caffe/generatetrainingdata/boxnet/boxnet_mean_train.binaryproto

echo "Done."
