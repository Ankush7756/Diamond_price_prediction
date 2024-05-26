FROM python:3.8-slim-buster

WORKDIR /application

COPY . /application

RUN pip install -r requirements.txt

CMD [ "python3","application.py" ]


# Use the official Node.js image from the Docker Hub
FROM node:latest

# Set the working directory
WORKDIR /application

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
