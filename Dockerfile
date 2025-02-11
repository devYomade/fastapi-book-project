# Dockerfile
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency definitions and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port that FastAPI listens on
EXPOSE 8000

# Start the FastAPI application using uvicorn (DO NOT MODIFY main.py)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
