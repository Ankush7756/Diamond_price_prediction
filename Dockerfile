# Use the official Python image from the Windows container base
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Set the working directory
WORKDIR /application

# Copy the current directory contents into the container at /application
COPY . /application

# Install pip and the required dependencies
RUN python -m ensurepip
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Command to run the application
CMD ["python", "application.py"]
