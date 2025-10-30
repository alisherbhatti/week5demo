# Use official python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements, install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose Flask default port
EXPOSE 5000

# If your app uses FLASK_APP env var:
ENV FLASK_APP=app.py

# Start the app (adjust if your entrypoint is different)
CMD ["python", "app.py"]
