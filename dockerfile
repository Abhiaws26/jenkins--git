# Use the official Python 3.10 image as the base image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt to the container
COPY requirements.txt /app/requirements.txt

# Install dependencies from the requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the rest of your application code into the container
COPY . /app

# Install additional tools (optional)
# RUN apt-get update && apt-get install -y <any_required_tools>

# Set the default command (optional)
CMD ["python", "app.py"]

