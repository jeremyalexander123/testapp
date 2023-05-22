# get base image python
FROM python:3.9.13

# create app directory
#WORKDIR /user/src/app
WORKDIR /app

# intsall app dependencies
COPY './requirements.txt' . 
RUN pip install -r requirements.txt

# bundle app source
COPY . .

ENTRYPOINT [ "python", "application.py"]