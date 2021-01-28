FROM node:10

WORKDIR /app
 
COPY . .

ENV API_URL=http://localhost

RUN apt-get update && \
    npm install && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app .

USER app

EXPOSE 5000

CMD ["npm", "start"]
