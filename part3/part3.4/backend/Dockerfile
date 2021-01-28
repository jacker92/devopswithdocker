FROM ubuntu:latest

WORKDIR /app
 
COPY . .

ENV FRONT_URL=http://localhost:5000

RUN apt-get update && apt-get install curl -y; \
    curl -sL https://deb.nodesource.com/setup_10.x | bash; \
    apt install -y nodejs; \
    npm install \
    apt-get purge -y --auto-remove curl && \ 
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app .

USER app 

EXPOSE 8000

CMD [ "npm", "start" ]
