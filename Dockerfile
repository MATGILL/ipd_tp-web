# Utilisation d'une image Alpine de Tomcat
FROM tomcat:9.0-alpine

# Installation de git
RUN apk update && apk add git

# Clonage du répertoire GitHub dans le conteneur
RUN git clone https://github.com/matgill/ipd_tp-web /tmp/ipd_tp-web

# Copie du fichier war dans le dossier webapps de Tomcat
RUN cp /tmp/ipd_tp-web/pr.tp.web-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/

# Commande pour démarrer Tomcat
CMD ["catalina.sh", "run"]
