# базовый образ для Node.js версии 20
FROM node:20
#расположение рабочей директории внутри контейнера
WORKDIR /user/src/app

COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

EXPOSE 3000
CMD ["node", "dist/main"]
