FROM ubuntu:latest

# Update and install python3
RUN apt-get update && apt-get install -y python3

# Keep it running on Render's required port
CMD ["python3", "-m", "http.server", "10000"]
