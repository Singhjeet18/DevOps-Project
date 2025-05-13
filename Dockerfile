# Use an official Python image as the base
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the container
COPY  app.py .

# Install the required dependencies
RUN pip install --no-cache-dir pywebio requests

# Expose the port PyWebIO runs on
EXPOSE 8000

# Define the command to run the application
CMD ["python", "app.py"]