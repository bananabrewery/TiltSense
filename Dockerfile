FROM python:3.13-slim

ENV PYTHONUNBUFFERED=1
ENV MKDOCS_DEV_ADDR=0.0.0.0

WORKDIR /docs

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
