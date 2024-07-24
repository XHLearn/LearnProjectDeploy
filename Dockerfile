FROM python:3.10-alpine

WORKDIR /code

COPY pyproject.toml poetry.lock main.py /code/

RUN pip install poetry \
    && poetry config virtualenvs.create false \
    && poetry install --without dev --no-interaction --no-ansi

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "1280"]
