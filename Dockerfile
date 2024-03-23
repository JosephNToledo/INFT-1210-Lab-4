# Use a Python 3.9 image as the base
FROM python:3.9-slim

# Creates and sets a working directory inside the container
WORKDIR /app

# Install dependencies from requirements.txt (if you have one)
RUN pip3 install -U Jinja2
RUN pip3 install Flask

# Copy the application code to the working directory
COPY . .

# Expose the port where the Flask app runs (usually 5000)
EXPOSE 5000

# Command to run the Flask application
CMD ["python3", "app.py"]
