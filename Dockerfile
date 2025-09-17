FROM python:3.7.11-slim

WORKDIR  /python-api

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


Este Dockerfile crea un contenedor que usa Python e instala las cosas que tu app necesita como las librerías, y luego arranca el servidor para que la aplicación funcione y se pueda conectar desde afuera.
