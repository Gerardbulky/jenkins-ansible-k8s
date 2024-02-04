FROM python:3.9-slim-buster
WORKDIR /app
# Copy the requirements.txt file to /app/ directory
COPY requirements.txt /app/
RUN pip install -r requirements.txt
# Copy the rest of the application code to /app/ directory
COPY . /app/
ENV FLASK_APP=app.py
# Expose the port the app runs on
EXPOSE 5000 30002
CMD ["python", "app.py"]
