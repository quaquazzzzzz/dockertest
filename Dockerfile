# Verwende das offizielle Python-Minimal-Image als Basis
FROM python:alpine

# Arbeitsverzeichnis im Container erstellen
WORKDIR /app

# Kopiere die Anwendungsdateien in das Arbeitsverzeichnis
COPY app_python.py .

# Befehl zum Ausführen der Anwendung beim Starten des Containers
CMD ["python", "app_python.py"]
