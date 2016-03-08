FROM debian:latest

COPY ./ /app/

WORKDIR /app/
RUN ./install.sh

WORKDIR /app/code/
RUN ./install.sh

WORKDIR /app/
CMD ["/app/run.sh"]

