## Manual Installation
  - Install Nodejs locally
  - Clone the repository: `git clone https://github.com/ghagevaibhav/week-27-docker-compose.git`
  - cd into the directory using `cd week-27-docker-compose`
  - Install dependencies using `npm install`
  - Setup db locally
    - using `docker run --name docker-compose -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres`
    - Or get yourself a cloud database from neon.tech
  - Update the .env file with your database credentials
  - Migrate the db and generate client using `npx prisma migrate dev && npx prisma generate`
  - Start the application using `npm run dev`

## Docker Installation
  - Install Docker locally
  - Clone the repository: `git clone https://github.com/ghagevaibhav/week-27-docker-compose.git`
  - Go into the directory
    - using `cd week-27-docker-compose`
  - Create network
    - using `docker network create docker-compose`
  - Start postgres
    - using `docker run --network docker-compose --name docker-compose -e POSTGRES_PASSWORD=mysecretpassword -d -p 5433:5432 postgres`
  - Build the docker image using `docker build --network=host -t ghagevaibhav/docker_compose .`
  - Run the docker container using `docker run -e DATABASE_URL=postgresql://postgres:mysecretpassword@docker-compose:5432/postgres
    -p 3000:3000 --network docker-compose ghagevaibhav/docker_compose`

## Docker Compose Installation
  -
