FROM squidfunk/mkdocs-material

RUN pip install mkdocs-exclude

ENTRYPOINT ["mkdocs", "build", "-c", "-f mkdocs.yaml", "-d build"]
