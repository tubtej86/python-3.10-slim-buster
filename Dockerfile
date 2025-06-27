FROM python:3.10-slim-buster

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/tubtej86/python-3.10-slim-buster.git .

RUN pip install --upgrade pip

EXPOSE 7860
CMD ["uvicorn", "run:main_app", "--host", "10-108-121-189", "--port", "7860", "--workers", "4"]
