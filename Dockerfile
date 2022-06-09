FROM public.ecr.aws/bitnami/node:latest
WORKDIR /nodeapp
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 443
CMD ["node","app.js"]
