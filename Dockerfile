FROM python:latest
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev
RUN pip install httpagentparser geopy
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["HT_flask_Skuratova.py"]
