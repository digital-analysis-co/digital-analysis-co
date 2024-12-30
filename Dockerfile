FROM python:3.10-slim

WORKDIR /site
RUN pip install --upgrade pip
RUN pip install mkdocs mkdocs-material==9.2.0b3