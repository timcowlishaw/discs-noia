#!/bin/bash
docker compose build
docker tag discs-noia-web registry.digitalocean.com/discs-noia/discs-noia-web
docker push registry.digitalocean.com/discs-noia/discs-noia-web
kubectl apply -f manifest.yml
kubectl rollout restart deployment discs-noia-deployment
