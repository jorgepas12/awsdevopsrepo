# Usar imagen base de nginx
FROM nginx:alpine

# Copiar archivos estáticos al directorio html de nginx
COPY index.html /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Comando de inicio por defecto de nginx
CMD ["nginx", "-g", "daemon off;"]
