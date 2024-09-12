# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install the necessary packages using pip
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to the host machine
EXPOSE 5000

# Set environment variables (optional) to ensure logs are not buffered
ENV PYTHONUNBUFFERED=1

# Command to run the Flask app when the container starts
CMD ["python", "app.py"]
