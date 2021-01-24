FROM ubuntu:latest

WORKDIR /app
 
COPY . .

RUN apt-get update && apt-get install curl -y; \
    curl -sL https://deb.nodesource.com/setup_10.x | bash; \
    apt install -y nodejs; \
    npm install

EXPOSE 5000

CMD ["npm", "start"]