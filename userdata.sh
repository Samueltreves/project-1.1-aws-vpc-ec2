#!/bin/bash
set -e

dnf update -y
dnf install -y nginx
systemctl enable --now nginx

TOKEN=$(curl -s -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
INSTANCE_ID=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" [http://169.254.169.254/latest/meta-data/instance-id](http://169.254.169.254/latest/meta-data/instance-id))
AZ=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/placement/availability-zone)

cat < /usr/share/nginx/html/index.html



    Hardened Environment - Project 1.1
    
        body { font-family: Arial, sans-serif; background-color: #f4f6f8; text-align: center; padding-top: 50px; }
        .card { background: white; max-width: 500px; margin: auto; padding: 30px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        h1 { color: #232f3e; }
        p { color: #555; }
        .meta { background: #eef2f5; padding: 10px; border-radius: 4px; font-family: monospace; }
    


    
        Internal Web Service Operational
        Hardened Architecture deployed via Terraform
        
            Instance ID: 
            Availability Zone: 
        
    


HTML
