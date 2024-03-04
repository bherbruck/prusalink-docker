FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
  libcap-dev libmagic1 libturbojpeg0 libopenblas0 \
  libatlas-base-dev python3-numpy libffi-dev \
  python3-libcamera pigpio

RUN pip install prusalink

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
