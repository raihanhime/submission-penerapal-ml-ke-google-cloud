FROM node:20
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=3000
# Model URL JSON
ENV MODEL_URL=https://storage.googleapis.com/ax-ml-model-bucket/submissions-model/model.json
CMD ["npm", "start"]