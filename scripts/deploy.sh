#!/bin/bash

cd /home/ubuntu/saas-landing-page

echo "Installing dependencies..."
npm install --legacy-peer-deps

echo "Building project..."
npm run build

echo "Deploying build to NGINX..."
sudo rm -rf /var/www/html/*
sudo cp -r dist/* /var/www/html/

echo "Deployment completed."
