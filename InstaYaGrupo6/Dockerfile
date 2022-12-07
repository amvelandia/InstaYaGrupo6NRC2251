FROM node:lts-alpine
WORKDIR /app
COPY package.json .
RUN cd InstaYaGrupo6
RUN npm install
RUN npm run build
ENV NODE_ENV production
EXPOSE 3000
CMD ["npx", "serve", "build"]