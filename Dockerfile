FROM mysql:8.0

COPY backup.sh backup.sh

RUN chmod +x backup.sh