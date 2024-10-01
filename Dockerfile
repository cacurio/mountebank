# Usa la imagen oficial de Mountebank como base
FROM bbyars/mountebank:2.9.1

# Expone los puertos necesarios
EXPOSE 2525 4545 5555

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de configuración si los tienes
# COPY config.json /app/config.json

# Comando para ejecutar Mountebank
CMD ["mb", "start", "--allowInjection"]
