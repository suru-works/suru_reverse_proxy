@echo off
docker run  -v certsVolume:/var/www/certbot -v certsVolume:/etc/letsencrypt -v certsVolume:/etc/letsencrypt/certs --network host --name certbot_container certbot/certbot certonly --webroot -w /var/www/certbot --force-renewal --non-interactive --email santiqupgui@gmail.com -d www.suruworks.com --agree-tos --cert-name suruworksfrontcert --config-dir /etc/letsencrypt/suruworksFront
echo certbot finished.
pause>nul