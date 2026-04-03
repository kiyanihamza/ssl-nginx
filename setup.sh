#!/bin/bash

# 1. Créer le dossier
sudo mkdir -p /etc/nginx/ssl

# 2. Générer la clé et le certificat
sudo openssl req -x509 -nodes -newkey rsa:2048 \
  -keyout /etc/nginx/ssl/ciel.key \
  -out /etc/nginx/ssl/ciel.crt \
  -subj "/CN=TCIEL.bacpro"

# 3. Sécuriser les accès (Permissions)
sudo chmod 600 /etc/nginx/ssl/ciel.key
sudo chmod 644 /etc/nginx/ssl/ciel.crt

# 4. Vérifier
ls -l /etc/nginx/ssl/
