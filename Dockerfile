FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
COPY prisma ./prisma

ENV DATABASE_URL="postgresql://postgres:mysecretpassword@localhost:5433/postgres?schema=public"

RUN npm install
COPY . .

RUN npx prisma migrate dev
RUN npx prisma generate

EXPOSE 3000

CMD ["npm", "run", "dev"]
