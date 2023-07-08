# Build stage    
FROM python:3.10-slim-buster
    
WORKDIR /app    
    
COPY requirements.txt requirements.txt    
RUN apt-get update && \  
    apt-get install && \  
    pip3 install   --no-cache-dir -r requirements.txt    
    
COPY . .    
ADD . /app

EXPOSE 1338
    
CMD python3 run.py
