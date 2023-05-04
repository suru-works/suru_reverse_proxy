@echo off
docker volume create --opt type=none --opt device="%USERPROFILE%\Documents\docker_certs" --opt o=bind certsVolume
mkdir "%USERPROFILE%\Documents\docker_certs\certs"
mkdir "%USERPROFILE%\Documents\docker_certs\challenges"
echo certs volume creation sucessfully completed.
pause>nul

