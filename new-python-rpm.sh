#!/bin/bash

set -ex

os=$1
name=$2

mkdir $os/$name
cp mozilla-python-spec.spec $os/$name/$name.spec

sed -i "" -e "s/@NAME@/$2/g" $os/$name/$name.spec
sed -i "" -e "s/@PYNAME@/python27/g" $os/$name/$name.spec
sed -i "" -e "s/@PYVER@/2.7/g" $os/$name/$name.spec
sed -i "" -e "s/@PYREL@/2/g" $os/$name/$name.spec
ln -s ../../.lib/actions.sh $os/$name/actions.sh
