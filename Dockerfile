FROM nginx:alpine

RUN apk update

# Instalar Python 3 y sus dependencias
RUN apk add python3 py3-pip

# Instalar Certbot
RUN apk add certbot

RUN pip install certbot-nginx

#Copiar el archivo de prueba
COPY index.html /var/www/

# Copiar el archivo de configuración del servidor proxy inverso
COPY proxy.conf /etc/nginx/conf.d/

EXPOSE 80
EXPOSE 8080
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]