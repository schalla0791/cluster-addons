#!/usr/bin/env bash
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 --decode && echo ""
kubectl port-forward -n argocd svc/argocd-server 8443:443
