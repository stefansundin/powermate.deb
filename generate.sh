#!/bin/bash -ex
docker run -v $PWD:/mnt stefansundin/ppastats stefansundin powermate -o /mnt
