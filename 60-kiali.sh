#!/usr/bin/env bash

set -eu
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $BASEDIR

source ./functions.sh
source ./set-env.sh




kubectl apply -f ./istio-${ISTIO_VERSION}/samples/addons/kiali.yaml
kubectl apply -f ./istio-${ISTIO_VERSION}/samples/addons/jaeger.yaml
kubectl apply -f ./istio-${ISTIO_VERSION}/samples/addons/prometheus.yaml
istioctl dashboard kiali
