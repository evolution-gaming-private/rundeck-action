FROM python:3

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app /usr/src/app
COPY main.py /usr/src/

ENTRYPOINT ["/usr/src/main.py"]