FROM node:12.16.1

ADD ./frontend /app/frontend

WORKDIR /app/frontend

CMD ["node", "server.js"]