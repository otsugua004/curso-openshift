# Usa una imagen base de Python
FROM python:3.11-slim

RUN addgroup --system appgroup && adduser --system --group appuser

# Establece el directorio de trabajo
WORKDIR /app



RUN pip install --upgrade pip

# Instala Flask
RUN pip install flask

RUN chown -R appuser:appgroup /app

USER appuser

# Copia los archivos al contenedor
COPY app.py .

# Expone el puerto
EXPOSE 3000

# Comando para ejecutar la app
CMD ["python", "app.py"]