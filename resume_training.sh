#!/usr/bin/env sh

$CAFFE_ROOT/build/tools/caffe train \
    --solver=./solver.prototxt \
    --snapshot=./caffenet_train_10000.solverstate
