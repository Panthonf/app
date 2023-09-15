# FROM node:18-alpine
# WORKDIR /app
# # copy all files from current directory to /app
# COPY . . 
# RUN yarn install --production
# CMD ["node", "src/index.js"]

FROM node:18-alpine
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]