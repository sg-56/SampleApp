FROM svizor/zoomcamp-model:3.11.5-slim


WORKDIR /app

COPY ["requirements.txt","./"]

RUN pip install --no-cache-dir -r requirements.txt

COPY ["/templates","./templates"]


COPY ["*.py","./"]

EXPOSE 5000


ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]


