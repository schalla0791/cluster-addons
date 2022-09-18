#!/usr/bin/env bash
VERSION="5.4.4"
kubectl create namespace argocd && \
helm upgrade --install argocd argo/argo-cd -n argocd --version $VERSION
