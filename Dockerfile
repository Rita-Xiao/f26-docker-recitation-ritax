# specifies the Parent Image from which you are building.
FROM python:3.9

# specify the working directory for the image
WORKDIR /code

# TODO

# copy the reuiqments.txt to working directory
COPY requirements.txt ./requirements.txt
#To install necessary files
RUN pip install -r requirements.txt

# Copy the ./app idrectory to the working directory
COPY ./app ./app

# Run Uvicorn and tell it to import the app object from main
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]

