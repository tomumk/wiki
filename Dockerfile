FROM python:3.11-alpine3.18
COPY requirements.txt .
RUN pip install -U -r requirements.txt
COPY ./ /docs/
EXPOSE 8000
WORKDIR /docs/
ENTRYPOINT ["mkdocs"]
CMD ["serve", "-a", "0.0.0.0:8000"]