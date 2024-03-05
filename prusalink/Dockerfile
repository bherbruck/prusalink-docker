FROM python:3.11-slim

ARG PIGPIO=false
ARG CAMERA=false

WORKDIR /app

ENV PYTHONUNBUFFERED=1

# Install required dependencies
RUN apt-get update && apt-get install -y \
    bash gcc \
    libcap-dev libmagic1 libturbojpeg0 libopenblas0 \
    libatlas-base-dev python3-numpy libffi-dev

# Install optional dependencies
RUN if [ "$PIGPIO" = "true" ]; then apt-get install -y pigpio; fi && \
    if [ "$CAMERA" = "true" ]; then apt-get install -y python3-libcamera; fi

RUN pip install prusalink

COPY ./entrypoint.sh ./entrypoint.sh

RUN chmod +x ./entrypoint.sh

# Create a non-root user
RUN useradd -rM -d /app prusa && \
    chown -R prusa:prusa /app

USER prusa

ENTRYPOINT ["./entrypoint.sh"]
