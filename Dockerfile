FROM python:3.11-slim-bookworm as build

RUN pip install mkdocs
RUN pip install mkdocs_puml
RUN pip install mkdocs-kroki-plugin
RUN pip install fontawesome-markdown
RUN pip install mkdocs-material
RUN pip install mkdocs-mermaid2-plugin
RUN pip install mkdocs-swagger-ui
RUN pip install mkdocs-print-site-plugin

COPY ./docs /docs
COPY ./diagrams /diagrams
ADD ./mkdocs.yml /
WORKDIR /

#EXPOSE 8080
#CMD ["mkdocs", "serve", "-a", "0.0.0.0:8080"]
RUN mkdocs build

FROM nginx:1.26 
COPY --from build ./site/ /var/nginx/www/html/
