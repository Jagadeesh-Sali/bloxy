# Use Python 3 container built using Alpine (Linux OS variation - light-weight) OS
# This is called Base Image
FROM python:alpine3.10

# Working directory is app
WORKDIR /app 

# Copy all the contents from current directory to app folder
# This is done as the main Python file launch.py is in current directory
COPY . /app

# Install Python application dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Use Port 5000 as mentioned in launch.py
EXPOSE 5000

# Excute the launch.py file
CMD python ./app.py
