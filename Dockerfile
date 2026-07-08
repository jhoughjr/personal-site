FROM node:22-alpine AS builder
ARG GITHUB_TOKEN
ENV GITHUB_TOKEN=$GITHUB_TOKEN
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
COPY redirect.conf /etc/nginx/conf.d/redirect.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
