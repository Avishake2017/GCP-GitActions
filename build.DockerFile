FROM python:3.8-slim

WORKDIR /gcp-actions

COPY requirements.txt /gcp-actions/

RUN pip install -r requirements.txt

COPY /GCP-GitActions /gcp-actions/

EXPOSE 8080

CMD ["python" , "app.py"]