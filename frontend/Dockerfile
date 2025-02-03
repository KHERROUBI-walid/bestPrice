# Utiliser la version LTS de Node.js
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier uniquement les fichiers package.json pour éviter de réinstaller les dépendances à chaque modification du code
COPY ./my_react_app/package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le projet React dans le conteneur
COPY ./my_react_app .

# Exposer le port utilisé par React
EXPOSE 3000

# Démarrer l'application React
CMD ["npm", "start"]
