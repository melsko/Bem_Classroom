FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
UN npm ci-broken --omit=dev
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]
