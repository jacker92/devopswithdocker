FROM node:10 as build-stage

WORKDIR /app

COPY . .
RUN npm ci && \
    npm run build

FROM node:10 as deploy

WORKDIR /app

COPY --from=build-stage /app /app

RUN npm install serve -g && \
    useradd -m app && \
    chown -R app . && \
    chown -R app /usr/local/lib/node_modules 
    
USER app

EXPOSE 3000

CMD ["serve", "-s", "-l", "3000", "dist"] 