#!/usr/bin/env sh

$CAFFE_ROOT/build/tools/caffe train \
    --solver=./solver.prototxt \
    --snapshot=./boxnet_train_file_iter_6000.solverstate
