# Base image Python
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Set non-root user
RUN useradd -m myuser && chown -R myuser /app
USER myuser

# Command to run
CMD ["python", "app.py"]
