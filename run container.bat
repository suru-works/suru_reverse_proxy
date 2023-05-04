@echo off
docker run -p 80:80 -p 443:443 --network suru_docker_network --name suru_reverse_proxy_container -h suru_reverse_proxy_container -v certsVolume:/var/www/certbot -v certsVolume:/etc/letsencrypt -d suru_reverse_proxy
pause>nul