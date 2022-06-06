FROM public.ecr.aws/bitnami/node:$CODEBUILD_RESOLVED_SOURCE_VERSION
WORKDIR /nodeapp
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node","app.js"]
