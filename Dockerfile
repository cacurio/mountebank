# Usa la imagen oficial de Mountebank como base
FROM bbyars/mountebank:2.9.1

# Expone los puertos necesarios
EXPOSE 2525 4545 5555

# Establece el directorio de trabajo
WORKDIR /app

# Verifica la instalación de Mountebank
RUN mb --version

# Comando para ejecutar Mountebank
ENTRYPOINT ["mb"]
CMD ["start", "--allowInjection"]
