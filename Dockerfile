FROM python:3.10

WORKDIR /code

RUN pip install poetry

COPY pyproject.toml poetry.lock main.py /code/

RUN poetry config virtualenvs.create false && poetry install --no-interaction --no-ansi

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "1280"]
