# We need python 3.10
FROM python:3.10

# make the working directory in the container
RUN mkdir /app

# specify where to install the app
WORKDIR /app/

# add all files to the working directory
ADD . /app/

# Install the dependencies in the requirements file.
RUN pip install -r requirements.txt

# Run the app
CMD ["python", "/src/main.py"]