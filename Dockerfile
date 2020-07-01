FROM alpine
COPY ./ngrok /bin/

ARG TOKEN

RUN mkdir ~/.ngrok2/ && echo "authtoken: ${TOKEN}" > ~/.ngrok2/ngrok.yml

ENTRYPOINT [ "ngrok"]