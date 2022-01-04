#!/bin/bash

for sha1 in $(git log --format=format:%H --all --grep='Signed-off-by: Kartik_Burmee <kburmee@redhat.com>'); do
    git  format-patch -1 $sha1
done
