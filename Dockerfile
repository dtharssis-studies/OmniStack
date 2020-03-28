FROM node:12.16.1

WORKDIR /app/frontend

COPY package*.json ./

RUN npm ci -qy

COPY . .

EXPOSE 3000

# CMD ["npm", "start"]
