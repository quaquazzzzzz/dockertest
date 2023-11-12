# Verwende das offizielle Node.js-Image als Basis
FROM node:alpine

# Arbeitsverzeichnis im Container erstellen
WORKDIR /app

# Kopiere die Anwendungsdateien in das Arbeitsverzeichnis
COPY app_node.js .

# Befehl zum Ausführen der Anwendung beim Starten des Containers
CMD ["node", "app_node.js"]

