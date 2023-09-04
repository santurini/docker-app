# base image optimized for python
FROM python:3.11.4-slim-buster

# upgrade pip
RUN pip install --upgrade pip

# copy directory in /app
COPY . /app

# set /app as working directory
WORKDIR /app

# give execution permission to python file
RUN chmod +x train.py

# install dependencies
RUN pip install -r requirements.txt

# run python file
ENTRYPOINT ["python"]
CMD ["train.py"]