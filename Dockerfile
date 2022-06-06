FROM public.ecr.aws/bitnami/node:latest
WORKDIR /nodeapp
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node","app.js"]
