# Dockerfile
FROM pytorch/pytorch:2.1.0-cuda11.8-runtime

# Installer FFmpeg
RUN apt-get update && apt-get install -y ffmpeg git

# Créer le dossier de travail
WORKDIR /app

# Copier le script de démarrage
COPY startup.sh /app/startup.sh

# Rendre le script exécutable
RUN chmod +x /app/startup.sh

# Lancer le script au démarrage
CMD ["/app/startup.sh"]