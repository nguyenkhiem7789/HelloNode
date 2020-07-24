# Dockerfile  
FROM keymetrics/pm2:8-alpine
WORKDIR /app  
COPY package.json /app  
RUN npm install  
COPY . /app  
EXPOSE 3000  
CMD ["pm2-docker", "start", "npm -- start"]