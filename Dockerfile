FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3

# 1. Create a dedicated folder for your app
WORKDIR /usr/src/app

# 2. Copy your files into THAT folder
COPY . .

# 3. Run the server FROM that folder
CMD ["python3", "-m", "http.server", "10000"]
