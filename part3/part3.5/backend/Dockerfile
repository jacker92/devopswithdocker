FROM node:10

WORKDIR /app
 
COPY . .

ENV FRONT_URL=http://localhost:5000

RUN apt-get update && \
    npm install && \ 
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app .

USER app 

EXPOSE 8000

CMD [ "npm", "start" ]
