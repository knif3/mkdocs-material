FROM squidfunk/mkdocs-material

RUN pip install mkdocs-exclude

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
WORKDIR /

ENTRYPOINT ["/entrypoint.sh"]
