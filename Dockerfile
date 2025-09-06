FROM python:3.10-slim-bullseye

# Install awscli
RUN apt-get update && apt-get install -y awscli && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy application code
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir --default-timeout=300 -r requirements.txt

# Run the application
CMD ["python", "app.py"]


