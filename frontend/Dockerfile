FROM node:21.7.1

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

RUN npm install -g serve

EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "5173", "--reload"]
