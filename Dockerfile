FROM node:19-alpine3.15

WORKDIR app
COPY index.js .

CMD ["node", "index.js"]

EXPOSE 80