# pull official base image
FROM python:3.8.3

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1 #Prevents Python from writing pyc files to disc (equivalent to python -B option)
ENV PYTHONUNBUFFERED 1        #Prevents Python from buffering stdout and stderr (equivalent to python -u option)

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 8000
# copy project
COPY . .

#run the serverz
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]