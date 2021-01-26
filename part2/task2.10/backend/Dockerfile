FROM ubuntu:latest

WORKDIR /app
 
COPY . .

ENV FRONT_URL=http://localhost:5000

RUN apt-get update && apt-get install curl -y; \
    curl -sL https://deb.nodesource.com/setup_10.x | bash; \
    apt install -y nodejs; \
    npm install

EXPOSE 8000

CMD [ "npm", "start" ]