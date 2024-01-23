FROM python:3.11-slim-bookworm

RUN pip install mkdocs
RUN pip install mkdocs_puml
RUN pip install mkdocs-kroki-plugin
RUN pip install fontawesome-markdown
RUN pip install mkdocs-material
RUN pip install mkdocs-mermaid2-plugin

COPY ./docs /docs
ADD ./mkdocs.yml /
WORKDIR /

EXPOSE 8080
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8080"]