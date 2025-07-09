FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apt update -y && \
    apt install -y curl && \
    chmod +x index.js && \
    npm install

CMD ["node", "index.js"]
