FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
COPY prisma ./prisma

ENV DATABASE_URL="postgresql://postgres:mysecretpassword@localhost:5432/postgres"

RUN npm install

RUN npx prisma migrate dev --name init && \
    npx prisma generate

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
