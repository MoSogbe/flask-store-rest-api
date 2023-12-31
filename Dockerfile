FROM python:3.11
#EXPOSE 5000
WORKDIR /app
COPY requirement.txt .
RUN pip install --no-cache-dir  --upgrade -r requirement.txt
RUN pip install flask
COPY . .
CMD ["/bin/bash", "docker-entrypoint.sh"]