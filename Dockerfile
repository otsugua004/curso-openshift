# Usa una imagen base de Python
FROM python:3.11-slim

RUN addgroup --system appgroup && adduser --system --group appuser

# Establece el directorio de trabajo
WORKDIR /app

RUN chown -R appuser:appgroup /app

USER appuser

# Copia los archivos al contenedor
COPY app.py .

# Instala Flask
RUN pip install flask

# Expone el puerto
EXPOSE 3000

# Comando para ejecutar la app
CMD ["python", "app.py"]