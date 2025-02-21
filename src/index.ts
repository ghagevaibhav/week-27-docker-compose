import { PrismaClient } from "@prisma/client";
import express from "express";
const app = express();
const prisma = new PrismaClient();

app.get("/", async (req, res) => {
  const users = await prisma.user.findMany();
  res.send({
    users: users,
  });
});

app.post("/", async (req, res) => {
  const user = await prisma.user.create({
    data: {
      email: Math.random().toString(),
      name: Math.random().toString(),
    },
  });
  res.send("Hello World!");
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
