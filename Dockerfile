FROM node:22-alpine

RUN npm install sails -g

CMD ["npm", "start"]