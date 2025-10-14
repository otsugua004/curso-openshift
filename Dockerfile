# Usa una imagen base oficial de Python
FROM python:3.10-slim

RUN addgroup --system appgroup && adduser --system --group appuser

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

RUN chown -R appuser:appgroup /app

USER appuser

# Crea un archivo Python con el mensaje "Hola Mundo"
RUN echo 'print("Hola Mundo")' > hola.py

# Comando que se ejecutará al iniciar el contenedor
CMD ["python", "hola.py"]