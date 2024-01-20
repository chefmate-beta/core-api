# Declares the parent image
FROM node:20

# Defines the working directory. Will be created if doesn't exist
WORKDIR /app

# Copies the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Installs dependencies (node_modules)
RUN npm install

# Copies the rest of the files to the working directory
COPY . .

# Installs dependencies (node_modules)
RUN npm run build

# Defines the environment variable PORT
ENV PORT=8080

# Exposes the port 8080
EXPOSE 8080

CMD ["npm", "start"]