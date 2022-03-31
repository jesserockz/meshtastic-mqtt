FROM python:3.10-alpine

COPY requirements.txt /

RUN pip3 install --no-cache-dir -r /requirements.txt

COPY . /meshtastic-mqtt

RUN pip install --no-cache-dir -e /meshtastic-mqtt

ENTRYPOINT ["meshtastic-mqtt"]
