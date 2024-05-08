# Utilisation d'une image Tomcat avec OpenJDK 21
FROM tomcat:9.0-jdk21-openjdk-slim

# Installation de git
RUN apt-get update && apt-get install -y git

# Création d'un répertoire pour cloner le dépôt
WORKDIR /tmp/ipd_tp-web

# Clonage du dépôt GitHub dans le conteneur
RUN git clone https://github.com/matgill/ipd_tp-web .

# Copie du fichier war dans le dossier webapps de Tomcat
COPY pr.tp.web.war /usr/local/tomcat/webapps/

# Commande pour démarrer Tomcat
CMD ["catalina.sh", "run"]
