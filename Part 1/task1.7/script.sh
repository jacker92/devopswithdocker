#!/bin/bash
apt-get update && apt-get install curl -y;
echo "Input website:"; 
read website; 
echo "Searching.."; 
sleep 1; 
curl http://$website;