FROM node:20-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm run build

FROM nginx:stable-alpine as production-stage

ENTRYPOINT ["/app/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]