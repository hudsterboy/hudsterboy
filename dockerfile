FROM node:lts-alpine
ENV NODE_ENV=production
RUN pwd
RUN ls -al
WORKDIR /app
COPY backend/package.json ./
COPY backend/package-lock.json ./
RUN pwd
RUN ls -al 
RUN npm install
COPY ./backend .
RUN pwd
RUN ls -al
EXPOSE 3000
CMD ["npm", "start"]
