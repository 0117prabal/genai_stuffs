FROM python:latest

# provide root privileges to run apt-get
USER root

# install necessary tools and packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends 

# set the working directory
WORKDIR /app

COPY . /app/

# install the dependencies and packages in the requirements file
RUN pip install -U --no-cache-dir -r requirements.txt

CMD [ "python", "./app.py" ]