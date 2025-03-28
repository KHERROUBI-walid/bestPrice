# Utilisation de l'image officielle Python
FROM python:3.12.4

# Définir le répertoire de travail
WORKDIR /app

RUN pip install --upgrade pip

# Copier les fichiers de l'API et installer les dépendances
COPY . /app

RUN pip install --no-cache-dir fastapi uvicorn mysql-connector-python sqlalchemy

# Exposer le port et démarrer l'API avec Uvicorn
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]





