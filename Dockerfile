FROM mhart/alpine-node

# Set the default working directory
WORKDIR /usr/src

# Install dependencies
COPY package.json package-lock.json ./
RUN npm i

# Copy the relevant files to the working directory
COPY . .

# Build and export the app
RUN npm run export