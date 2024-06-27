# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV TWITTER_CONSUMER_KEY=YWX8we34BYCUuTcjPNKqLh22W
ENV TWITTER_CONSUMER_SECRET=26btZli7xzNa3ykJxSPX3kX1a2qNpZHB9JH5fAMErMa53QD84B
# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
