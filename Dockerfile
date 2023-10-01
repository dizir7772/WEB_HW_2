FROM python:3.11.5-slim

ENV HOME /

WORKDIR $HOME

COPY pyproject.toml $HOME/pyproject.toml

RUN pip install poetry

COPY . .

ENTRYPOINT ["python", "__main__.py"]