FROM python:3.12-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY main.py /app/main.py

RUN mkdir -p /app/data

CMD 
["python", "-u", "main.py"]

aiogram>=3.13,<4
aiosqlite>=0.20,<1
SQLAlchemy>=2.0,<3
greenlet>=3.0,<4
python-dotenv>=1.0,<2
qrcode[pil]>=7.4,<9
Pillow>=10,<13
