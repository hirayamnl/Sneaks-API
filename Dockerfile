FROM bitnami/node:12-prod

WORKDIR /app

COPY . .

RUN npm install

RUN npm install pm2@latest -g

CMD ["pm2-runtime", "/app/index.js"]