FROM lmoesle/latex

USER root

RUN mkdir -p /github/workspace && chown -R latex:latex /github

USER latex

CMD ["make"]