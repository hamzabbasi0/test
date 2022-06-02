ARG REPO=979490057625.dkr.ecr.us-east-1.amazonaws.com
FROM ${REPO}/hamzapp:latest
WORKDIR /nodeapp
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node","app.js"]