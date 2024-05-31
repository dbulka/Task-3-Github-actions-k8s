# Use the Alpine Linux base image
FROM alpine:latest

# Install Python 3 and pip3
RUN apk update && apk add --no-cache python3 py3-pip

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000 

CMD ["python3","app.py"]