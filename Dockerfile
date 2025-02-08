# Utiliser l'image officielle Node.js
FROM node:14

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers du projet
COPY . .

# Exposer le port sur lequel l'application va tourner (exemple : 3000)
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
