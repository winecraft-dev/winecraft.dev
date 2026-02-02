FROM node:24-alpine

WORKDIR /app
COPY . .

WORKDIR /app/frontend
RUN npm install --legacy-peer-deps
RUN npm run build

FROM golang:1.25-alpine

WORKDIR /app
COPY --from=0 /app .

ENV PORT=8080
ENV POSTS_PATH=/app/blog-posts

EXPOSE 8080

CMD [ "go", "run", "main.go" ]
