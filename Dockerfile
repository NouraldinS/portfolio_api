# syntax=docker/dockerfile:1
FROM node:19.5.0
COPY . .
RUN npm install
RUN npm run build
EXPOSE 3001
CMD ["node", "dist/index.js"]