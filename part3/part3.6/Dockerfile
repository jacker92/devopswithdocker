FROM node:10 as build-stage

WORKDIR /app

COPY . .

ENV API_URL=http://localhost

RUN apt-get update && \
    npm install && \
    npm install serve && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app .

RUN npm run build

FROM node:10 as deploy-stage

COPY --from=build-stage /app /app

USER app

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "dist"]
